

# File clock.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-lpc40**](dir_2fff134b595a3a874b0307aab0eea726.md) **>** [**clock.hpp**](libhal-lpc40_2clock_8hpp.md)

[Go to the documentation of this file](libhal-lpc40_2clock_8hpp.md)

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

#include <array>
#include <cstdint>

#include <libhal-util/bit.hpp>
#include <libhal-util/enum.hpp>
#include <libhal/error.hpp>
#include <libhal/units.hpp>

#include "constants.hpp"

namespace hal::lpc40 {
class clock
{
public:
  static constexpr hertz irc_frequency = 12'000'000.0f;
  static constexpr uint32_t default_peripheral_divider = 4;

  enum class usb_clock_source : uint8_t
  {
    system_clock = 0b00,
    pll0 = 0b01,
    pll1 = 0b10,
  };

  enum class usb_divider : uint8_t
  {
    divide_by1 = 0,
    divide_by2,
    divide_by3,
    divide_by4,
  };

  enum class spifi_clock_source : uint8_t
  {
    system_clock = 0b00,
    pll0 = 0b01,
    pll1 = 0b10,
  };

  enum class flash_configuration : uint32_t
  {
    clock1 = 0b0000 << 12,
    clock2 = 0b0001 << 12,
    clock3 = 0b0010 << 12,
    clock4 = 0b0011 << 12,
    clock5 = 0b0100 << 12,
    clock6 = 0b0101 << 12,
  };

  struct configuration
  {
    hertz oscillator_frequency = irc_frequency;
    bool use_external_oscillator = false;
    struct pll_t
    {
      bool enabled = false;
      uint8_t multiply = 1;
    };
    std::array<pll_t, 2> pll = {};
    struct cpu_t
    {
      bool use_pll0 = false;
      uint8_t divider = 1;
    };
    cpu_t cpu = {};

    struct usb_t
    {
      usb_clock_source clock = usb_clock_source::system_clock;
      usb_divider divider = usb_divider::divide_by1;
    };
    usb_t usb = {};

    struct spifi_t
    {
      spifi_clock_source clock = spifi_clock_source::system_clock;
      uint8_t divider = 1;
    };
    spifi_t spifi = {};

    uint8_t peripheral_divider = 4;

    bool emc_half_cpu_divider = false;
  };

  static clock& get();

  static status maximum(hertz p_external_crystal_frequency);

  hertz get_frequency(peripheral p_peripheral);

  configuration& config();

  [[nodiscard]] status reconfigure_clocks();

private:
  constexpr clock()
  {
  }

  configuration m_config{};
  hertz m_cpu_clock_rate = irc_frequency;
  hertz m_emc_clock_rate = irc_frequency;
  hertz m_usb_clock_rate = irc_frequency;
  hertz m_spifi_clock_source_rate = irc_frequency;
  hertz m_peripheral_clock_rate = irc_frequency / default_peripheral_divider;
};
}  // namespace hal::lpc40

```

