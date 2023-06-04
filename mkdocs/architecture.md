# 🏗️ Architectural Design Decisions

## A.1 Always use modern C++

libhal uses the modern C++. Meaning that libhal is will follow the most modern
and available compilers available. When a sufficient number of features have
become available in both GCC & Clang and are determined to be useful to libhal
libhal will increment its major number to indicate that it has upgraded compiler
versions.

This decision exists to escape the issues of vendor and toolchain lock in thats
prevalant in the C++ and embedded industry. With sufficient testing, upgrading
compilers shouldn't result in bugs in applications.

## A.2 Interface Design Choices

Interfaces MUST follow this layout:

- Use `#pragma once` at the start of the file: Simpler than an include guard
- All `virtual` functions must be private & each `virtual` functions is
  accompanied by a public API that is used to call the virtual API
- The return type of each API MUST be a `result<T>` where `T` is a structure.

Pragma once is needed to ensure files are included once. Its also less error
prone then hand writing include guards.

The reasons for a private virtual with public API can be found in this
[article]().

Returning a structure for each API means that, in the future, if the return type
needs to be extended, it can be done without breaking down stream libraries. For
example:

```C++
class adc {
  struct read_t { // V1
    float percentage;
  };
  struct read_t { // V2
    float percentage;
    // Optional field that is default initialized to std::nullopt indicating
    // that it defaults to not exist
    std::optional<uint8_t> bit_resolution = std::nullopt;
  };
};
```

Given that the field `bit_resolution` is an optional, code looking for it can
determine if it is available or not, and code that never used it can ignore it.

### A.2.1 No utility methods in interfaces (UFCS)

Utility functions shall not exist in interface definitions. For example,
`hal::i2c` could have a `hal::i2c::write()` and `hal::i2c::read()` function
implemented in its interface.

This has the effect of reducing the number of headers in the interface files and
dependencies. This, in turn, results in an interface that is minimal, clean, and
simple.

The major purpose of this is to keep compile times down as much possible for
each interface. This also ensures that the "pay-for-what-you-use" model is
followed. No need to pay for a utility you never planned to use.

