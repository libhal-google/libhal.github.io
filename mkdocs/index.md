<div align="center">
<img style="height:200px" src="https://raw.githubusercontent.com/libhal/.github/main/profile/logo.png">
<h1>Welcome to libhal</h1>
</div>

!!! Warning
    libhal is still in **BETA**!

## Abstract

libhal exists to make hardware drivers **🚚 portable**, **🦾 flexible**,
**📦 accessible**, and **🍰 easy to use**. libhal seeks to provide a foundation
for embedded drivers, allowing those drivers to be used across different
processors, microcontrollers, systems, and devices.

The design philosophy of libhal is to be:

1. [Multi Targeted](philosophy.md#d1-multi-targeted)
2. [Light Weight](philosophy.md#d2-light-weight)
3. [General](philosophy.md#d3-general)
4. [Minimalist](philosophy.md#d4-minimalist)
5. [Safe](philosophy.md#d5-safe)
6. [Tested & Testable](philosophy.md#d6-tested-testable)
7. [Compiled Quickly](philosophy.md#d7-compiled-quickly)
8. [OS Agnostic](philosophy.md#d8-os-agnostic)

## The Basics

libhal, at its core, is simply a set of interfaces that correspond to hardware
devices and peripherals. These interfaces use runtime polymorphism in order to
decouple application logic from driver implementation details. This decoupling
enables applications to run on any target device that has the necessary
components available.

A quick example is a blinker program. The required interfaces for such a program
is a `hal::output_pin` for controlling the LED and a `hal::steady_clock` for
keeping time. Now your application takes both of these drivers without having to
consider their implementation details and blink and LED at a specified interval.

Below is a set of source code to make an application that can work with both the
`lpc40xx` and `stm32f10x` microcontroller.

=== "blinker.cpp"

    ```C++
    #include <libhal-util/steady_clock.hpp>

    #include "hardware_map.hpp"

    hal::status application(starter::hardware_map& p_map)
    {
      using namespace std::chrono_literals;
      using namespace hal::literals;

      while (true) {
        HAL_CHECK(p_map.led->level(true));
        HAL_CHECK(hal::delay(*p_map.steady_clock, 500ms));
        HAL_CHECK(p_map.led->level(false));
        HAL_CHECK(hal::delay(*p_map.steady_clock, 500ms));
      }

      return hal::success();
    }
    ```

=== "hardware_map.hpp"

    ``` C++
    #pragma once

    #include <libhal/functional.hpp>
    #include <libhal/output_pin.hpp>
    #include <libhal/steady_clock.hpp>

    namespace starter {
    struct hardware_map
    {
      hal::output_pin* led;
      hal::steady_clock* steady_clock;
      hal::callback<void()> reset;
    };
    }  // namespace starter

    // Application function must be implemented by one of the compilation units
    // (.cpp) files.
    hal::status application(starter::hardware_map& p_map);
    hal::result<starter::hardware_map> initialize_target();
    ```

=== "main.cpp"

    ``` C++
    #include "hardware_map.hpp"

    int main()
    {
      auto init_result = initialize_target();

      if (!init_result) {
        hal::halt();
      }

      auto hardware_map = init_result.value();
      auto is_finished = application(hardware_map);

      if (!is_finished) {
        hardware_map.reset();
      } else {
        hal::halt();
      }

      return 0;
    }

    namespace boost {
    void throw_exception([[maybe_unused]] std::exception const& p_error)
    {
      std::abort();
    }
    }  // namespace boost
    ```

=== "lpc40.cpp"

    ``` C++
    #include <libhal-armcortex/dwt_counter.hpp>
    #include <libhal-armcortex/startup.hpp>
    #include <libhal-armcortex/system_control.hpp>

    #include <libhal-lpc40/output_pin.hpp>

    #include "hardware_map.hpp"

    hal::result<starter::hardware_map> initialize_target()
    {
      hal::cortex_m::initialize_data_section();
      hal::cortex_m::system_control::initialize_floating_point_unit();

      auto& led = HAL_CHECK((hal::lpc40xx::output_pin::get<1, 18>()));

      return starter::hardware_map{
        .led = &led,
        .steady_clock = &counter,
        .reset = []() { hal::cortex_m::system_control::reset(); },
      };
    }
    ```

=== "stm32f10.cpp"

    ``` C++
    #include <libhal-armcortex/dwt_counter.hpp>
    #include <libhal-armcortex/startup.hpp>
    #include <libhal-armcortex/system_control.hpp>

    #include <libhal-stm32f10x/output_pin.hpp>

    #include "hardware_map.hpp"

    hal::result<starter::hardware_map> initialize_target()
    {
      hal::cortex_m::initialize_data_section();

      auto& led = HAL_CHECK((hal::stm32f10x::output_pin::get<'C', 13>()));

      return starter::hardware_map{
        .led = &led,
        .steady_clock = &counter,
        .reset = []() { hal::cortex_m::system_control::reset(); },
      };
    }
    ```

## Support

- [libhal discord](https://discord.gg/p5A6vzv8tm) server (preferred)
- [GitHub issues](https://github.com/libhal/libhal/issues)
- [Cpplang Slack](https://cpplang.slack.com/) #embedded channel

## Distribution

- [Conan](https://conan.io/center/libhal) package manager
- Source code is hosted on [GitHub](https://github.com/libhal/libahl)
- vcpkg (coming soon) package manager

There are plans to support to more C++ package managers
