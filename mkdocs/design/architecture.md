# 🏗️ Architectural Design Decisions

## A.x Always use modern C++

libhal uses the modern C++. Meaning that libhal is will follow the most modern
and available compilers available. When a sufficient number of features have
become available in both GCC & Clang and are determined to be useful to libhal
libhal will increment its major number to indicate that it has upgraded compiler
versions.

This decision exists to escape the issues of vendor and toolchain lock in thats
prevalant in the C++ and embedded industry. With sufficient testing, upgrading
compilers shouldn't result in bugs in applications.

## A.x Interface Design Choices

Interfaces MUST follow this layout:

- Use `#pragma once` at the start of the file: Simpler than an include guard
- All `virtual` functions must be private & each `virtual` functions is
  accompanied by a public API that is used to call the virtual API
- The return type of each API MUST be a `result<T>` where `T` is a structure.

Pragma once is needed to ensure files are included once. Its also less error
prone then hand writing include guards.

The reasons for a private virtual with public API can be found in this
[article]().

Returning a structure for each API means that, in the future, if the return
type needs to be extended, it can be done without breaking down stream
libraries. For example:

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

### A.x.x No utility methods in interfaces (UFCS)

Utility functions shall not exist in interface definitions. For example,
`hal::i2c` could have a `hal::i2c::write()` and `hal::i2c::read()` function
implemented in its interface.

This has the effect of reducing the number of headers in the interface files and
dependencies. This, in turn, results in an interface that is minimal, clean, and
simple.

The major purpose of this is to keep compile times down as much possible for
each interface. This also ensures that the "pay-for-what-you-use" model is
followed. No need to pay for a utility you never planned to use.

