

# File distance\_sensor.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal**](dir_c21661262b37aa135a14febc024e67d7.md) **>** [**distance\_sensor.hpp**](distance__sensor_8hpp.md)

[Go to the documentation of this file](distance__sensor_8hpp.md)

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
class distance_sensor
{
public:
  struct read_t
  {
    meters distance;
  };

  [[nodiscard]] result<read_t> read()
  {
    return driver_read();
  }

  virtual ~distance_sensor() = default;

private:
  virtual result<read_t> driver_read() = 0;
};
}  // namespace hal

```
