

# File testing.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-mock**](dir_24679974995b72317f1fb09ac5dd2fb9.md) **>** [**testing.hpp**](testing_8hpp.md)

[Go to the documentation of this file](testing_8hpp.md)

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

#include <algorithm>
#include <array>
#include <chrono>
#include <ios>
#include <span>
#include <tuple>
#include <vector>

#include <libhal/error.hpp>

namespace hal {
template<typename... args_t>
class spy_handler
{
public:
  void trigger_error_on_call(int p_call_count_before_trigger)
  {
    if (p_call_count_before_trigger < 0) {
      throw std::range_error("trigger_error_on_call() must be 0 or above");
    }
    m_error_trigger = p_call_count_before_trigger;
  }

  [[nodiscard]] status record(args_t... p_args)
  {
    m_call_history.push_back(std::make_tuple(p_args...));

    if (m_error_trigger > 1) {
      m_error_trigger--;
    } else if (m_error_trigger == 1) {
      m_error_trigger--;
      return hal::new_error();
    }

    return hal::success();
  }

  const auto& call_history() const
  {
    return m_call_history;
  }

  template<size_t ArgumentIndex>
  const auto& history(size_t p_call) const
  {
    return std::get<ArgumentIndex>(m_call_history.at(p_call));
  }

  void reset()
  {
    m_call_history.clear();
    m_error_trigger = 0;
  }

private:
  std::vector<std::tuple<args_t...>> m_call_history{};
  int m_error_trigger = 0;
};
}  // namespace hal

template<typename Rep, typename Period>
inline std::ostream& operator<<(
  std::ostream& p_os,
  const std::chrono::duration<Rep, Period>& p_duration)
{
  return p_os << p_duration.count() << " * (" << Period::num << "/"
              << Period::den << ")s";
}

template<typename T, size_t size>
inline std::ostream& operator<<(std::ostream& p_os,
                                const std::array<T, size>& p_array)
{
  p_os << "{";
  for (const auto& element : p_array) {
    p_os << element << ", ";
  }
  return p_os << "}\n";
}

template<typename T>
inline std::ostream& operator<<(std::ostream& p_os, const std::span<T>& p_array)
{
  p_os << "{";
  for (const auto& element : p_array) {
    p_os << element << ", ";
  }
  return p_os << "}\n";
}

```

