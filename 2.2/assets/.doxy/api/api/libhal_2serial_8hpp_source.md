

# File serial.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal**](dir_c21661262b37aa135a14febc024e67d7.md) **>** [**serial.hpp**](libhal_2serial_8hpp.md)

[Go to the documentation of this file](libhal_2serial_8hpp.md)

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
#include <optional>
#include <span>

#include "error.hpp"
#include "units.hpp"

namespace hal {
class serial
{
public:
  struct settings
  {
    enum class stop_bits : uint8_t
    {
      one = 0,
      two,
    };

    enum class parity : uint8_t
    {
      none = 0,
      odd,
      even,
      forced1,
      forced0,
    };

    hertz baud_rate = 115200.0f;

    stop_bits stop = stop_bits::one;

    parity parity = parity::none;
  };
  struct read_t
  {
    std::span<hal::byte> data;

    size_t available;

    size_t capacity;
  };

  struct write_t
  {
    std::span<const hal::byte> data;
  };

  struct flush_t
  {};

  [[nodiscard]] status configure(const settings& p_settings)
  {
    return driver_configure(p_settings);
  }

  [[nodiscard]] result<write_t> write(std::span<const hal::byte> p_data)
  {
    return driver_write(p_data);
  }

  [[nodiscard]] result<read_t> read(std::span<hal::byte> p_data)
  {
    return driver_read(p_data);
  }
  [[nodiscard]] result<flush_t> flush()
  {
    return driver_flush();
  }

  virtual ~serial() = default;

private:
  virtual status driver_configure(const settings& p_settings) = 0;
  virtual result<write_t> driver_write(std::span<const hal::byte> p_data) = 0;
  virtual result<read_t> driver_read(std::span<hal::byte> p_data) = 0;
  virtual result<flush_t> driver_flush() = 0;
};
}  // namespace hal

```

