

# File output\_pin.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal**](dir_c21661262b37aa135a14febc024e67d7.md) **>** [**output\_pin.hpp**](libhal_2output__pin_8hpp.md)

[Go to the documentation of this file](libhal_2output__pin_8hpp.md)

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
#include "units.hpp"

namespace hal {
class output_pin
{
public:
  struct settings
  {
    pin_resistor resistor = pin_resistor::none;

    bool open_drain = false;
  };

  struct set_level_t
  {};

  struct level_t
  {
    bool state;
  };

  [[nodiscard]] status configure(const settings& p_settings)
  {
    return driver_configure(p_settings);
  }

  [[nodiscard]] result<set_level_t> level(bool p_high)
  {
    return driver_level(p_high);
  }

  [[nodiscard]] result<level_t> level()
  {
    return driver_level();
  }

  virtual ~output_pin() = default;

private:
  virtual status driver_configure(const settings& p_settings) = 0;
  virtual result<set_level_t> driver_level(bool p_high) = 0;
  virtual result<level_t> driver_level() = 0;
};
}  // namespace hal

```

