

# File mpl3115a2.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-mpl**](dir_938956f748520abcfe48f1edd19c1957.md) **>** [**mpl3115a2.hpp**](mpl3115a2_8hpp.md)

[Go to the documentation of this file](mpl3115a2_8hpp.md)

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

#include <libhal/i2c.hpp>
#include <libhal/timeout.hpp>
#include <libhal/units.hpp>

namespace hal::mpl {

class mpl3115a2
{
public:
  /* Keep track of the current set mode bit in ctrl_reg1 */
  enum class mode
  {
    barometer = 0,
    altimeter = 1,
  };

  struct temperature_read_t
  {
    celsius temperature;
  };

  struct pressure_read_t
  {
    float pressure;  // Pascals (Pa)
  };

  struct altitude_read_t
  {
    meters altitude;
  };

  [[nodiscard]] static result<mpl3115a2> create(hal::i2c& p_i2c);

  [[nodiscard]] hal::result<temperature_read_t> read_temperature();

  [[nodiscard]] hal::result<pressure_read_t> read_pressure();

  [[nodiscard]] hal::result<altitude_read_t> read_altitude();

  hal::status set_sea_pressure(float p_sea_level_pressure);

  hal::status set_altitude_offset(int8_t p_offset);

  /* Maximum number of retries for polling operations. */
  static constexpr uint16_t default_max_polling_retries = 10000;

private:
  explicit mpl3115a2(hal::i2c& p_i2c);

  /* The I2C peripheral used for communication with the device. */
  hal::i2c* m_i2c;

  /* Variable to track current sensor mode to determine if CTRL_REG1 ALT flag
   * needs to be set. */
  mode m_sensor_mode = mode::barometer;
};

}  // namespace hal::mpl

```

