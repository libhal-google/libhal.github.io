

# File pwm.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal**](dir_c21661262b37aa135a14febc024e67d7.md) **>** [**pwm.hpp**](libhal_2pwm_8hpp.md)

[Go to the documentation of this file](libhal_2pwm_8hpp.md)

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

#include <algorithm>
#include <cstdint>

#include "error.hpp"
#include "units.hpp"

namespace hal {
class pwm
{
public:
  struct duty_cycle_t
  {};

  struct frequency_t
  {};

  [[nodiscard]] result<frequency_t> frequency(hertz p_frequency)
  {
    auto clamped_frequency = std::clamp(p_frequency, 1.0_Hz, 1.0_GHz);
    return driver_frequency(clamped_frequency);
  }

  [[nodiscard]] result<duty_cycle_t> duty_cycle(float p_duty_cycle)
  {
    auto clamped_duty_cycle = std::clamp(p_duty_cycle, 0.0f, 1.0f);
    return driver_duty_cycle(clamped_duty_cycle);
  }

  virtual ~pwm() = default;

private:
  virtual result<frequency_t> driver_frequency(hertz p_frequency) = 0;
  virtual result<duty_cycle_t> driver_duty_cycle(float p_duty_cycle) = 0;
};
}  // namespace hal

```

