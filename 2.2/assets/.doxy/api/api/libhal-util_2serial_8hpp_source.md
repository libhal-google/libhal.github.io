

# File serial.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-util**](dir_5e94bd3e75b6b11eff60149e0bc5664b.md) **>** [**serial.hpp**](libhal-util_2serial_8hpp.md)

[Go to the documentation of this file](libhal-util_2serial_8hpp.md)

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

#include <cstdio>
#include <span>
#include <string_view>

#include <libhal/error.hpp>
#include <libhal/serial.hpp>
#include <libhal/timeout.hpp>
#include <libhal/units.hpp>

#include "as_bytes.hpp"
#include "comparison.hpp"
#include "math.hpp"

namespace hal {

[[nodiscard]] constexpr auto operator==(const serial::settings& p_lhs,
                                        const serial::settings& p_rhs)
{
  return equals(p_lhs.baud_rate, p_rhs.baud_rate) &&
         p_lhs.parity == p_rhs.parity && p_lhs.stop == p_rhs.stop;
}
[[nodiscard]] inline result<serial::write_t> write_partial(
  serial& p_serial,
  std::span<const hal::byte> p_data_out)
{
  return p_serial.write(p_data_out);
}

[[nodiscard]] inline status write(serial& p_serial,
                                  std::span<const hal::byte> p_data_out)
{
  auto remaining = p_data_out;

  while (remaining.size() != 0) {
    auto write_length = HAL_CHECK(p_serial.write(remaining)).data.size();
    remaining = remaining.subspan(write_length);
  }

  return success();
}

[[nodiscard]] inline status write(serial& p_serial, std::string_view p_data_out)
{
  return write(p_serial, as_bytes(p_data_out));
}

[[nodiscard]] inline result<std::span<hal::byte>>
read(serial& p_serial, std::span<hal::byte> p_data_in, timeout auto p_timeout)
{
  auto remaining = p_data_in;

  while (remaining.size() != 0) {
    auto read_length = HAL_CHECK(p_serial.read(remaining)).data.size();
    remaining = remaining.subspan(read_length);
    HAL_CHECK(p_timeout());
  }

  return p_data_in;
}

template<size_t BytesToRead>
[[nodiscard]] result<std::array<hal::byte, BytesToRead>> read(
  serial& p_serial,
  timeout auto p_timeout)
{
  std::array<hal::byte, BytesToRead> buffer;
  HAL_CHECK(read(p_serial, buffer, p_timeout));
  return buffer;
}

[[nodiscard]] inline result<std::span<hal::byte>> write_then_read(
  serial& p_serial,
  std::span<const hal::byte> p_data_out,
  std::span<hal::byte> p_data_in,
  timeout auto p_timeout)
{
  HAL_CHECK(write_partial(p_serial, p_data_out));
  return read(p_serial, p_data_in, p_timeout);
}

template<size_t BytesToRead>
[[nodiscard]] result<std::array<hal::byte, BytesToRead>> write_then_read(
  serial& p_serial,
  std::span<const hal::byte> p_data_out,
  timeout auto p_timeout)
{
  std::array<hal::byte, BytesToRead> buffer;
  HAL_CHECK(write_then_read(p_serial, p_data_out, buffer, p_timeout));
  return buffer;
}

template<typename DataArray>
void print(serial& p_serial, DataArray&& p_data)
{
  (void)hal::write(p_serial, p_data);
}

template<size_t BufferSize, typename... Parameters>
void print(serial& p_serial, const char* p_format, Parameters... p_parameters)
{
  static_assert(BufferSize > 2);

  std::array<char, BufferSize> buffer{};
  constexpr int unterminated_max_string_size = static_cast<int>(BufferSize) - 1;

  int length =
    std::snprintf(buffer.data(), buffer.size(), p_format, p_parameters...);

  if (length > unterminated_max_string_size) {
    // Print out what was able to be written to the buffer
    length = unterminated_max_string_size;
  }

  (void)hal::write(p_serial, std::string_view(buffer.data(), length));
}
}  // namespace hal

```

