

# File clock.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-stm32f1**](dir_382b22576b48b83d585887c4aba4f004.md) **>** [**clock.hpp**](libhal-stm32f1_2clock_8hpp.md)

[Go to the documentation of this file](libhal-stm32f1_2clock_8hpp.md)

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

#include "constants.hpp"

#include <libhal/error.hpp>
#include <libhal/units.hpp>

namespace hal::stm32f1 {

using namespace hal::literals;

constexpr auto internal_low_speed_oscillator = 20.0_kHz;

constexpr auto internal_high_speed_oscillator = 8.0_MHz;

constexpr auto flash_clock = internal_high_speed_oscillator;

constexpr auto watchdog_clock_rate = internal_low_speed_oscillator;

enum class apb_divider : std::uint8_t
{
  divide_by_1 = 0,
  divide_by_2 = 0b100,
  divide_by_4 = 0b101,
  divide_by_8 = 0b110,
  divide_by_16 = 0b111,
};

enum class ahb_divider : std::uint8_t
{
  divide_by_1 = 0,
  divide_by_2 = 0b1000,
  divide_by_4 = 0b1001,
  divide_by_8 = 0b1010,
  divide_by_16 = 0b1011,
  divide_by_64 = 0b1100,
  divide_by_128 = 0b1101,
  divide_by_256 = 0b1110,
  divide_by_512 = 0b1111,
};

enum class adc_divider : std::uint8_t
{
  divide_by_2 = 0b00,
  divide_by_4 = 0b01,
  divide_by_6 = 0b10,
  divide_by_8 = 0b11,
};

enum class system_clock_select : std::uint8_t
{
  high_speed_internal = 0b00,
  high_speed_external = 0b01,
  pll = 0b10,
};

enum class pll_multiply : std::uint8_t
{
  multiply_by_2 = 0b0000,
  multiply_by_3 = 0b0001,
  multiply_by_4 = 0b0010,
  multiply_by_5 = 0b0011,
  multiply_by_6 = 0b0100,
  multiply_by_7 = 0b0101,
  multiply_by_8 = 0b0110,
  multiply_by_9 = 0b0111,
  multiply_by_10 = 0b1000,
  multiply_by_11 = 0b1001,
  multiply_by_12 = 0b1010,
  multiply_by_13 = 0b1011,
  multiply_by_14 = 0b1100,
  multiply_by_15 = 0b1101,
  multiply_by_16 = 0b1110,
};

enum class rtc_source : std::uint8_t
{
  no_clock = 0b00,
  low_speed_internal = 0b01,
  low_speed_external = 0b10,
  high_speed_external_divided_by_128 = 0b11,
};

enum class pll_source : std::uint8_t
{
  high_speed_internal = 0b0,
  high_speed_external = 0b1,
  high_speed_external_divided_by_2 = 0b11,
};

enum class usb_divider : std::uint8_t
{
  divide_by_1 = 1,
  divide_by_1_point_5 = 0,
};

struct clock_tree
{
  hal::hertz high_speed_external = 0.0_MHz;

  hal::hertz low_speed_external = 0.0_MHz;

  struct pll_t
  {
    bool enable = false;
    pll_source source = pll_source::high_speed_internal;
    pll_multiply multiply = pll_multiply::multiply_by_2;
    struct usb_divider_t
    {
      usb_divider divider = usb_divider::divide_by_1_point_5;
    } usb = {};
  } pll = {};

  system_clock_select system_clock = system_clock_select::high_speed_internal;

  struct rtc_t
  {
    bool enable = false;
    rtc_source source = rtc_source::low_speed_internal;
  } rtc = {};

  struct ahb_t
  {
    ahb_divider divider = ahb_divider::divide_by_1;
    struct apb1_t
    {
      apb_divider divider = apb_divider::divide_by_1;
    } apb1 = {};

    struct apb2_t
    {
      apb_divider divider = apb_divider::divide_by_1;
      struct adc_t
      {
        adc_divider divider = adc_divider::divide_by_2;
      } adc = {};
    } apb2 = {};
  } ahb = {};
};

void configure_clocks(clock_tree p_clock_tree);

hal::hertz frequency(peripheral p_id);
}  // namespace hal::stm32f1

```

