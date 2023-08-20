

# File systick\_timer.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-armcortex**](dir_b3459571a2adf19d50d3ad84e10dbc87.md) **>** [**systick\_timer.hpp**](systick__timer_8hpp.md)

[Go to the documentation of this file](systick__timer_8hpp.md)

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

#include <cstdint>

#include <libhal-util/units.hpp>
#include <libhal/timer.hpp>

namespace hal::cortex_m {
class systick_timer : public hal::timer
{
public:
  enum class clock_source : std::uint8_t
  {
    external = 0,
    processor = 1,
  };

  systick_timer(hertz p_frequency,
                clock_source p_source = clock_source::processor);

  void register_cpu_frequency(hertz p_frequency,
                              clock_source p_source = clock_source::processor);

  ~systick_timer();

private:
  result<is_running_t> driver_is_running() override;
  result<cancel_t> driver_cancel() override;
  result<schedule_t> driver_schedule(hal::callback<void(void)> p_callback,
                                     hal::time_duration p_delay) override;

  hertz m_frequency = 1'000'000.0f;
};
}  // namespace hal::cortex_m

```

