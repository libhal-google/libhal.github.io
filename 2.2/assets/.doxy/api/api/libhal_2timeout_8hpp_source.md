

# File timeout.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal**](dir_c21661262b37aa135a14febc024e67d7.md) **>** [**timeout.hpp**](libhal_2timeout_8hpp.md)

[Go to the documentation of this file](libhal_2timeout_8hpp.md)

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
#include "functional.hpp"

namespace hal {
enum class work_state
{
  // Callable is in progress and has not yet finished performing its work.
  in_progress,
  // Callable was able to determine that it failed to do what it was tasked to
  // do and has terminated.
  failed,
  // Callable finished the work it needed to perform and has terminated.
  finished,
};

using timeout_function = status(void);

template<class T>
concept timeout = std::convertible_to<T, hal::function_ref<timeout_function>>;

using work_function = result<work_state>();

template<class T>
concept worker = std::convertible_to<T, hal::function_ref<work_function>>;

[[nodiscard]] inline status delay(timeout auto p_timeout)
{
  bool waiting = true;

  // This lambda catches a `std::errc::timed_out` handle them by changing
  // `waiting` from true to false in order to break the while loop below.
  auto timeout_catcher =
    [&waiting](hal::match<std::errc, std::errc::timed_out> p_errc) -> status {
    (void)p_errc;
    // Simply change the waiting bool
    waiting = false;
    // return successful
    return {};
  };

  HAL_CHECK(hal::attempt(
    [&p_timeout]() -> status {
      // Continuously call p_callback until it either returns
      // `std::errc::timeout_out`
      while (true) {
        HAL_CHECK(p_timeout());
      }
      // Unreachable!
      return {};
    },
    timeout_catcher));

  return {};
}

[[nodiscard]] inline auto never_timeout()
{
  return []() -> status { return {}; };
}
}  // namespace hal

```

