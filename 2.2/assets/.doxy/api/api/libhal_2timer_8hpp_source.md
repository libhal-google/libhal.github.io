

# File timer.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal**](dir_c21661262b37aa135a14febc024e67d7.md) **>** [**timer.hpp**](libhal_2timer_8hpp.md)

[Go to the documentation of this file](libhal_2timer_8hpp.md)

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

#include <chrono>

#include "error.hpp"
#include "functional.hpp"
#include "units.hpp"

namespace hal {
class timer
{
public:
  struct out_of_bounds_error
  {
    std::chrono::nanoseconds tick_period;
    std::chrono::nanoseconds maximum;
  };

  struct is_running_t
  {
    bool is_running;
  };

  struct cancel_t
  {};

  struct schedule_t
  {};

  [[nodiscard]] result<is_running_t> is_running()
  {
    return driver_is_running();
  }

  [[nodiscard]] result<cancel_t> cancel()
  {
    return driver_cancel();
  }

  [[nodiscard]] result<schedule_t> schedule(
    hal::callback<void(void)> p_callback,
    hal::time_duration p_delay)
  {
    return driver_schedule(p_callback, p_delay);
  }

  virtual ~timer() = default;

private:
  virtual result<is_running_t> driver_is_running() = 0;
  virtual result<cancel_t> driver_cancel() = 0;
  virtual result<schedule_t> driver_schedule(
    hal::callback<void(void)> p_callback,
    hal::time_duration p_delay) = 0;
};
}  // namespace hal

```

