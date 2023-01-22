# 🎨 Style Guide

## S.0 Code Guidelines

All guides follow the [C++ Core
Guidelines](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines).

## S.1 Formatting

- Code shall follow libhal's
  [`.clang-format`](https://github.com/libhal/libhal/blob/main/.clang-format)
  file, which uses the Mozilla C++ style format as a base with some adjustments.
- Code shall follow libhal's
  [`.naming.style`](https://github.com/libhal/libhal/blob/main/.naming.style)
  file, which is very similar to the standard library naming convention:
  - CamelCase for template parameters.
  - CAP_CASE for MACROs (avoid MACROs in general).
  - lowercase snake_case for everything else.
  - prefix `p_` for function parameters.
  - prefix `m_` for private/protected class member.
- Refrain from variable names with abbreviations where it can be helped. `adc`,
  `pwm`, and `i2c` are extremely common so it is fine to leave them as
  abbreviations. Most people know the abbreviations more than the words that
  make them up. But words like `cnt` should be `count` and `cdl` and `cdh`
  should be written out as `clock_divider_low` and `clock_divider_high`.
  Registers do get a pass if they directly reflect the names in the data sheet
  which will make looking them up easier in the future.
- Use `#pragma once` as the include guard for headers.
- Every file must end with a newline character.
- Every line in a file must stay within a 80 character limit.
  - Exceptions to this rule are allowed. Use `// NOLINT` in these cases.
- Radix for bit manipulation:
  - Only use binary (`0b1000'0011`) or hex (`0x0FF0`) for bit manipulation.
  - Never use decimal or octal as this is harder to reason about for most
    programmers.
- Every public API must be documented with the doxygen style comments (CI will
  ensure that every public API is documented fully).
- Include the C++ header version of C headers such as `<cstdint>` vs
  `<stdint.h>`.

## S.2 Refrain from performing manual bit manipulation

Use `hal::bit` from `libhal-util` library to perform bitwise operations
operations.

## S.3 Refrain from using MACROS

Only use macros if something cannot be done without using them. Usually macros
can be replaced with `constexpr` or const variables or function calls. A case
where macros are the only way is for HAL_CHECK() since there is no way
to automatically generate the boiler plate for returning if a function returns
and error in C++ and thus a macro is needed here to prevent possible mistakes
in writing out the boilerplate.

Only use preprocessor `#if` and the like if it is impossible to use
`if constexpr` to achieve the same behavior.

## S.4 Never include C++ stream libraries

Applications incur an automatic 150kB space penalty for including any of the
ostream headers that also statically generate the global `std::cout` and the
like objects. This happens even if the application never uses any part of
`<iostream>` library.

## S.5 Refrain from memory allocations

Interfaces and drivers should refrain from APIs that force memory allocations
or implementations that allocate memory from heap. This means avoiding STL
libraries that allocate such as `std::string` or `std::vector`.

Many embedded system applications, especially the real time ones, do not allow
dynamic memory allocations. There are many reasons for this that can be found
MISRA C++ and AutoSAR.

## S.6 Drivers should not log to STDOUT or STDIN

Peripheral drivers must NOT log to stdout or stderr. This means no calls to

- `std::printf`
- `std::cout`
- `std::print` (C++26's version of print based on `std::format`)

Consider using the file I/O libraries in C, C++, python or some other language.
Would you, as a developer, ever imagine that opening, reading, writing, or
closing a file would (write?) to your console? Especially if there did not exist
a way to turn off logging. Most users would be very upset as this would not seem
like the role of the file I/O library to spam the console. This gets even worse
if a particular application has thousands of files and each operation is
logging.

The role of logging should be held by the application developer, not their
drivers or helper functions, unless the purpose of the helper functions or
driver is to write to console.

## S.7 Drivers should not purposefully halt OR terminate the application

Drivers are not entitled to halt the execution of the application and thus any
code block that would effectively end or halt the execution of the program
without giving control back to the application are prohibited.

As an example drivers should never call:
  - `std::abort()`
  - `std::exit()`
  - `std::terminate()`
  - any of their variants

This includes placing an **infinite loop block** in a driver.

An application should have control over how their application ends. A
driver should report severe errors to the application and let the application
decide the next steps. If a particular operation cannot be executed as intended,
then `hal::new_error()` should be called.

Constructors would be the only valid place to put an exit statement, because
they cannot return errors only themselves.

The solution to this is to use a factory function like so:

=== "Device Driver Library"

    ```C++
    class device_driver {
      public:
        result<device_driver> create(/* ... */) {
          // Perform operations that may fail here
          return device_driver(/* ... */);
        }

      private:
        device_driver(/* ... */) {
          // Constructors should never fail and thus any work done here must not
          // fail.
        }
    };
    ```

=== "Peripheral Driver Library"

    ```C++
    class peripheral_driver {
      public:
        // Since peripherals are constrained and have a finite set of values
        // This also ensures that the driver is only constructed once and afterwards
        // simply returns back a reference to that object.
        template<size_t PortNumber>
        // NOTE: Returns a reference not an object.
        //       Objects are owned by the create function
        result<peripheral_driver&> create(/* ... */) {
          // Perform operations that may fail here
          static peripheral_driver driver(/* ... */);
          return driver;
        }

      private:
        peripheral_driver(/* ... */) {
          // ...
        }
    };
    ```

## S.8 Drivers should not pollute the global namespace

All drivers must be within the `hal` namespace or within their own bespoke
namespace.

Inclusion of a C header file full of register map structures is not allowed as
it pollutes the global namespace and tends to result in name collisions.

Care should be taken to ensure that the `hal` namespace is also as clean as
possible by placing structures, enums, const data, and any other symbols into
the driver's class's namespace like so:

```cpp
namespace hal::target
{
class target {
  struct register_map {
    std::uint32_t control1;
    std::uint32_t control2;
    std::uint32_t data;
    std::uint32_t status;
    // ..
  };

  struct control1_register {
    static constexpr auto channel_enable = hal::bit::range::from<0, 7>();
    static constexpr auto peripheral_enable = hal::bit::range::from<8>();
    // ...
  };

  // ...
};
}
```

## S.9 Interface should follow the public private API Scheme

See [private virtual method](http://www.gotw.ca/publications/mill18.htm)
for more details. Rationale can be found within that link as well.

## S.10 Avoid using `bool`

### S.10.1 As an object member

`bool` has very poor information density and takes up 8-bits per entry. If only
one `bool` is needed, then a bool is a fine object member. If multiple `bool`s
are needed, then use a `std::bitset` along with static `constexpr` index
positions in order to keep the density down to the lowest amount possible.

### S.10.2 As a parameter

See the article ["Clean code: The curse of a boolean
parameter"](https://medium.com/@amlcurran/clean-code-the-curse-of-a-boolean-parameter-c237a830b7a3)
for details as to why `bool` parameters are awful.

`bool` is fine if it is the only parameter and it acts as a lexical switch, for
example:

```c++
// This is fine because it reads as set "LED" voltage "level" to "FALSE"
led.level(false);
// This is fine because it reads as set "LED" voltage "level" to "TRUE"
led.level(true);
```

## S.11 Integrating third party libraries by source

In general, third party libraries should NOT be integrated into a library by
source. It should be depended upon using a package manager. But in some cases
third party libraries must be included by source. In these cases, the third
party libraries should be committed into a project, without modifications,
into the `include/<library_name>/third_party` directory. After that commit, the
third party libraries can be used by and integrated into the library code base,
in a following commit.

If a third party library is modified, that library must have a section at the
top of the file with the following description:

```C++
/**
 * [libhal] modifications to this file are as follows:
 *
 *    1. mod 1
 *    2. mod 2
 *    3. mod 3
 *    4. mod 4
 */

/**
 * <LICENSE GOES HERE!>
 */
```

Care must be taken to ensure that third party libraries do not conflict with
the licenses of libhal libraries and permit direct integration as well as
modification.

**Rationale:** Makes keeping track of changes and the history of files easier to
manage.

## S.12 Avoid `std::atomic`

Avoid using `std::atomic` because of portability issues across devices in
architectures. Especially when `std::atomic` is not fully supported by the
compiler.

!!! info

    `target` and `processor` libraries are allowed to use `std::atomic` if it is
    available with their cross compiler and toolchain. In this case, the we can
    know which target devices the software is running on, either the target
    itself, which we already know can support it, or on a host machine for unit
    testing, which is very likely to have a compiler that supports atomics.

## S.13 Avoid `<thread>`

Embedded system compilers tend to not provide an implementation of `<thread>`
because the choice of which threading model or multi-threading operating system
is left to the developer.

In general, `#include <thread>` will almost never work when cross compiling.
