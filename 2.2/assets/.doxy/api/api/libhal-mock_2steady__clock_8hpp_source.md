

# File steady\_clock.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-mock**](dir_24679974995b72317f1fb09ac5dd2fb9.md) **>** [**steady\_clock.hpp**](libhal-mock_2steady__clock_8hpp.md)

[Go to the documentation of this file](libhal-mock_2steady__clock_8hpp.md)

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

#include <queue>

#include <libhal/steady_clock.hpp>

namespace hal::mock {
struct steady_clock : public hal::steady_clock
{
  void set_frequency(frequency_t p_frequency)
  {
    m_frequency = p_frequency;
  }

  void set_uptimes(std::queue<uptime_t>& p_uptime_values)
  {
    m_uptime_values = p_uptime_values;
  }

private:
  frequency_t driver_frequency()
  {
    return m_frequency;
  }

  uptime_t driver_uptime()
  {
    if (m_uptime_values.size() == 0) {
      return m_last_uptime;
    }

    m_last_uptime = m_uptime_values.front();
    m_uptime_values.pop();
    return m_last_uptime;
  }

  frequency_t m_frequency{ .operating_frequency = 1.0_Hz };
  std::queue<uptime_t> m_uptime_values{};
  uptime_t m_last_uptime{};
};
}  // namespace hal::mock

```

