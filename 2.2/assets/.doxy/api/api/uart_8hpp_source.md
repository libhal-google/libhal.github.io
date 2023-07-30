

# File uart.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-lpc40**](dir_2fff134b595a3a874b0307aab0eea726.md) **>** [**uart.hpp**](uart_8hpp.md)

[Go to the documentation of this file](uart_8hpp.md)

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
#include <nonstd/ring_span.hpp>

#include "constants.hpp"
#include "pin.hpp"

namespace hal::lpc40 {
class uart : public hal::serial
{
public:
  struct port
  {
    peripheral id;
    irq irq_number;
    pin tx;
    pin rx;
    std::uint8_t tx_function;
    std::uint8_t rx_function;
  };

  static result<uart> get(std::uint8_t p_port_number,
                          std::span<hal::byte> p_receive_buffer,
                          serial::settings p_settings = {});

  static result<uart> construct_custom(
    uart::port p_port,
    std::span<hal::byte> p_receive_working_buffer,
    serial::settings p_settings = {});

  uart(uart& p_other) = delete;
  uart& operator=(uart& p_other) = delete;
  uart(uart&& p_other);
  uart& operator=(uart&& p_other);

private:
  explicit uart(const port& p_port, std::span<hal::byte> p_receive_buffer);

  status driver_configure(const settings& p_settings) override;
  result<write_t> driver_write(std::span<const hal::byte> p_data) override;
  result<read_t> driver_read(std::span<hal::byte> p_data) override;
  result<flush_t> driver_flush() override;

  void setup_receive_interrupt();
  void interrupt_handler();

  port m_port;
  nonstd::ring_span<hal::byte> m_receive_buffer;
};
}  // namespace hal::lpc40

```