The final reason is in preparation for UFCS (Unified Function Call Syntax). UFCS
is a proposal for C++23 and C++26. It did not get into C++23 but is slated for
review in 26. For more details see this page [What is unified function call
syntax anyway?](https://brevzin.github.io/c++/2019/04/13/ufcs-history/).

## A.3 Using tweak files over macros

Tweak files were used as an alternative to MACROS. MACROs can be quite
problematic in many situations and are advised against in the core C++
guidelines. The benefits of tweak files can be found
[here](https://vector-of-bool.github.io/2020/10/04/lib-configuration.html).

## A.4 ❌ Header Only Implementations ➡️ (See amendment A.21)

libhal libraries and drivers are, in general, header-only. libhal uses header
only implementations in order to enable the broadest set of package managers,
build system and projects to use it.

The strongest reason for a header-only approach is due to the fact that libhal
libraries never intend to be distributed in prebuilt binaries. Conan is designed
to ship with prebuilt binaries or build against the host machine. These settings
can be altered, but you still end up with a single global prebuilt binary for a
driver does not make sense when that driver could be used in a variety of
environments such as the host device for host side tests, a specific target
device, and a target device that is in the family of that specific target
device.

For example, lets consider liblpc40xx. If you are building to target the lpc4078
chip then that prebuilt ought to be built with usage of FPU registers enabled.
But if you use that same prebuilt with the lpc4074, you'll find that the program
crashes because the 74 variant does not have an FPU. You can attempt make a
prebuilt binary for ever possible build variation that an embedded engineer may
want, but you'll always come up short. The better approach is to simply build
the library each time, thus ensuring that the build flags are considered each
time.

If compile-times are a concern, there are reasonably easy methods for managing
this. See [Handling Long Compile Times](#).

## A.5 Encapsulated Memory Mapped Classes

Target drivers that use Memory-Mapped-IO usually come with a vendor generated
header file that describes each peripheral as a structure type, along with bit
mask MACROs, and MACROs that result in pointers to each peripheral in memory.
The main problem using these headers files causes is naming conflicts. Many of
these vendor generated headers work with both C and C++. Meaning that namespaces
are not utilized. And many do not expect that they will be used in an
environment where another vendor generated header file will exists. So no care
is taken to ensure that the names of the types are unique. This WILL cause
linker errors as the linker sees both `GPIO_TypeDef` from an STM library and
`GPIO_TypeDef` from an LPC library that aren't the same.

Because of this we have style [S.x Encapsulated Memory Mapped classes]()
guideline.

## A.6 Using hal::function_ref over std::function

`std::function` has all of the flexibility and functionality needed, but it has
the potential to allocate and requires potentially expensive copy operations
when passed by value.

`hal::function_ref` is a non-owning version of the `std::function`, with a size
of just two pointers. `hal::function_ref` fits most use cases in that class
functions that take them only need them for the duration of the function and do
not need to own them for later.

!!! info `hal::function_ref` is an alias for `tl:function_ref` which comes from
    the project
    [TartanLlama/function_ref](https://github.com/TartanLlama/function_ref).

## A.7 Using `virtual` (runtime) polymorphism

Polymorphism is critical for libhal to reach the goals of flexible and easy of
use. Static based polymorphism, by its nature, is inflexible at runtime and can
be quite complicated to work with.

Runtime polymorphism, or the usage of `virtual` enables a broader scope of
flexibility and isolation between drivers and application logic. The only
downside to using `virtual` polymorphism is the cost of a virtual function call.
But the actual cost of making a virtual function call is usually tiny in
comparison to the work performed in the actual API call. In most cases the call
latency and lack of inlining of a virtual call isn't an important factor in most
applications.

And over all, along with the broad amount of flexibility comes the ease of use.
Virtual polymorphism for interfaces is very easy to perform and has a ton of
language support.

## A.8 Strongly Leverage Package Managers

Finding and integration libraries into C++ programs is a pain. Doing the same
thing for embedded is doubly so, especially if there is vendor IDE lock in.
libhal seeks to escape this by using the available package managers and indexes.

Libhal was designed around and split up into parts that each come together via
these package managers. The purpose of this design is to achieve:

- Stable version and release control for each library
- Can be easily found the indexes
- Ease of integration

## A.9 Foundation & Interface Stability

`libhal-util`, `libhal-mock` and `libhal-soft` were all apart of `libhal`
originally, but due to the constant changes and API breaks in those categories
of code, the version number of `libhal` would increment constantly, shifting the
foundation of the ecosystem. To prevent constant churn and API breaks `libahl`
was split into those 4 libraries.

The goal is to keep the version number for `libhal` constant for long periods of
time to prevent breaking down stream libraries, drivers, and applications.

## A.10 libhal driver directory

One of the libhal repos will contain a directory of libhal libraries that extend
it along with which interfaces it implements and what type of library it is.

Official libhal libraries must go into the directory. Developers outside of the
libhal organization can also contribute to and opt into this directory by making
a PR to the repo containing the directory.

The purpose of this is to make finding and exploring the available set of
drivers easier for the end developer by having them all in one place.

## A.11 Github Actions & Remote Workflows

libhal uses github and github action "workflow_dispatch" to allow other repos to
reuse libhal's continuous integration steps. The actions are configurable via
input parameters to allow libraries to customize and control how the CI works.

libhal's CI attempts to use as many tools as reasonable to make sure that the
C++ source code follows the style guide, C++ core guidelines and retains a
certain level of quality. All offical libhal libaries must opt in to the common
libhal/libhal workflow.

This helps to ensure that all projects are held to the same standard and
quality. The workflow files can be found in `libhal/libhal/.github/workflows`.

## A.12 Boost.UT as our unit testing framework

Boost.UT was chosen for its lack of macros, stunning compile time performance,
and its ease of use.

## A.13 Boost.LEAF for error handling

One major issue with any project is handling errors. Because the `libhal`
interfaces can be used in such broad environments, it is hard to determine what
the BEST error type in advance could work for all users. Some use error codes,
some use `std::expected<T, E>`, and some use exceptions.

Error codes are problematic as they tend to lack details and context around an
error. Sometimes the documentation along with the error code provides all of the
necessary context, but many times more context is needed.

`std::expected<T, E>` seems like a better alternative to error codes, but... is
it really? What should `E` be? An error code? What if we have it be an error
code and a const string. What if we want a file name and function name? What
about a line number? What about 16 bytes for holding context information about
the error? That should be enough, right? What about- what about- what about? ...
wait, how big is this error type? 32 bytes? Wasn't this supposed to be light
weight? Unfortunately, `std::expected` is not a good choice for interfaces with
extremely broad and unknowable of error states. This forces the error type to be
massive to accommodate everything and everyone.

Exceptions somewhat fix this issue but are still lacking. The benefit of
exceptions is that you can throw just about anything, meaning the developer can
provide loads of information in the thrown object. But exceptions fail on 4
counts:

  - Exceptions tend to not be available for embedded systems, either due to a
    toolchain not compiling with them enabled or because a project has strict
    requirements that forbid exceptions.
  - When exceptions do occur, the amount of time it takes to reach its catch can
    take a long time, longer than what real time applications can handle.
  - Normally requires heap allocation
  - Exceptions can only throw one type and the cost of those thrown exceptions
    are always paid for.

Boost.LEAF has the following properties:

  - Portable single-header format, no dependencies.
  - Tiny code size when configured for embedded development.
  - No dynamic memory allocations, even with very large payloads.
  - Deterministic unbiased efficiency on the "happy" path and the "sad" path.
  - Error objects are handled in constant time, independent of call stack depth.
  - Can be used with or without exception handling.
  - Can throw more than 1 error at a time

All of these features are critical for libhal to have the performance for real
time applications.

The last feature is important for debugging, bug reports, and context specific
error handling. Boost.LEAF gives the driver the choice to emit several error
types and allows the user to pick out which one they would like to opt to catch
if any of them. This can be used to capture an error code as well as s snapshot
of the register map of a peripheral, the object's current state or even a debug
message.

## A.14 Using Statement Expressions with `HAL_CHECK()`

`HAL_CHECK()` is the only MACRO in `libhal`. It exists because there is nothing
like Rust's `?` operator which either unwraps a value or returns an error from
the current function. The "Statement Expression" only works with GCC & Clang
which is one of the reasons why `libhal` only supports those compilers. Compare
the following two expressions:

```C++
// 1. Using statement expressions
auto percentage = HAL_CHECK(adc.read()).percentage;

// 2. Without using statement expressions
HAL_CHECK(adc_read_temporary, adc.read());
auto percentage = adc_read_temporary.percentage;
```

The second option looks very unnatural and require explanation. On the other
hand users who have never seen `HAL_CHECK()` in action have an immediate idea of
how it works in the first section of the code. Portability to other compilers
was sacrificed in order to make the code easier to read, understand, and write.

## A.15 `libhal` WILL NOT use fixed point

Because fixed point will NOT result in better performance or space savings
compared to SOFTWARE floating point. Team did venture to use fixed point
throughout the entire code base and when we felt that the fixed point code
reached a point where it was usable everywhere, we benchmarked it and got these:

```
double_time            = 8921794
[i64 +Round]fixed_time = 4558238 (best fixed point option)
[soft]float_time       = 1424913
[i64 -Round]fixed_time = 1410720 (precision issues)
[i32 +Round]fixed_time = 815107  (will easily overflow)
[hard]float_time       = 110089  (not always available)
[i32 -Round]fixed_time = 95085   (will not actually work)
```

Here is an old gist of the example:
[kammce/fixed_v_float.cpp](https://gist.github.com/kammce/920166314b8b49924f906bd8d26f2450)

The above metrics were for a program that run a map function to map an input
number from one range to another range. The numbers on the right hand side are
the number of cycles of a Arm Cortex M4F DWT counter. Fixed point 32-bit
integers is enough for a representation but to handle arithmetic like
multiplication, 64-bit integers were needed. Those 64-bit operations resulted in
computation time approaching double floating point. If a system used 32-bit
floats, the 32-bit fixed point would be ~4x slower. If a system used double
floating point in software mode, it will only be ~2x slower than 32-bit fixed
point. Fixed point, over all, is more expensive in terms of space and time.

If you don't believe the metrics measured here, you can also check [fpm
performance
metrics](https://github.com/MikeLankamp/fpm/blob/master/docs/performance.md).
Notice how fpm fairs far worse for anything that isn't addition/subtraction.

See these articles for more details:

- [You're Going To Have To
  Think!](https://accu.org/journals/overload/18/99/harris_1702/)
- [WHY FIXED POINT WON'T CURE YOUR FLOATING POINT
  BLUES](https://accu.org/journals/overload/18/100/harris_1717/)
- [WHY RATIONALS WON’T CURE YOUR FLOATING POINT
  BLUES](https://accu.org/journals/overload/19/101/harris_1986/)
- [Why Computer Algebra Won’t Cure Your Floating Point
  Blues](https://accu.org/journals/overload/19/102/harris_1979/)
- [Why Interval Arithmetic Won’t Cure Your Floating Point
  Blues](https://accu.org/journals/overload/19/103/harris_1974/)

## A.16 `libhal` does NOT use a units library

Unit libraries have the potential to really help prevent an entire category of
unit based errors, it is also extremely difficult and annoying to use.

Th article [Unit of measurement libraries, their popularity and
suitability](https://onlinelibrary.wiley.com/doi/10.1002/spe.2926) goes into
detail about the usability issues faced by unit libraries. Because, at the time
of writing `libhal` there is not a unit library that is easy to use and concise,
`libhal` decided to simply stick with 32-bit floats and helper UDLs.

## A.17 Always return `hal::result<T>` from every API

Every interface in libhal returns a `hal::result<T>` type.

The return types should be a `result<T>` because the implementation could be
an abstraction for anything. As an example, it could come from an I2C to PWM
generator and if something goes wrong with the i2c communication, the
information must be emitted from the function.

## A.18 Using `inplace_function`/`hal::callback` for interrupt callbacks

There are interfaces such as `hal::can`, `hal::interrupt_pin`, and
`hal::timer` that all have APIs for setting a callback.

Because those callbacks could be lambdas, function objects, pure functions, or
other callable types, we need a polymorphic type erased function type that can
take any callable type as input and call it when its `operator()` is called.

The options for these callbacks are:

- `std::function`
    - PROS
        - Part of the standard library
        - Can take any callable type without restrictions
    - CONS
        - Allocating (compiler implementations will use SBO but the size of
          those buffers are not specified in the standard and should not be
          relied upon)
        - Can be quite large in size (40 bytes on 32-bit arm)
- `function_ref`
    - PROS
        - Very lightweight (very fast construction)
        - Very small size (2 pointers in size)
    - CONS
        - For this to work as a callback, the callable passed to the
          `function_ref` must have a lifetime that is greater than the object
          implementing the interface.
- `inplace_function`
    - PROS
        - Works and behaves just like `std::function`
    - CONS
        - Fixed callable size limit

`std::function` is automatically out because it is allocating. Using
`std::function` for any interface API would ensure that applications that
disallow dynamic allocations after boot or in general could never use them.

`function_ref` has two great PROS but the largets CON is lifetime issues that
are really easy to fall into. Specifically something like this:

```C++
obj.on_event([&single_capture]() {
  // does a thing  ...
});
```

The lambda is actually a temporary! So after this call it is out of scope and
no longer exists. If the reference to temporary is stored and called later,
the code WILL suffer from a "stack use after scope" violation which is
undefined behavior.

`inplace_function` has all of the features of `std::function` but with limited
size. Due to this, constructing an `inplace_function` is deterministic and
relatively light weight.

## A.19 `hal::callback` sizing

`hal::callback` is an alias to `inplace_function` with a buffer size of 2
pointers (`sizeof(std::intptr_t) * 2`). This size was chosen in order to be
small and easily storable. Two pointers worth of size should be enough to hold
a pointer to `this` in classes as well a pointer to some sort of state object.

The size of the callback object was not choosen in order to improve the
performance of calling callback setting class functions. Even with the small
size of `hal::callback`, its too large to take advantage of register based
parameter passing. Thus the size of 2 pointers was mostly to help in keeping
the memory footprint of the `callback` small. In most cases, setting an
callback is something that is either done once or done very infrequently, and
thus does not get much of a benefit from higher performance function calls.

## A.20 Why functions that setup events do not return `hal::status`

Functions like `hal::can::on_receive()` and `hal::interrupt_pin::on_trigger()`
return void and not `hal::status` like other APIs. Thus these functions cannot
return an error and are considered "infallible". There infallibility
guarantee makes constructing drivers using these interfaces easier. It also
eliminates the need for drivers to concern themselves with handling errors from
these APIs.

This guarantee is easily made, because having any one of these APIs fail IS A
bug and not something that a developer should or could be responsible with
handling. These APIs MUST be implemented as target library peripheral drivers
because setting interrupts is something that only target and processor libraries
can do. Setting up and configuring interrupts is only possible if the processor
supports it. Being apart of a target library means that they know exactly
the set of possible configurations that are allowed. This also means that
constructing a target peripheral with interrupt customization can be include
compile time checks as well.

## A.21 Critical importance of providing prebuilt binaries

This amends architectural component A.4 and pivots away from header only
libraries over to prebuilt binaries.

The following are the reasons why supporting, producing and distibuting prebuilt
binaries is critical to libhal.

- ⏱️ **Faster compilation times**: When a project grows in size, compiling
  a C++ codebase can become time-consuming. By using precompiled binaries,
  the compiler has less work to do because portions of the code have already
  been compiled. It doesn't need to parse and compile the same headers over and
  over again. Developers will refuse to use libhal if it results in extremely
  long compilation times. They will tire of the project and seek faster to
  compile alternatives.
- ✅ **Consistency**: With precompiled binaries, you can be sure that the same
  code will be compiled in the same way, which can reduce inconsistencies
  between different environments or build configurations. libhal will not be
  taken seriously if libhal didn't use prebuilt binaries and also support
  producing them. Distributing consistent code in a consistent form will be a
  requirement for many organizations seeking to use libhal.
- 📦 **Code distribution and updates**: When distributing C++ code, rather than
  give out the full source code or require users to compile it themselves,
  providing a precompiled binary is more user-friendly. Updates to the program
  can also be handled by replacing the old binaries with the new ones, without
  requiring the end-user to handle the compilation process. The philosophy of
  conan regarding library packages is that, at their core, C++ libraries are
  header files and prebuilt binaries.
- 🔒 **Protection of Intellectual Property**: Precompiled binaries are much
  harder to reverse-engineer than raw source code. If a developer wants to
  write an application and distribute the binary, but the C++ code contains
  proprietary algorithms or trade secrets that you don't want to expose to the
  public, distributing it as a precompiled binary can provide an additional
  layer of protection.

In order to provide the best experience for our developers as well as necessary
features of the platform, libhal emphasizes prebuilt libraries over header only.

!!! note

    Why the sudden change from A.4 to this? Supporting header-only made bringing
    up libhal much easier. The process of implementing prebuilt binaries
    required adding additional architecture settings, required the use of
    conan profiles to make the arm-gnu-toolchain available globally for all
    packages, figuring out how to insert architectural compiler flags and ensure
    they propogate to all packages took time and was a complex process. And
    header-only libraries allowed the initial version of libhal to bypass all
    of this.
