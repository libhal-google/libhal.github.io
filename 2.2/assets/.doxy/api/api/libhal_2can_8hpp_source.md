

# File can.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal**](dir_c21661262b37aa135a14febc024e67d7.md) **>** [**can.hpp**](libhal_2can_8hpp.md)

[Go to the documentation of this file](libhal_2can_8hpp.md)

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
#include <cstdint>

#include "error.hpp"
#include "functional.hpp"
#include "units.hpp"

namespace hal {
class can
{
public:
  using id_t = uint32_t;

  struct settings
  {
    hertz baud_rate = 100.0_kHz;

    static constexpr std::uint8_t sync_segment = 1;

    std::uint8_t propagation_delay = 3;

    std::uint8_t phase_segment1 = 3;

    std::uint8_t phase_segment2 = 3;

    std::uint8_t synchronization_jump_width = 1;
  };

  struct message_t
  {
    id_t id;
    std::array<hal::byte, 8> payload{};
    uint8_t length = 0;
    bool is_remote_request = false;
  };

  using handler = void(const message_t& p_message);

  struct send_t
  {};

  [[nodiscard]] status configure(const settings& p_settings)
  {
    return driver_configure(p_settings);
  }

  [[nodiscard]] status bus_on()
  {
    return driver_bus_on();
  }

  [[nodiscard]] result<send_t> send(const message_t& p_message)
  {
    return driver_send(p_message);
  }

  void on_receive(hal::callback<handler> p_handler)
  {
    return driver_on_receive(p_handler);
  }

  virtual ~can() = default;

private:
  virtual status driver_configure(const settings& p_settings) = 0;
  virtual status driver_bus_on() = 0;
  virtual result<send_t> driver_send(const message_t& p_message) = 0;
  virtual void driver_on_receive(hal::callback<handler> p_handler) = 0;
};
}  // namespace hal

```

