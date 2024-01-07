

# File to\_array.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-util**](dir_5e94bd3e75b6b11eff60149e0bc5664b.md) **>** [**to\_array.hpp**](to__array_8hpp.md)

[Go to the documentation of this file](to__array_8hpp.md)

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
#include <cstddef>
#include <string_view>

namespace hal {
template<size_t N>
[[nodiscard]] constexpr std::array<char, N + 1> to_array(
  std::string_view p_view)
{
  const size_t min = std::min(N, p_view.size());
  std::array<char, N + 1> result;

  auto out_iterator = std::copy_n(p_view.begin(), min, result.begin());
  std::fill(out_iterator, result.end(), '\0');

  return result;
}
}  // namespace hal

```

