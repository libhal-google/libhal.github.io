

# File motor.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal**](dir_c21661262b37aa135a14febc024e67d7.md) **>** [**motor.hpp**](libhal_2motor_8hpp.md)

[Go to the documentation of this file](libhal_2motor_8hpp.md)

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

#include "error.hpp"

namespace hal {
class motor
{
public:
  struct power_t
  {};

  [[nodiscard]] result<power_t> power(float p_power)
  {
    auto clamped_power = std::clamp(p_power, -1.0f, +1.0f);
    return driver_power(clamped_power);
  }

  virtual ~motor() = default;

private:
  virtual result<power_t> driver_power(float p_power) = 0;
};
}  // namespace hal

```

