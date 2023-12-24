

# File motor.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-mock**](dir_24679974995b72317f1fb09ac5dd2fb9.md) **>** [**motor.hpp**](libhal-mock_2motor_8hpp.md)

[Go to the documentation of this file](libhal-mock_2motor_8hpp.md)

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
#include <libhal/motor.hpp>

namespace hal::mock {
struct motor : public hal::motor
{
  void reset()
  {
    spy_power.reset();
  }

  spy_handler<float> spy_power;

private:
  result<power_t> driver_power(float p_power) override
  {
    HAL_CHECK(spy_power.record(p_power));
    return power_t{};
  };
};
}  // namespace hal::mock

```

