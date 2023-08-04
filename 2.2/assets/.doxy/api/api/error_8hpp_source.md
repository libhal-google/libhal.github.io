

# File error.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal**](dir_c21661262b37aa135a14febc024e67d7.md) **>** [**error.hpp**](error_8hpp.md)

[Go to the documentation of this file](error_8hpp.md)

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

#include <boost/leaf.hpp>
#include <system_error>

#define HAL_CHECK BOOST_LEAF_CHECK

namespace hal {

template<typename T, T value>
using match = boost::leaf::match<T, value>;
template<class T>
using result = boost::leaf::result<T>;
using status = result<void>;
using error_handler = void(void);

inline error_handler* on_error_callback = nullptr;

inline status success()
{
  // Default initialize the status object using the brace initialization, which
  // will set the status to the default "success" state.
  status successful_status{};
  return successful_status;
}

template<class TryBlock, class... H>
[[nodiscard]] constexpr auto attempt(TryBlock&& p_try_block, H&&... p_handlers)
{
  return boost::leaf::try_handle_some(p_try_block, p_handlers...);
}

template<class TryBlock, class... H>
[[nodiscard]] constexpr auto attempt_all(TryBlock&& p_try_block,
                                         H&&... p_handlers)
{
  return boost::leaf::try_handle_all(p_try_block, p_handlers...);
}

template<class... Item>
[[nodiscard]] inline auto new_error(Item&&... p_item)
{
  if (on_error_callback) {
    on_error_callback();
  }

  return boost::leaf::new_error(std::forward<Item>(p_item)...);
}

[[noreturn]] inline void halt()
{
  while (true) {
    continue;
  }
}

namespace error {
template<auto... options>
struct invalid_option_t : std::false_type
{};
template<auto... options>
inline constexpr bool invalid_option = invalid_option_t<options...>::value;
}  // namespace error
}  // namespace hal

```

