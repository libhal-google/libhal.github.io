

# File pin.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-lpc40**](dir_2fff134b595a3a874b0307aab0eea726.md) **>** [**pin.hpp**](libhal-lpc40_2pin_8hpp.md)

[Go to the documentation of this file](libhal-lpc40_2pin_8hpp.md)

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

#include <cstdint>

#include <libhal/units.hpp>

namespace hal::lpc40 {
class pin
{
public:
  constexpr pin(std::uint8_t p_port, std::uint8_t p_pin)
    : m_port(p_port)
    , m_pin(p_pin)
  {
  }

  constexpr pin() = default;

  const pin& function(uint8_t p_function_code) const;

  const pin& resistor(hal::pin_resistor p_resistor) const;

  const pin& hysteresis(bool p_enable) const;

  const pin& input_invert(bool p_enable) const;

  const pin& analog(bool p_enable) const;

  const pin& digital_filter(bool p_enable) const;

  const pin& highspeed_i2c(bool p_enable = true) const;

  const pin& high_slew_rate(bool p_enable = true) const;

  const pin& i2c_high_current(bool p_enable = true) const;

  const pin& open_drain(bool p_enable = true) const;

  const pin& dac(bool p_enable = true) const;

private:
  std::uint8_t m_port{};
  std::uint8_t m_pin{};
};
}  // namespace hal::lpc40

```

