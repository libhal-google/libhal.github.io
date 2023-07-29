

# File inert\_motor.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-soft**](dir_d4bad6877cf31bc2d39b696d7a305013.md) **>** [**inert\_drivers**](dir_140c0a66abe76384f84bfc7661372b14.md) **>** [**inert\_motor.hpp**](inert__motor_8hpp.md)

[Go to the documentation of this file](inert__motor_8hpp.md)

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

#include <libhal/motor.hpp>

namespace hal {
class inert_motor : public hal::motor
{
public:
  static result<inert_motor> create()
  {
    return inert_motor();
  }

private:
  constexpr inert_motor()
  {
  }

  result<power_t> driver_power([[maybe_unused]] float p_power)
  {
    return power_t{};
  };
};
}  // namespace hal

```

