

# File spi.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-util**](dir_5e94bd3e75b6b11eff60149e0bc5664b.md) **>** [**spi.hpp**](libhal-util_2spi_8hpp.md)

[Go to the documentation of this file](libhal-util_2spi_8hpp.md)

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

#include <span>

#include <libhal/error.hpp>
#include <libhal/spi.hpp>
#include <libhal/units.hpp>

namespace hal {
[[nodiscard]] constexpr auto operator==(const spi::settings& p_lhs,
                                        const spi::settings& p_rhs)
{
  return p_lhs.clock_idles_high == p_rhs.clock_idles_high &&
         p_lhs.clock_rate == p_rhs.clock_rate &&
         p_lhs.data_valid_on_trailing_edge == p_rhs.data_valid_on_trailing_edge;
}

[[nodiscard]] inline result<hal::spi::transfer_t> write(
  spi& p_spi,
  std::span<const hal::byte> p_data_out)
{
  return p_spi.transfer(
    p_data_out, std::span<hal::byte>{}, spi::default_filler);
}

[[nodiscard]] inline result<hal::spi::transfer_t> read(
  spi& p_spi,
  std::span<hal::byte> p_data_in,
  hal::byte p_filler = spi::default_filler)
{
  return p_spi.transfer(std::span<hal::byte>{}, p_data_in, p_filler);
}
template<size_t BytesToRead>
[[nodiscard]] result<std::array<hal::byte, BytesToRead>> read(
  spi& p_spi,
  hal::byte p_filler = spi::default_filler)
{
  std::array<hal::byte, BytesToRead> buffer;
  HAL_CHECK(p_spi.transfer(std::span<hal::byte>{}, buffer, p_filler));
  return buffer;
}

[[nodiscard]] inline result<hal::spi::transfer_t> write_then_read(
  spi& p_spi,
  std::span<const hal::byte> p_data_out,
  std::span<hal::byte> p_data_in,
  hal::byte p_filler = spi::default_filler)
{
  HAL_CHECK(write(p_spi, p_data_out));
  HAL_CHECK(read(p_spi, p_data_in, p_filler));
  return {};
}

template<size_t BytesToRead>
[[nodiscard]] result<std::array<hal::byte, BytesToRead>> write_then_read(
  spi& p_spi,
  std::span<const hal::byte> p_data_out,
  hal::byte p_filler = spi::default_filler)
{
  HAL_CHECK(write(p_spi, p_data_out));
  return read<BytesToRead>(p_spi, p_filler);
}
}  // namespace hal

```

