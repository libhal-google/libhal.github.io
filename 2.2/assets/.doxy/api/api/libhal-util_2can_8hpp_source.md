

# File can.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-util**](dir_5e94bd3e75b6b11eff60149e0bc5664b.md) **>** [**can.hpp**](libhal-util_2can_8hpp.md)

[Go to the documentation of this file](libhal-util_2can_8hpp.md)

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

#include <cmath>
#include <functional>
#include <optional>

#include <libhal/can.hpp>

#include "comparison.hpp"
#include "math.hpp"
#include "static_callable.hpp"
#include "static_list.hpp"

namespace hal {
[[nodiscard]] constexpr auto operator==(const can::settings& p_lhs,
                                        const can::settings& p_rhs)
{
  return equals(p_lhs.baud_rate, p_rhs.baud_rate) &&
         p_lhs.propagation_delay == p_rhs.propagation_delay &&
         p_lhs.phase_segment1 == p_rhs.phase_segment1 &&
         p_lhs.phase_segment2 == p_rhs.phase_segment2 &&
         p_lhs.synchronization_jump_width == p_rhs.synchronization_jump_width;
}

[[nodiscard]] constexpr std::uint16_t bit_width(const can::settings& p_settings)
{
  // The sum of 4x 8-bit numbers can never exceed uint16_t and thus this
  // operation is always safe.
  return static_cast<std::uint16_t>(
    p_settings.sync_segment + p_settings.propagation_delay +
    p_settings.phase_segment1 + p_settings.phase_segment2);
}

[[nodiscard]] constexpr std::optional<std::uint32_t> is_valid(
  const can::settings& p_settings,
  hertz p_operating_frequency)
{
  // 1. propagation_delay, phase_segment1, phase_segment2 and
  //    synchronization_jump_width must be nonzero.
  if (p_settings.propagation_delay == 0 || p_settings.phase_segment1 == 0 ||
      p_settings.phase_segment2 == 0 ||
      p_settings.synchronization_jump_width == 0) {
    return std::nullopt;
  }

  // 2. synchronization_jump_width must be the lesser between phase_segment1
  //    and phase_segment2.
  if (p_settings.synchronization_jump_width > 4 ||
      p_settings.synchronization_jump_width > p_settings.phase_segment1 ||
      p_settings.synchronization_jump_width > p_settings.phase_segment2) {
    return std::nullopt;
  }

  const std::uint16_t bit_width_v = bit_width(p_settings);

  // 3. The total bit width must be equal to or greater than 8 Tq/bit; the
  //    sum of sync_segment, propagation_delay, phase_segment1 and
  //    phase_segment2.
  if (bit_width_v < 8) {
    return std::nullopt;
  }

  // 4. The CAN device's operating frequency must be at least 8 times the
  //    bit rate to give the minimum.
  // 5. The ratio between the CAN device's operating frequency and the bit
  //    width must be close enough to an integer to produce a usable BRP.
  const float bit_width_float = bit_width_v;
  const float scaled_baud = p_settings.baud_rate * bit_width_float;
  const float baud_rate_prescaler = p_operating_frequency / scaled_baud;
  const auto final_prescaler = std::lround(baud_rate_prescaler);

  if (final_prescaler == 0) {
    return std::nullopt;
  }

  return final_prescaler;
}

[[nodiscard]] constexpr auto operator==(const can::message_t& p_lhs,
                                        const can::message_t& p_rhs)
{
  bool payload_equal = p_lhs.payload == p_rhs.payload;
  return payload_equal && p_lhs.id == p_rhs.id &&
         p_lhs.length == p_rhs.length &&
         p_lhs.is_remote_request == p_rhs.is_remote_request;
}

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

  static result<can_router> create(hal::can& p_can)
  {
    can_router new_can_router(p_can);
    return new_can_router;
  }

  explicit can_router(hal::can& p_can)
    : m_can(&p_can)
  {
    (void)m_can->on_receive(std::ref((*this)));
  }

  can_router() = delete;
  can_router(can_router& p_other) = delete;
  can_router& operator=(can_router& p_other) = delete;
  can_router& operator=(can_router&& p_other)
  {
    m_handlers = std::move(p_other.m_handlers);
    m_can = std::move(p_other.m_can);
    (void)m_can->on_receive(std::ref(*this));

    p_other.m_can = nullptr;
    return *this;
  }

  can_router(can_router&& p_other)
  {
    *this = std::move(p_other);
  }

  ~can_router()
  {
    if (m_can) {
      // Assume that if this succeeded in the create factory function, that it
      // will work this time
      (void)m_can->on_receive(noop);
    }
  }

  [[nodiscard]] hal::can& bus()
  {
    return *m_can;
  }

  [[nodiscard]] auto add_message_callback(hal::can::id_t p_id)
  {
    return m_handlers.push_back(route{
      .id = p_id,
    });
  }

  [[nodiscard]] auto add_message_callback(hal::can::id_t p_id,
                                          message_handler p_handler)
  {
    return m_handlers.push_back(route{
      .id = p_id,
      .handler = p_handler,
    });
  }

  [[nodiscard]] const auto& handlers()
  {
    return m_handlers;
  }

  void operator()(const can::message_t& p_message)
  {
    for (auto& list_handler : m_handlers) {
      if (p_message.id == list_handler.id) {
        list_handler.handler(p_message);
        return;
      }
    }
  }

private:
  static_list<route> m_handlers{};
  hal::can* m_can = nullptr;
};
}  // namespace hal

```

