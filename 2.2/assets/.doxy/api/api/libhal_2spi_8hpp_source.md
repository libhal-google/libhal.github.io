

# File spi.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal**](dir_c21661262b37aa135a14febc024e67d7.md) **>** [**spi.hpp**](libhal_2spi_8hpp.md)

[Go to the documentation of this file](libhal_2spi_8hpp.md)

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

#include <cstddef>
#include <cstdint>
#include <span>

#include "error.hpp"
#include "units.hpp"

namespace hal {
class spi
{
public:
  struct settings
  {
    hertz clock_rate = 100.0_kHz;
    bool clock_idles_high = false;
    bool data_valid_on_trailing_edge = false;
  };

  struct transfer_t
  {};

  static constexpr hal::byte default_filler = hal::byte{ 0xFF };

  [[nodiscard]] status configure(const settings& p_settings)
  {
    return driver_configure(p_settings);
  }
  [[nodiscard]] result<transfer_t> transfer(
    std::span<const hal::byte> p_data_out,
    std::span<hal::byte> p_data_in,
    hal::byte p_filler = default_filler)
  {
    return driver_transfer(p_data_out, p_data_in, p_filler);
  }

  virtual ~spi() = default;

private:
  virtual status driver_configure(const settings& p_settings) = 0;
  virtual result<transfer_t> driver_transfer(
    std::span<const hal::byte> p_data_out,
    std::span<hal::byte> p_data_in,
    hal::byte p_filler) = 0;
};
}  // namespace hal

```

