# 🎨 Style Guide

All guides follow the [C++ Core
Guidelines](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines).

## 🎨 Style

- Code shall follow libhal's `.clang-format` file, which uses the
  Mozilla C++ style format as a base with some adjustments.
- Code shall follow libhal's `.naming.style` file, which is very
  similar to the standard library naming convention:
  - CamelCase for template parameters.
  - CAP_CASE for macros.
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

## 🚫 Coding Restrictions

### Refrain from performing manual bit manipulation

Use `hal::bit` from `libhal-util` library to perform bitwise operations operations.

### Refrain from using MACROS

Only use macros if something cannot be done without using them. Usually macros
can be replaced with constexpr or const variables or function calls. A case
where macros are the only way is for HAL_CHECK() since there is no way
to automatically generate the boiler plate for returning if a function returns
and error in C++ and thus a macro is needed here to prevent possible mistakes
in writing out the boilerplate.

Only use preprocessor `#if` and the like if it is impossible to use
`if constexpr` to achieve the same behavior.

### Never include C++ stream libraries

#### Rationale

Applications incur an automatic 150kB space penalty for including any of the
ostream headers that also statically generate the global `std::cout` and the
like objects. This happens even if the application never uses any part of
`<iostream>` library.

### Refrain from memory allocations

Drivers should refrain from memory allocations as much as possible that includes
using STL libraries that allocate such as `std::string` or `std::vector`.

#### Rationale

TBD

### Drivers should not log to STDOUT or STDIN

Peripheral drivers must NOT log to stdout or stderr. This means no calls to

- `std::printf`
- `std::cout`
- `std::print` (C++26 std::format)

#### Rationale

Consider using the file I/O libraries in C, C++, python or some other
language. Would you, as a developer, ever imagine that opening, reading,
writing, or closing a file would (write?) to your console? Especially if there did not
exist a way to turn off logging. Most users would be very upset as this would
not seem like the role of the file I/O library to spam the console. This gets
even worse if a particular application has thousands of files and each operation
is logging.

The role of logging should be held by the application developer, not their
drivers or helper functions, unless the purpose of the helper functions or
driver is to write to console.

Instrumenting a driver with log statements IS allowable provided that they are
controllable via a tweak configuration and that they are turned off by default
AND turning off this configuration eliminates all logging code from the driver.

Example of logging where logging can be disabled:

```cpp
void my_driver_log([[maybe_unused]] std::string_view p_str,
                   [[maybe_unused]] uint32_t argument)
{
  if constexpr (hal::lpc40xx::config::enable_logging)
  {
    std::printf("%s : %" PRIu32, p_str.data(), argument);
  }
}

// ...

my_driver_log("Control Register 1 = ", reg->control1);
```

Notice how, if `enable_logging` is false, the function body is empty and thus,
the compiler will find it easy to eliminate the function itself. The parameters,
specifically the `std::string_view` will be garbage collected at compile time
since its use is a no-op.

### Drivers should not purposefully halt OR terminate the application

Drivers are not entitled to halt the execution of the application and thus any
code block that would effectively end or halt the execution of the program
without giving control back to the application are prohibited.

As an example drivers should never call:
  - `std::abort()`
  - `std::exit()`
  - `std::terminate()`
  - any of their variants

This includes placing an **infinite loop block** in a driver.

#### Rationale

An application should have control over how their application ends. A
driver should report severe errors to the application and let the application
decide the next steps. If a particular operation cannot be executed as intended,
then `hal::new_error()` should be called.

Constructors would be the only valid place to put an exit statement, because
they cannot return errors only themselves.

The solution to this is to use a factory function like so:

```cpp
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

For peripherals:

```cpp
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

### Drivers should not pollute the global namespace

All drivers must be within the `hal` namespace (RECOMMENDED) or within their
own bespoke namespace.

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

### Interface should follow the public private API

See [private virtual method](http://www.gotw.ca/publications/mill18.htm)
for more details. Rationale can be found within that link as well.
