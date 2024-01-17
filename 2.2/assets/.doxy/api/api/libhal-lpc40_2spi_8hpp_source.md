

# File spi.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-lpc40**](dir_2fff134b595a3a874b0307aab0eea726.md) **>** [**spi.hpp**](libhal-lpc40_2spi_8hpp.md)

[Go to the documentation of this file](libhal-lpc40_2spi_8hpp.md)

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

#include <atomic>
#include <cstdint>
#include <span>

#include <libhal/spi.hpp>

#include "constants.hpp"
#include "pin.hpp"

namespace hal::lpc40 {
class spi : public hal::spi
{
public:
  struct bus_info
  {
    peripheral peripheral_id;
    pin clock;
    pin data_out;
    pin data_in;
    std::uint8_t clock_function;
    std::uint8_t data_out_function;
    std::uint8_t data_in_function;
  };

  static result<spi> get(std::uint8_t p_bus,
                         const spi::settings& p_settings = {});

  spi(spi& p_other) = delete;
  spi& operator=(spi& p_other) = delete;
  spi(spi&& p_other) noexcept;
  spi& operator=(spi&& p_other) noexcept;
  ~spi();

private:
  spi(bus_info p_bus);

  status driver_configure(const settings& p_settings) override;
  result<transfer_t> driver_transfer(std::span<const hal::byte> p_data_out,
                                     std::span<hal::byte> p_data_in,
                                     hal::byte p_filler) override;

  bus_info m_info;
  bool m_moved = false;
};
}  // namespace hal::lpc40

```
