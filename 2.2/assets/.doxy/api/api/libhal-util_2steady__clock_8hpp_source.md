

# File steady\_clock.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-util**](dir_5e94bd3e75b6b11eff60149e0bc5664b.md) **>** [**steady\_clock.hpp**](libhal-util_2steady__clock_8hpp.md)

[Go to the documentation of this file](libhal-util_2steady__clock_8hpp.md)

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

#include <libhal/error.hpp>
#include <libhal/steady_clock.hpp>
#include <libhal/timeout.hpp>

#include "units.hpp"

namespace hal {
inline std::uint64_t future_deadline(hal::steady_clock& p_steady_clock,
                                     hal::time_duration p_duration);

class steady_clock_timeout
{
public:
  static steady_clock_timeout create(hal::steady_clock& p_steady_clock,
                                     hal::time_duration p_duration);

  steady_clock_timeout(const steady_clock_timeout& p_timeout) = default;
  steady_clock_timeout& operator=(const steady_clock_timeout& p_timeout) =
    default;
  steady_clock_timeout(steady_clock_timeout&& p_timeout) = default;
  steady_clock_timeout& operator=(steady_clock_timeout&& p_timeout) = default;

  status operator()();

private:
  steady_clock_timeout(hal::steady_clock& p_steady_clock,
                       std::uint64_t p_cycles_until_timeout);

  hal::steady_clock* m_counter;
  std::uint64_t m_cycles_until_timeout = 0;
};

steady_clock_timeout create_timeout(hal::steady_clock& p_steady_clock,
                                    hal::time_duration p_duration);

void delay(hal::steady_clock& p_steady_clock, hal::time_duration p_duration);

inline auto timeout_generator(hal::steady_clock& p_steady_clock)
{
  return [&p_steady_clock](hal::time_duration p_duration) -> auto
  {
    return create_timeout(p_steady_clock, p_duration);
  };
}
}  // namespace hal

```

