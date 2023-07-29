

# File inert\_steady\_clock.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-soft**](dir_d4bad6877cf31bc2d39b696d7a305013.md) **>** [**inert\_drivers**](dir_140c0a66abe76384f84bfc7661372b14.md) **>** [**inert\_steady\_clock.hpp**](inert__steady__clock_8hpp.md)

[Go to the documentation of this file](inert__steady__clock_8hpp.md)

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

#include <libhal/steady_clock.hpp>

namespace hal {
class inert_steady_clock : public hal::steady_clock
{
public:
  static result<inert_steady_clock> create(frequency_t p_frequency,
                                           uptime_t p_uptime)
  {
    return inert_steady_clock(p_frequency, p_uptime);
  }

private:
  constexpr inert_steady_clock(frequency_t p_frequency, uptime_t p_uptime)
    : m_frequency(p_frequency)
    , m_uptime(p_uptime)
  {
  }
  frequency_t driver_frequency()
  {
    return m_frequency;
  };

  uptime_t driver_uptime()
  {
    m_uptime.ticks++;
    return m_uptime;
  };

  frequency_t m_frequency;
  uptime_t m_uptime;
};
}  // namespace hal

```

