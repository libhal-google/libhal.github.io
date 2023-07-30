

# File mc\_x.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-rmd**](dir_3a391231662e3c35ce1f8bf907d80c4f.md) **>** [**mc\_x.hpp**](mc__x_8hpp.md)

[Go to the documentation of this file](mc__x_8hpp.md)

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

#include <atomic>
#include <cstdint>

#include <libhal-util/can.hpp>
#include <libhal-util/enum.hpp>
#include <libhal-util/map.hpp>
#include <libhal-util/steady_clock.hpp>
#include <libhal/can.hpp>
#include <libhal/steady_clock.hpp>
#include <libhal/units.hpp>

namespace hal::rmd {
class mc_x
{
public:
  enum class read : hal::byte
  {
    multi_turns_angle = 0x92,
    status_1_and_error_flags = 0x9A,
    status_2 = 0x9C,
  };

  enum class actuate : hal::byte
  {
    torque = 0xA1,
    speed = 0xA2,
    position = 0xA5,
  };

  enum class write : hal::byte
  {
    // None supported currently
  };

  enum class system : hal::byte
  {
    off = 0x80,
    stop = 0x81,
  };

  struct feedback_t
  {
    std::uint32_t message_number = 0;
    std::int64_t raw_multi_turn_angle{ 0 };
    std::int16_t raw_error_state{ 0 };
    std::int16_t raw_current{ 0 };
    std::int16_t raw_speed{ 0 };
    std::int16_t raw_volts{ 0 };
    std::int16_t encoder{ 0 };
    std::int8_t raw_motor_temperature{ 0 };

    hal::ampere current() const noexcept;
    hal::rpm speed() const noexcept;
    hal::volts volts() const noexcept;
    hal::celsius temperature() const noexcept;
    hal::degrees angle() const noexcept;
    bool motor_stall() const noexcept;
    bool low_pressure() const noexcept;
    bool over_voltage() const noexcept;
    bool over_current() const noexcept;
    bool power_overrun() const noexcept;
    bool speeding() const noexcept;
    bool over_temperature() const noexcept;
    bool encoder_calibration_error() const noexcept;
  };

  [[nodiscard]] static result<mc_x> create(
    hal::can_router& p_router,
    hal::steady_clock& p_clock,
    float p_gear_ratio,
    can::id_t device_id,
    hal::time_duration p_max_response_time = std::chrono::milliseconds(10));

  mc_x(mc_x& p_other) = delete;
  mc_x& operator=(mc_x& p_other) = delete;
  mc_x(mc_x&& p_other);
  mc_x& operator=(mc_x&& p_other);

  const feedback_t& feedback() const;

  [[nodiscard]] status feedback_request(read p_command);

  [[nodiscard]] status velocity_control(rpm p_speed);

  [[nodiscard]] status position_control(degrees p_angle, rpm speed);

  [[nodiscard]] status system_control(system p_system_command);

  void operator()(const can::message_t& p_message);

private:
  mc_x(hal::can_router& p_router,
       hal::steady_clock& p_clock,
       float p_gear_ratio,
       can::id_t p_device_id,
       hal::time_duration p_max_response_time);

  friend struct response_waiter;

  feedback_t m_feedback{};
  hal::steady_clock* m_clock;
  hal::can_router* m_router;
  hal::can_router::route_item m_route_item;
  float m_gear_ratio;
  can::id_t m_device_id;
  hal::time_duration m_max_response_time;
};
}  // namespace hal::rmd

```