The final reason is in preparation for UFCS (Unified Function Call Syntax).
UFCS is a proposal for C++23 and C++26. It did not get into C++23 but is slated
for review in 26. For more details see this page
[What is unified function call syntax anyway?](https://brevzin.github.io/c++/2019/04/13/ufcs-history/).

## A.x Using tweak files over macros

Tweak files were used as an alternative to MACROS. MACROs can be quite
problematic in many situations and are advised against in the core C++
guidelines. The benefits of tweak files can be found
[here](https://vector-of-bool.github.io/2020/10/04/lib-configuration.html).

## A.x Header Only Implementations

libhal libraries and drivers are, in general, header-only. libhal uses
header only implementations in order to enable the broadest set of package
managers, build system and projects to use it.

The strongest reason for a header-only approach is due to the fact that libhal
libraries never intend to be distributed in prebuilt binaries. Conan is designed
to ship with prebuilt binaries or build against the host machine. These settings
can be altered, but you still end up with a single global prebuilt binary for a
driver does not make sense when that driver could be used in a variety of
environments such as the host device for host side tests, a specific target
device, and a target device that is in the family of that specific target
device.

For example, lets consider liblpc40xx. If you are building to target the
lpc4078 chip then that prebuilt ought to be built with usage of FPU registers
enabled. But if you use that same prebuilt with the lpc4074, you'll find that
the program crashes because the 74 variant does not have an FPU. You can attempt
make a prebuilt binary for ever possible build variation that an embedded
engineer may want, but you'll always come up short. The better approach is to
simply build the library each time, thus ensuring that the build flags are
considered each time.

If compile-times are a concern, there are reasonably easy methods for managing
this. See [Handling Long Compile Times](#).

## A.x Encapsulated Memory Mapped Classes

Target drivers that use Memory-Mapped-IO usually come with a vendor generated
header file that describes each peripheral as a structure type, along with
bit mask MACROs, and MACROs that result in pointers to each peripheral in
memory. The main problem using these headers files causes is naming conflicts.
Many of these vendor generated headers work with both C and C++. Meaning that
namespaces are not utilized. And many do not expect that they will be used in
an environment where another vendor generated header file will exists. So no
care is taken to ensure that the names of the types are unique. This WILL cause
linker errors as the linker sees both GPIO_TypeDef from an STM library
and GPIO_TypeDef from an LPC library that aren't the same.

Because of this we have style [S.x Encapsulated Memory Mapped classes]()
guideline.

## A.x Using hal::function_ref over std::function

`std::function` has all of the flexibility and functionality needed, but it has
the potential to allocate and requires potentially expensive copy operations
when passed by value.

`hal::function_ref` is a non-owning version of the `std::function`, with a
size of just two pointers. `hal::function_ref` fits most use cases in that
class functions that take them only need them for the duration of the function
and do not need to own them for later.

!!! info
    `hal::function_ref` is an alias for `tl:function_ref` which comes from the
    project
    [TartanLlama/function_ref](https://github.com/TartanLlama/function_ref).

## A.x Using runtime polymorphism `virtual`

Polymorphism is critical for libhal to reach the goals of flexible and easy of
use. Static based polymorphism, by its nature, is inflexible at runtime and
can be quite complicated to work with.

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

## A.x Strongly Leverage Package Managers

Finding and integration libraries into C++ programs is a pain. Doing the same
thing for embedded is doubly so, especially if there is vendor IDE lock in.
libhal seeks to escape this by using the available package managers and indexes.

Libhal was designed around and split up into parts that each come together via
these package managers. The purpose of this design is to achieve:

- Stable version and release control for each library
- Can be easily found the indexes
- Ease of integration

## A.x Foundation & Interface Stability

`libhal-util`, `libhal-mock` and `libhal-soft` were all apart of `libhal`
originally, but due to the constant changes and API breaks in those categories
of code, the version number of `libhal` would increment constantly, shifting the
foundation of the ecosystem. To prevent constant churn and API breaks `libahl`
was split into those 4 libraries.

The goal is to keep the version number for `libhal` constant for long periods of
time to prevent breaking down stream libraries, drivers, and applications.

## A.x libhal driver directory

One of the libhal repos will contain a directory of libhal libraries that extend
it along with which interfaces it implements and what type of library it is.

Official libhal libraries must go into the directory. Developers outside of the
libhal organization can also contribute to and opt into this directory by
making a PR to the repo containing the directory.

The purpose of this is to make finding and exploring the available set of
drivers easier for the end developer by having them all in one place.

## A.x Github Actions & Remote Workflows

libhal uses github and github action "workflow_dispatch" to allow other repos to
reuse libhal's continuous integration steps. The actions are configurable via
input parameters to allow libraries to customize and control how the CI works.

libhal's CI attempts to use as many tools as reasonable to make sure that the
C++ source code follows the style guide, C++ core guidelines and retains a
certain level of quality. All offical libhal libaries must opt in to the common
libhal/libhal workflow.

This helps to ensure that all projects are held to the same standard and
quality. The workflow files can be found in `libhal/libhal/.github/workflows`.

## A.x Boost.UT as our unit testing framework

Boost.UT was chosen for its lack of macros, stunning compile time performance,
and its ease of use.

## A.x Boost.LEAF for error handling

One major issue with any project is handling errors. Because the `libhal`
interfaces can be used in such broad environments, it is hard to determine what
the BEST error type in advance could work for all users. Some use error codes,
some use `std::expected<T, E>`, and some use exceptions.

Error codes are problematic as they tend to lack details and context around an
error. Sometimes the documentation along with the error code provides all of
the necessary context, but many times more context is needed.

`std::expected<T, E>` seems like a better alternative to error codes, but... is
it really? What should `E` be? An error code? What if we have it be an error
code and a const string. What if we want a file name and function name? What
about a line number? What about 16 bytes for holding context information about
the error? That should be enough, right? What about- what about- what about?
... wait, how big is this error type? 32 bytes? Wasn't this supposed to be light
weight? Unfortunately, `std::expected` is not a good choice for interfaces with
extremely broad and unknowable of error states. This forces the error type to
be massive to accommodate everything and everyone.

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
