

# File inert\_interrupt\_pin.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-soft**](dir_d4bad6877cf31bc2d39b696d7a305013.md) **>** [**inert\_drivers**](dir_140c0a66abe76384f84bfc7661372b14.md) **>** [**inert\_interrupt\_pin.hpp**](inert__interrupt__pin_8hpp.md)

[Go to the documentation of this file](inert__interrupt__pin_8hpp.md)

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

#include <libhal/interrupt_pin.hpp>

namespace hal {
class inert_interrupt_pin : public hal::interrupt_pin
{
public:
  static result<inert_interrupt_pin> create()
  {
    return inert_interrupt_pin();
  }

private:
  constexpr inert_interrupt_pin()
  {
  }

  status driver_configure([[maybe_unused]] const settings& p_settings)
  {
    return hal::success();
  };

  void driver_on_trigger([[maybe_unused]] hal::callback<handler> p_callback){};
};
}  // namespace hal

```

