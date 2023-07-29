

# File inert\_serial.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-soft**](dir_d4bad6877cf31bc2d39b696d7a305013.md) **>** [**incomplete\_drivers**](dir_6341654c6178e3c825562b2d2d27fb31.md) **>** [**inert\_serial.hpp**](inert__serial_8hpp.md)

[Go to the documentation of this file](inert__serial_8hpp.md)

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

#include <libhal/serial.hpp>

namespace hal {
class inert_serial : public hal::serial
{
public:
  static result<inert_serial> create(write_t p_write_data, read_t p_read_data)
  {
    return inert_serial(p_write_data, p_read_data);
  }

private:
  constexpr inert_serial(write_t p_write_data, read_t p_read_data)
    : m_write_data(p_write_data)
    , m_read_data(p_read_data)
  {
  }

  status driver_configure([[maybe_unused]] const settings& p_settings)
  {
    return hal::success();
  };

  result<write_t> driver_write(
    [[maybe_unused]] std::span<const hal::byte> p_data)
  {
    return m_write_data;
  };

  result<read_t> driver_read([[maybe_unused]] std::span<hal::byte> p_data)
  {
    return m_read_data;
  };

  result<flush_t> driver_flush()
  {
    return flush_t{};
  };

  write_t m_write_data;
  read_t m_read_data;
};
}  // namespace hal

```

