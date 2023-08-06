

# File drc.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-rmd**](dir_3a391231662e3c35ce1f8bf907d80c4f.md) **>** [**drc.hpp**](drc_8hpp.md)

[Go to the documentation of this file](drc_8hpp.md)

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

#include <libhal-util/can.hpp>
#include <libhal/can.hpp>
#include <libhal/motor.hpp>
#include <libhal/rotation_sensor.hpp>
#include <libhal/servo.hpp>
#include <libhal/steady_clock.hpp>
#include <libhal/temperature_sensor.hpp>
#include <libhal/units.hpp>

namespace hal::rmd {
class drc
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
    speed = 0xA2,
    position_2 = 0xA4,
  };

  enum class write : hal::byte
  {
    pid_to_ram = 0x31,
    pid_to_rom = 0x32,
    acceleration_data_to_ram = 0x34,
    encoder_offset = 0x91,
    current_position_to_rom_as_motor_zero = 0x19,
  };

  enum class system : hal::byte
  {
    clear_error_flag = 0x9B,
    off = 0x80,
    stop = 0x81,
    running = 0x88,
  };

  struct feedback_t
  {
    std::uint32_t message_number = 0;
    std::int64_t raw_multi_turn_angle{ 0 };
    std::int16_t raw_current{ 0 };
    std::int16_t raw_speed{ 0 };
    std::int16_t raw_volts{ 0 };
    std::int16_t encoder{ 0 };
    std::int8_t raw_motor_temperature{ 0 };
    std::uint8_t raw_error_state{ 0 };

    hal::ampere current() const noexcept;
    hal::rpm speed() const noexcept;
    hal::volts volts() const noexcept;
    hal::celsius temperature() const noexcept;
    hal::degrees angle() const noexcept;

    bool over_voltage_protection_tripped() const noexcept;

    bool over_temperature_protection_tripped() const noexcept;
  };

  [[nodiscard]] static result<drc> create(
    hal::can_router& p_router,
    hal::steady_clock& p_clock,
    float p_gear_ratio,
    can::id_t device_id,
    hal::time_duration p_max_response_time = std::chrono::milliseconds(10));

  drc(drc& p_other) = delete;
  drc& operator=(drc& p_other) = delete;
  drc(drc&& p_other);
  drc& operator=(drc&& p_other);

  [[nodiscard]] status feedback_request(read p_command);

  [[nodiscard]] status velocity_control(rpm p_speed);

  [[nodiscard]] status position_control(degrees p_angle, rpm speed);

  [[nodiscard]] status system_control(system p_system_command);

  const feedback_t& feedback() const;

  void operator()(const can::message_t& p_message);

private:
  drc(hal::can_router& p_router,
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

class drc_rotation_sensor : public hal::rotation_sensor
{
private:
  drc_rotation_sensor(drc& p_drc);
  result<hal::rotation_sensor::read_t> driver_read() override;
  friend result<drc_rotation_sensor> make_rotation_sensor(drc& p_drc);
  drc* m_drc = nullptr;
};

result<drc_rotation_sensor> make_rotation_sensor(drc& p_drc);

class drc_temperature_sensor : public hal::temperature_sensor
{
private:
  drc_temperature_sensor(drc& p_drc);
  result<read_t> driver_read() override;
  friend result<drc_temperature_sensor> make_temperature_sensor(drc& p_drc);
  drc* m_drc = nullptr;
};
result<drc_temperature_sensor> make_temperature_sensor(drc& p_drc);

class drc_motor : public hal::motor
{
public:
  friend result<drc_motor> make_motor(drc& p_drc, hal::rpm p_max_speed);

private:
  drc_motor(drc& p_drc, hal::rpm p_max_speed);
  result<power_t> driver_power(float p_power) override;

  drc* m_drc = nullptr;
  hal::rpm m_max_speed;
};

result<drc_motor> make_motor(drc& p_drc, hal::rpm p_max_speed);

class drc_servo : public hal::servo
{
private:
  drc_servo(drc& p_drc, hal::rpm p_max_speed);
  result<position_t> driver_position(hal::degrees p_position) override;
  friend result<drc_servo> make_servo(drc& p_drc, hal::rpm p_max_speed);
  drc* m_drc = nullptr;
  hal::rpm m_max_speed;
};

result<drc_servo> make_servo(drc& p_drc, hal::rpm p_max_speed);
}  // namespace hal::rmd

namespace hal {
using rmd::make_motor;
using rmd::make_rotation_sensor;
using rmd::make_servo;
using rmd::make_temperature_sensor;
}  // namespace hal

```

