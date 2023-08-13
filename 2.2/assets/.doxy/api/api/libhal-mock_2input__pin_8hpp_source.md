

# File input\_pin.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-mock**](dir_24679974995b72317f1fb09ac5dd2fb9.md) **>** [**input\_pin.hpp**](libhal-mock_2input__pin_8hpp.md)

[Go to the documentation of this file](libhal-mock_2input__pin_8hpp.md)

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
#include <stdexcept>

#include "testing.hpp"
#include <libhal/input_pin.hpp>

namespace hal::mock {
struct input_pin : public hal::input_pin
{
  void reset()
  {
    spy_configure.reset();
  }

  spy_handler<settings> spy_configure;

  void set(std::queue<level_t>& p_levels)
  {
    m_levels = p_levels;
  }

private:
  status driver_configure(const settings& p_settings) override
  {
    return spy_configure.record(p_settings);
  }
  result<level_t> driver_level() override
  {
    // This comparison performs bounds checking because front() and pop() do
    // not bounds check and results in undefined behavior if the queue is empty.
    if (m_levels.size() == 0) {
      return hal::new_error(
        std::out_of_range("input_pin level queue is empty!"));
    }
    auto m_current_value = m_levels.front();
    m_levels.pop();
    return m_current_value;
  }

  std::queue<level_t> m_levels{};
};
}  // namespace hal::mock

```

