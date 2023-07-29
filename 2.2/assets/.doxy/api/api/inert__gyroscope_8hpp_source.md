

# File inert\_gyroscope.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-soft**](dir_d4bad6877cf31bc2d39b696d7a305013.md) **>** [**inert\_drivers**](dir_140c0a66abe76384f84bfc7661372b14.md) **>** [**inert\_gyroscope.hpp**](inert__gyroscope_8hpp.md)

[Go to the documentation of this file](inert__gyroscope_8hpp.md)

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

#include <libhal/gyroscope.hpp>

namespace hal {
class inert_gyroscope : public hal::gyroscope
{
public:
  static result<inert_gyroscope> create(read_t p_result)
  {
    return inert_gyroscope(p_result);
  }

private:
  constexpr inert_gyroscope(read_t p_result)
    : m_result(p_result)
  {
  }

  result<read_t> driver_read()
  {
    return m_result;
  };

  read_t m_result;
};
}  // namespace hal

```

