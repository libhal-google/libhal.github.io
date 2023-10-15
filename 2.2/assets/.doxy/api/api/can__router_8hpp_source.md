

# File can\_router.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-canrouter**](dir_2c64ce4d64c558a00b906bdd8bb48b1b.md) **>** [**can\_router.hpp**](can__router_8hpp.md)

[Go to the documentation of this file](can__router_8hpp.md)

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

#include <libhal-util/static_list.hpp>
#include <libhal/can.hpp>

namespace hal {
class can_router
{
public:
  static constexpr auto noop =
    []([[maybe_unused]] const can::message_t& p_message) {};

  using message_handler = hal::callback<hal::can::handler>;

  struct route
  {
    hal::can::id_t id = 0;
    message_handler handler = noop;
  };

  using route_item = static_list<route>::item;

  static result<can_router> create(hal::can& p_can);

  explicit can_router(hal::can& p_can);

  can_router() = delete;
  can_router(can_router& p_other) = delete;
  can_router& operator=(can_router& p_other) = delete;
  can_router& operator=(can_router&& p_other) noexcept;
  can_router(can_router&& p_other) noexcept;
  ~can_router();

  [[nodiscard]] hal::can& bus();

  [[nodiscard]] static_list<route>::item add_message_callback(
    hal::can::id_t p_id);

  [[nodiscard]] static_list<route>::item add_message_callback(
    hal::can::id_t p_id,
    message_handler p_handler);

  [[nodiscard]] const static_list<route>& handlers();

  void operator()(const can::message_t& p_message);

private:
  static_list<route> m_handlers{};
  hal::can* m_can = nullptr;
};
}  // namespace hal

```

