

# File i2c.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-util**](dir_5e94bd3e75b6b11eff60149e0bc5664b.md) **>** [**i2c.hpp**](libhal-util_2i2c_8hpp.md)

[Go to the documentation of this file](libhal-util_2i2c_8hpp.md)

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

#include <functional>

#include <libhal/error.hpp>
#include <libhal/i2c.hpp>
#include <libhal/units.hpp>

#include "enum.hpp"
#include "math.hpp"

namespace hal {
[[nodiscard]] constexpr auto operator==(const i2c::settings& p_lhs,
                                        const i2c::settings& p_rhs)
{
  return equals(p_lhs.clock_rate, p_rhs.clock_rate);
}

[[nodiscard]] inline hal::result<hal::i2c::transaction_t> write(
  i2c& p_i2c,
  hal::byte p_address,
  std::span<const hal::byte> p_data_out,
  timeout auto p_timeout)
{
  return p_i2c.transaction(
    p_address, p_data_out, std::span<hal::byte>{}, p_timeout);
}

[[nodiscard]] inline hal::result<hal::i2c::transaction_t>
write(i2c& p_i2c, hal::byte p_address, std::span<const hal::byte> p_data_out)
{
  return write(p_i2c, p_address, p_data_out, hal::never_timeout());
}

[[nodiscard]] inline hal::result<hal::i2c::transaction_t> read(
  i2c& p_i2c,
  hal::byte p_address,
  std::span<hal::byte> p_data_in,
  timeout auto p_timeout)
{
  return p_i2c.transaction(
    p_address, std::span<hal::byte>{}, p_data_in, p_timeout);
}

[[nodiscard]] inline hal::result<hal::i2c::transaction_t>
read(i2c& p_i2c, hal::byte p_address, std::span<hal::byte> p_data_in)
{
  return read(p_i2c, p_address, p_data_in, hal::never_timeout());
}

template<size_t BytesToRead>
[[nodiscard]] result<std::array<hal::byte, BytesToRead>>
read(i2c& p_i2c, hal::byte p_address, timeout auto p_timeout)
{
  std::array<hal::byte, BytesToRead> buffer;
  HAL_CHECK(read(p_i2c, p_address, buffer, p_timeout));
  return buffer;
}

template<size_t BytesToRead>
[[nodiscard]] result<std::array<hal::byte, BytesToRead>> read(
  i2c& p_i2c,
  hal::byte p_address)
{
  return read<BytesToRead>(p_i2c, p_address, hal::never_timeout());
}

[[nodiscard]] inline hal::result<hal::i2c::transaction_t> write_then_read(
  i2c& p_i2c,
  hal::byte p_address,
  std::span<const hal::byte> p_data_out,
  std::span<hal::byte> p_data_in,
  timeout auto p_timeout = hal::never_timeout())
{
  return p_i2c.transaction(p_address, p_data_out, p_data_in, p_timeout);
}

[[nodiscard]] inline hal::result<hal::i2c::transaction_t> write_then_read(
  i2c& p_i2c,
  hal::byte p_address,
  std::span<const hal::byte> p_data_out,
  std::span<hal::byte> p_data_in)
{
  return write_then_read(
    p_i2c, p_address, p_data_out, p_data_in, hal::never_timeout());
}

template<size_t BytesToRead>
[[nodiscard]] result<std::array<hal::byte, BytesToRead>> write_then_read(
  i2c& p_i2c,
  hal::byte p_address,
  std::span<const hal::byte> p_data_out,
  timeout auto p_timeout)
{
  std::array<hal::byte, BytesToRead> buffer;
  HAL_CHECK(write_then_read(p_i2c, p_address, p_data_out, buffer, p_timeout));
  return buffer;
}

template<size_t BytesToRead>
[[nodiscard]] result<std::array<hal::byte, BytesToRead>> write_then_read(
  i2c& p_i2c,
  hal::byte p_address,
  std::span<const hal::byte> p_data_out)
{
  return write_then_read<BytesToRead>(
    p_i2c, p_address, p_data_out, hal::never_timeout());
}

[[nodiscard]] inline hal::result<hal::i2c::transaction_t> probe(
  i2c& p_i2c,
  hal::byte p_address)
{
  // p_data_in: empty placeholder for transcation's data_in
  std::array<hal::byte, 1> data_in;

  // p_timeout: no timeout placeholder for transaction's p_timeout
  timeout auto timeout = hal::never_timeout();

  return p_i2c.transaction(p_address, std::span<hal::byte>{}, data_in, timeout);
}

enum class i2c_operation
{
  write = 0,
  read = 1,
};

[[nodiscard]] inline hal::byte to_8_bit_address(
  hal::byte p_address,
  i2c_operation p_operation) noexcept
{
  hal::byte v8bit_address = static_cast<hal::byte>(p_address << 1);
  v8bit_address |= hal::value(p_operation);
  return v8bit_address;
}

}  // namespace hal

```

