

# File micromod.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-micromod**](dir_3d3c07370f433c90fd72adf4c7e715ce.md) **>** [**micromod.hpp**](micromod_8hpp.md)

[Go to the documentation of this file](micromod_8hpp.md)

```C++

// Copyright 2023 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#pragma once

#include <libhal/adc.hpp>
#include <libhal/can.hpp>
#include <libhal/dac.hpp>
#include <libhal/i2c.hpp>
#include <libhal/input_pin.hpp>
#include <libhal/interrupt_pin.hpp>
#include <libhal/output_pin.hpp>
#include <libhal/pwm.hpp>
#include <libhal/serial.hpp>
#include <libhal/spi.hpp>
#include <libhal/steady_clock.hpp>
#include <libhal/timer.hpp>

namespace hal::micromod::v1 {
// =============================================================================
// CORE
// =============================================================================

void initialize_platform();

hal::steady_clock& uptime_clock();

hal::timer& system_timer();

void enter_power_saving_mode();

hal::serial& console(std::span<hal::byte> p_receive_buffer);

[[noreturn]] void reset();

// =============================================================================
// ON CHIP DEVICES
// =============================================================================

hal::output_pin& led();

// =============================================================================
// ANALOG
// =============================================================================

hal::adc& a0();

hal::adc& a1();

hal::adc& battery();

hal::dac& d0();

hal::dac& d1();

hal::pwm& pwm0();

hal::pwm& pwm1();

// =============================================================================
// Serial Communication
// =============================================================================

hal::i2c& i2c();

hal::interrupt_pin& i2c_interrupt_pin();

hal::i2c& i2c1();

hal::spi& spi();

hal::interrupt_pin& spi_interrupt_pin();

hal::spi& spi1();

hal::serial& uart1(std::span<hal::byte> p_receive_buffer);

hal::serial& uart2(std::span<hal::byte> p_receive_buffer);

hal::can& can();

// =============================================================================
// DIGITAL
// =============================================================================

hal::output_pin& output_g0();
hal::output_pin& output_g1();
hal::output_pin& output_g2();
hal::output_pin& output_g3();
hal::output_pin& output_g4();
hal::output_pin& output_g5();
hal::output_pin& output_g6();
hal::output_pin& output_g7();
hal::output_pin& output_g8();
hal::output_pin& output_g9();
hal::output_pin& output_g10();

hal::input_pin& input_g0();
hal::input_pin& input_g1();
hal::input_pin& input_g2();
hal::input_pin& input_g3();
hal::input_pin& input_g4();
hal::input_pin& input_g5();
hal::input_pin& input_g6();
hal::input_pin& input_g7();
hal::input_pin& input_g8();
hal::input_pin& input_g9();
hal::input_pin& input_g10();

hal::interrupt_pin& interrupt_g0();
hal::interrupt_pin& interrupt_g1();
hal::interrupt_pin& interrupt_g2();
hal::interrupt_pin& interrupt_g3();
hal::interrupt_pin& interrupt_g4();
hal::interrupt_pin& interrupt_g5();
hal::interrupt_pin& interrupt_g6();
hal::interrupt_pin& interrupt_g7();
hal::interrupt_pin& interrupt_g8();
hal::interrupt_pin& interrupt_g9();
hal::interrupt_pin& interrupt_g10();
}  // namespace hal::micromod::v1

```

