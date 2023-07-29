

# File inert\_rotation\_sensor.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-soft**](dir_d4bad6877cf31bc2d39b696d7a305013.md) **>** [**inert\_drivers**](dir_140c0a66abe76384f84bfc7661372b14.md) **>** [**inert\_rotation\_sensor.hpp**](inert__rotation__sensor_8hpp.md)

[Go to the documentation of this file](inert__rotation__sensor_8hpp.md)

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

#include <libhal/rotation_sensor.hpp>

namespace hal {
class inert_rotation_sensor : public hal::rotation_sensor
{
public:
  static result<inert_rotation_sensor> create(read_t p_position)
  {
    return inert_rotation_sensor(p_position);
  }

private:
  constexpr inert_rotation_sensor(read_t p_position)
    : m_position(p_position)
  {
  }

  result<read_t> driver_read()
  {
    return m_position;
  };

  read_t m_position;
};
}  // namespace hal

```

