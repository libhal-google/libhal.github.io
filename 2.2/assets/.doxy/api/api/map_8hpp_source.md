

# File map.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-util**](dir_5e94bd3e75b6b11eff60149e0bc5664b.md) **>** [**map.hpp**](map_8hpp.md)

[Go to the documentation of this file](map_8hpp.md)

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

#include "math.hpp"

namespace hal {

[[nodiscard]] constexpr float map(float p_target,
                                  std::pair<float, float> p_input_range,
                                  std::pair<float, float> p_output_range)
{
  const float x = p_target;
  const auto [a, b] = std::minmax(p_input_range.first, p_input_range.second);
  const auto [c, d] = std::minmax(p_output_range.first, p_output_range.second);

  const float shift_input = x - a;
  const float ratio = (d - c) / (b - a);
  const float y = (shift_input * ratio) + c;
  const float clamped_y = std::clamp(y, c, d);

  return clamped_y;
}
}  // namespace hal

```

