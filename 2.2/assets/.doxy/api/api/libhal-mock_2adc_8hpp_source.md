

# File adc.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-mock**](dir_24679974995b72317f1fb09ac5dd2fb9.md) **>** [**adc.hpp**](libhal-mock_2adc_8hpp.md)

[Go to the documentation of this file](libhal-mock_2adc_8hpp.md)

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

#include <libhal/adc.hpp>
#include <queue>

namespace hal::mock {
struct adc : public hal::adc
{
  void set(std::queue<read_t>& p_adc_values)
  {
    m_adc_values = p_adc_values;
  }

private:
  result<read_t> driver_read() override
  {
    if (m_adc_values.size() == 0) {
      return hal::new_error(std::out_of_range("floats queue is empty!"));
    }
    auto m_current_value = m_adc_values.front();
    m_adc_values.pop();
    return m_current_value;
  }

  std::queue<read_t> m_adc_values{};
};
}  // namespace hal::mock

```

