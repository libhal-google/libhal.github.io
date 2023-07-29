

# File inert\_timer.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-soft**](dir_d4bad6877cf31bc2d39b696d7a305013.md) **>** [**inert\_drivers**](dir_140c0a66abe76384f84bfc7661372b14.md) **>** [**inert\_timer.hpp**](inert__timer_8hpp.md)

[Go to the documentation of this file](inert__timer_8hpp.md)

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

#include <libhal/timer.hpp>

namespace hal {
class inert_timer : public hal::timer
{
public:
  static result<inert_timer> create(is_running_t p_is_running)
  {
    return inert_timer(p_is_running);
  }

private:
  constexpr inert_timer(is_running_t p_is_running)
    : m_is_running(p_is_running)
  {
  }

  result<is_running_t> driver_is_running()
  {
    return m_is_running;
  };

  result<cancel_t> driver_cancel()
  {
    return cancel_t{};
  };

  result<schedule_t> driver_schedule(
    [[maybe_unused]] hal::callback<void(void)> p_callback,
    [[maybe_unused]] hal::time_duration p_delay)
  {
    return schedule_t{};
  };

  is_running_t m_is_running;
};
}  // namespace hal

```

