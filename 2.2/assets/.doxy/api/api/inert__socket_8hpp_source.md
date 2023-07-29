

# File inert\_socket.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-soft**](dir_d4bad6877cf31bc2d39b696d7a305013.md) **>** [**incomplete\_drivers**](dir_6341654c6178e3c825562b2d2d27fb31.md) **>** [**inert\_socket.hpp**](inert__socket_8hpp.md)

[Go to the documentation of this file](inert__socket_8hpp.md)

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

#include <libhal/socket.hpp>

namespace hal {
class inert_socket : public hal::socket
{
public:
  static result<inert_socket> create(write_t p_write_data, read_t p_read_data)
  {
    return inert_socket(p_write_data, p_read_data);
  }

private:
  constexpr inert_socket(write_t p_write_data, read_t p_read_data)
    : m_write_data(p_write_data)
    , m_read_data(p_read_data)
  {
  }

  hal::result<write_t> driver_write(
    [[maybe_unused]] std::span<const hal::byte> p_data,
    [[maybe_unused]] hal::function_ref<hal::timeout_function> p_timeout)
  {
    return m_write_data;
  };

  hal::result<read_t> driver_read([[maybe_unused]] std::span<hal::byte> p_data)
  {
    return m_read_data;
  };

  write_t m_write_data;
  read_t m_read_data;
};
}  // namespace hal

```

