

# File can.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-lpc40**](dir_2fff134b595a3a874b0307aab0eea726.md) **>** [**can.hpp**](libhal-lpc40_2can_8hpp.md)

[Go to the documentation of this file](libhal-lpc40_2can_8hpp.md)

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

#include <cstdint>

#include <libhal/can.hpp>

#include "constants.hpp"
#include "pin.hpp"

namespace hal::lpc40 {
class can final : public hal::can
{
public:
  struct port
  {
    pin td;
    std::uint8_t td_function_code;
    pin rd;
    std::uint8_t rd_function_code;
    peripheral id;
    irq irq_number;
    std::uint8_t sync_jump = 0;
    std::uint8_t tseg1 = 6;
    std::uint8_t tseg2 = 1;
  };

  static result<can> get(std::uint8_t p_port,
                         const can::settings& p_settings = {});

  can(can& p_other) = delete;
  can& operator=(can& p_other) = delete;
  can(can&& p_other) noexcept;
  can& operator=(can&& p_other) noexcept;
  ~can();

private:
  can(port p_port);

  status driver_configure(const settings& p_settings) override;
  status driver_bus_on() override;
  result<send_t> driver_send(const message_t& p_message) override;
  void driver_on_receive(
    hal::callback<can::handler> p_receive_handler) override;

  port m_port;
  hal::callback<can::handler> m_receive_handler;
  bool m_moved = false;
};
}  // namespace hal::lpc40

```

