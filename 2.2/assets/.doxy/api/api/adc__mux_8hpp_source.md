

# File adc\_mux.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-soft**](dir_d4bad6877cf31bc2d39b696d7a305013.md) **>** [**adc\_mux.hpp**](adc__mux_8hpp.md)

[Go to the documentation of this file](adc__mux_8hpp.md)

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
#include <span>

#include <libhal/adc.hpp>
#include <libhal/output_pin.hpp>
#include <libhal/steady_clock.hpp>

namespace hal::soft {
class adc_multiplexer;
class adc_mux_pin;
}  // namespace hal::soft

namespace hal::make {
result<hal::soft::adc_mux_pin> adc(hal::soft::adc_multiplexer& p_multiplexer,
                                   std::uint8_t p_channel);
}  // namespace hal::make

namespace hal::soft {
class adc_multiplexer
{
public:
  static adc_multiplexer create(std::span<hal::output_pin*> p_signal_pins,
                                hal::adc& p_source_pin,
                                hal::steady_clock& p_clock);

  hal::result<hal::adc::read_t> read_channel(std::uint16_t p_mux_port);

  int get_max_channel();

private:
  adc_multiplexer(std::span<output_pin*> p_signal_pins,
                  hal::adc& p_source_pin,
                  hal::steady_clock& p_clock);

private:
  std::span<output_pin*> m_signal_pins;
  hal::adc* m_source_pin;
  hal::steady_clock* m_clock;
};

class adc_mux_pin : public hal::adc
{
  friend hal::result<adc_mux_pin>(
    ::hal::make::adc(hal::soft::adc_multiplexer& p_multiplexer,
                     std::uint8_t p_channel));

private:
  adc_mux_pin(adc_multiplexer& p_mux, std::uint8_t p_mux_port);
  hal::result<read_t> driver_read() override;

  adc_multiplexer* m_mux;
  std::uint8_t m_mux_port;
};
}  // namespace hal::soft

```

