

# File pwm.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-mock**](dir_24679974995b72317f1fb09ac5dd2fb9.md) **>** [**pwm.hpp**](libhal-mock_2pwm_8hpp.md)

[Go to the documentation of this file](libhal-mock_2pwm_8hpp.md)

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
#include <libhal/pwm.hpp>

namespace hal::mock {
struct pwm : public hal::pwm
{
  void reset()
  {
    spy_frequency.reset();
    spy_duty_cycle.reset();
  }

  spy_handler<hertz> spy_frequency;
  spy_handler<float> spy_duty_cycle;

private:
  result<frequency_t> driver_frequency(hertz p_settings) override
  {
    HAL_CHECK(spy_frequency.record(p_settings));
    return frequency_t{};
  }

  result<duty_cycle_t> driver_duty_cycle(float p_duty_cycle) override
  {
    HAL_CHECK(spy_duty_cycle.record(p_duty_cycle));

    return duty_cycle_t{};
  }
};
}  // namespace hal::mock

```

