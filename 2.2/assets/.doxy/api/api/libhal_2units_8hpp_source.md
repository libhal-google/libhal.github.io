

# File units.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal**](dir_c21661262b37aa135a14febc024e67d7.md) **>** [**units.hpp**](libhal_2units_8hpp.md)

[Go to the documentation of this file](libhal_2units_8hpp.md)

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

#include <chrono>
#include <cstdint>

#include "error.hpp"

namespace hal {
using time_duration = std::chrono::nanoseconds;

using byte = std::uint8_t;

using hertz = float;

using g_force = float;

using ampere = float;

using volts = float;

using celsius = float;

using rpm = float;

using meters = float;

using degrees = float;

using gauss = float;

enum class pin_resistor
{
  none = 0,
  pull_down,
  pull_up,
};

namespace literals {

// =============================================================================
// Frequency
// =============================================================================

[[nodiscard]] consteval hertz operator""_Hz(long double p_value) noexcept
{
  return static_cast<float>(p_value);
}

[[nodiscard]] consteval hertz operator""_kHz(long double p_value) noexcept
{
  return static_cast<float>(p_value * std::kilo::num);
}

[[nodiscard]] consteval hertz operator""_MHz(long double p_value) noexcept
{
  return static_cast<float>(p_value * std::mega::num);
}

[[nodiscard]] consteval hertz operator""_GHz(long double p_value) noexcept
{
  return static_cast<float>(p_value * std::giga::num);
}

// =============================================================================
// G force
// =============================================================================

[[nodiscard]] consteval g_force operator""_g(long double p_value) noexcept
{
  return static_cast<float>(p_value);
}

// =============================================================================
// Ampere
// =============================================================================

[[nodiscard]] consteval ampere operator""_kA(long double p_value) noexcept
{
  return static_cast<float>(p_value * std::kilo::num);
}

[[nodiscard]] consteval ampere operator""_A(long double p_value) noexcept
{
  return static_cast<float>(p_value);
}

[[nodiscard]] consteval ampere operator""_mA(long double p_value) noexcept
{
  return static_cast<float>(p_value / std::milli::den);
}

[[nodiscard]] consteval ampere operator""_uA(long double p_value) noexcept
{
  return static_cast<float>(p_value / std::micro::den);
}

// =============================================================================
// Voltage
// =============================================================================

[[nodiscard]] consteval volts operator""_kV(long double p_value) noexcept
{
  return static_cast<float>(p_value * std::kilo::num);
}

[[nodiscard]] consteval volts operator""_V(long double p_value) noexcept
{
  return static_cast<float>(p_value);
}

[[nodiscard]] consteval volts operator""_mV(long double p_value) noexcept
{
  return static_cast<float>(p_value / std::milli::den);
}

[[nodiscard]] consteval volts operator""_uV(long double p_value) noexcept
{
  return static_cast<float>(p_value / std::micro::den);
}

// =============================================================================
// Temperature
// =============================================================================

[[nodiscard]] consteval celsius operator""_C(long double p_value) noexcept
{
  return static_cast<float>(p_value);
}

[[nodiscard]] consteval celsius operator""_F(long double p_value) noexcept
{
  p_value = (p_value - 32.0L) * (5.0L / 9.0L);
  return static_cast<float>(p_value);
}

[[nodiscard]] consteval celsius operator""_K(long double p_value) noexcept
{
  return static_cast<float>(p_value - 273.15L);
}

// =============================================================================
// Rotational Velocity
// =============================================================================

[[nodiscard]] consteval rpm operator""_rpm(long double p_value) noexcept
{
  return static_cast<float>(p_value);
}

[[nodiscard]] consteval rpm operator""_deg_per_sec(long double p_value) noexcept
{
  return static_cast<float>(p_value / 6.0L);
}

// =============================================================================
// Angle
// =============================================================================

[[nodiscard]] consteval degrees operator""_deg(long double p_value) noexcept
{
  return static_cast<float>(p_value);
}

// =============================================================================
// Lengths
// =============================================================================

[[nodiscard]] consteval meters operator""_um(long double p_value) noexcept
{
  return static_cast<float>(p_value / std::micro::den);
}

[[nodiscard]] consteval meters operator""_mm(long double p_value) noexcept
{
  return static_cast<float>(p_value / std::milli::den);
}

[[nodiscard]] consteval meters operator""_m(long double p_value) noexcept
{
  return static_cast<float>(p_value);
}

[[nodiscard]] consteval meters operator""_km(long double p_value) noexcept
{
  return static_cast<float>(p_value * std::kilo::num);
}

[[nodiscard]] consteval meters operator""_inch(long double p_value) noexcept
{
  constexpr long double inch_to_meter = 0.0254L;
  return static_cast<float>(p_value * inch_to_meter);
}

[[nodiscard]] consteval meters operator""_yards(long double p_value) noexcept
{
  constexpr long double yard_to_meter = 0.9144L;
  return static_cast<float>(p_value * yard_to_meter);
}

[[nodiscard]] consteval meters operator""_miles(long double p_value) noexcept
{
  constexpr long double miles_to_meter = 1609.344L;
  return static_cast<float>(p_value * miles_to_meter);
}
}  // namespace literals

// Make user defined namespaces available to any library within the hal
// namespace
using namespace literals;
}  // namespace hal

```

