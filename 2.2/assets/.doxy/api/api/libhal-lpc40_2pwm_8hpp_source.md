

# File pwm.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-lpc40**](dir_2fff134b595a3a874b0307aab0eea726.md) **>** [**pwm.hpp**](libhal-lpc40_2pwm_8hpp.md)

[Go to the documentation of this file](libhal-lpc40_2pwm_8hpp.md)

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

#include <libhal/pwm.hpp>

#include "constants.hpp"
#include "pin.hpp"

namespace hal::lpc40 {
class pwm : public hal::pwm
{
public:
  struct channel
  {
    peripheral peripheral_id;
    pin pwm_pin;
    uint8_t index;
    uint8_t pin_function;
  };

  [[nodiscard]] static result<pwm> get(std::uint8_t p_peripheral,
                                       std::uint8_t p_channel);

private:
  pwm(channel p_channel);
  result<frequency_t> driver_frequency(hertz p_frequency) override;
  result<duty_cycle_t> driver_duty_cycle(float p_duty_cycle) override;

  channel m_channel;
};
}  // namespace hal::lpc40

```

