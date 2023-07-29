

# File drc\_motor.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-rmd**](dir_3a391231662e3c35ce1f8bf907d80c4f.md) **>** [**drc\_motor.hpp**](drc__motor_8hpp.md)

[Go to the documentation of this file](drc__motor_8hpp.md)

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

#include "drc.hpp"

namespace hal {
namespace rmd {
class drc_motor;
}  // namespace rmd

result<rmd::drc_motor> make_motor(rmd::drc& p_drc, hal::rpm p_max_speed);
}  // namespace hal

namespace hal::rmd {
class drc_motor : public hal::motor
{
private:
  drc_motor(drc& p_drc, hal::rpm p_max_speed);
  result<power_t> driver_power(float p_power) override;
  friend result<drc_motor> hal::make_motor(rmd::drc& p_drc,
                                           hal::rpm p_max_speed);
  drc* m_drc = nullptr;
  hal::rpm m_max_speed;
};
}  // namespace hal::rmd

```

