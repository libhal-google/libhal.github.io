# 🎚️ Configuration

libhal is very lightweight and thus has very few knobs that can be configured.
The few that it does have are critical to get right. libhal uses `tweak.hpp`
header files for customization and configuration. See
[A New Approach to Build-Time Library Configuration](https://vector-of-bool.github.io/2020/10/04/lib-configuration.html)
for more details.

Below is an example `libhal.tweaks.hpp` file with all 3 fields set to their
defaults:

```cpp
#pragma once
#include <string_view>

namespace hal::config {
constexpr std::string_view platform = "undefined";
constexpr bool on_error_callback_enabled = false;
constexpr auto on_error_callback = []() {};
}  // namespace hal::config
```

Create a `libhal.tweaks.hpp` file somewhere in your application and make
sure it is within one of the compiler's include paths. For GCC/Clang you can use
the `-I` flag to specify the directory where headers can be found. The file must
be at the root of the directory listed within the `-I` include path. There can
only be one `libhal.tweaks.hpp` per application build.

!!! error
    Not providing a `libhal.tweaks.hpp` file will result in a compiler error by
    libhal.

## `platform`

!!! note
    Currently this flag is mislabelled as `platform` and should be labeled as
    `target`.

Set the string to the name of the device you are working with. Information about
what the `target` string should be set to can be found in the target's
libhal library README.md.

Lets consider we are using the
[`STM32 Blue Pill Board`](https://stm32-base.org/boards/STM32F103C8T6-Blue-Pill.html).
The microcontroller on that board is the `stm32f103c8t6` and thus the target
name should be `stm32f103c8t6`.

Drivers will use parts of the target string to configure their behavior such as
using generating a compile time error if a peripheral is used with an
unsupported target.

Using a shorter target name, such as `stm32f10` will work as well. What this
tells the drivers is that you want this project to work on any generic STM32F10x
series chip. This will limit which drivers the application can use to the ones
common across all STM32F10x series chips can support.

A special target name is `test` which is used to indicate to driver to configure
themselves for unit testing. This generally means that memory mapped peripherals
will allocate their registers in ram rather than attempting to access them via
their peripheral address, which wouldn't make sense on a host machine as their
memory maps are different.

# `on_error_callback`

`on_error_callback` specifies a callback that should be called when any errors
occur. The main purpose of this is to capture a stack trace when errors occur
but this can also be used for anything else.

`on_error_callback_enabled` enables the usage of the `on_error_callback`.

!!! note
    Prefer to use an `extern` function defined above the `libhal::config`
    namespace and define the function elsewhere. This prevents issues with
    inclusion order issues with `libhal.tweaks.hpp` which occur because ALL
    libhal interfaces include `<libhal/config.hpp>` which directly includes
    `libhal.tweaks.hpp` which WILL result in an circular inclusion error/issue.

    Here is an example below:

    ```C++
    #pragma once
    #include <string_view>

    namespace my_project::config {
    extern void my_error_handler();
    }

    namespace hal::config {
    constexpr std::string_view platform = "undefined";
    constexpr bool on_error_callback_enabled = false;
    constexpr auto on_error_callback = []() {
      my_project::config::my_error_handler();
    };
    }  // namespace hal::config
    ```
