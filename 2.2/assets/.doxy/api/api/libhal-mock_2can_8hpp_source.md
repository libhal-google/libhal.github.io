

# File can.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-mock**](dir_24679974995b72317f1fb09ac5dd2fb9.md) **>** [**can.hpp**](libhal-mock_2can_8hpp.md)

[Go to the documentation of this file](libhal-mock_2can_8hpp.md)

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

#include "testing.hpp"
#include <libhal/can.hpp>
#include <libhal/functional.hpp>

namespace hal::mock {
struct can : public hal::can
{
  void reset()
  {
    spy_configure.reset();
    spy_send.reset();
    spy_on_receive.reset();
    spy_bus_on.reset();
  }

  spy_handler<settings> spy_configure;
  spy_handler<message_t> spy_send;
  spy_handler<bool> spy_bus_on;
  spy_handler<hal::callback<handler>> spy_on_receive;

private:
  status driver_configure(const settings& p_settings) override
  {
    return spy_configure.record(p_settings);
  }

  status driver_bus_on() override
  {
    return spy_bus_on.record(true);
  }

  result<send_t> driver_send(const message_t& p_message) override
  {
    HAL_CHECK(spy_send.record(p_message));
    return send_t{};
  }

  void driver_on_receive(hal::callback<handler> p_handler) override
  {
    (void)spy_on_receive.record(p_handler);
  }
};
}  // namespace hal::mock

template<class CharT, class Traits>
std::basic_ostream<CharT, Traits>& operator<<(
  std::basic_ostream<CharT, Traits>& p_ostream,
  const hal::can::message_t& p_message)
{
  p_ostream << "{ id: " << std::hex << "0x" << p_message.id;
  p_ostream << ", length: " << std::dec << unsigned{ p_message.length };
  p_ostream << ", is_remote_request: " << p_message.is_remote_request;
  p_ostream << ", payload = [";
  for (const auto& element : p_message.payload) {
    p_ostream << std::hex << "0x" << unsigned{ element } << ", ";
  }
  p_ostream << "] }";
  return p_ostream;
}

```

