

# File dwt\_counter.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-armcortex**](dir_b3459571a2adf19d50d3ad84e10dbc87.md) **>** [**dwt\_counter.hpp**](dwt__counter_8hpp.md)

[Go to the documentation of this file](dwt__counter_8hpp.md)

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

#include <libhal-util/overflow_counter.hpp>
#include <libhal/steady_clock.hpp>

namespace hal::cortex_m {
class dwt_counter : public hal::steady_clock
{
public:
  dwt_counter(hertz p_cpu_frequency);

  void register_cpu_frequency(hertz p_cpu_frequency);

private:
  uptime_t driver_uptime() override;
  frequency_t driver_frequency() override;

  overflow_counter<32> m_uptime{};
  hertz m_cpu_frequency{ 1'000'000 };
};
}  // namespace hal::cortex_m

```

