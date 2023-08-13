

# File overflow\_counter.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-util**](dir_5e94bd3e75b6b11eff60149e0bc5664b.md) **>** [**overflow\_counter.hpp**](overflow__counter_8hpp.md)

[Go to the documentation of this file](overflow__counter_8hpp.md)

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

#include "bit_limits.hpp"

namespace hal {
template<size_t CountBitWidth = 32>
class overflow_counter
{
public:
  static_assert(CountBitWidth <= 32, "Bit width cannot exceed 32-bits");
  static_assert(CountBitWidth > 1, "Bit width must be greater than 1");
  constexpr uint64_t update(uint32_t p_new_count)
  {
    // Sanitize the new count value to make sure it does not exceed the
    // designated bit width. Without this check when the count is combined with
    // the overflow value the upper bits may effect the bits of the overflow
    // count, getting an incorrect count value.
    constexpr auto mask = generate_field_of_ones<CountBitWidth, uint32_t>();
    p_new_count = p_new_count & mask;

    // Detect the overflow by checking if the new count is smaller than the
    // previous count. If the count is always increasing, the only way for the
    // new count to be smaller is if the count reached the end of its bit width
    // and overflowed.
    if (m_previous_count > p_new_count) {
      m_overflow_count++;
    }

    // Set previous count to the new count
    m_previous_count = p_new_count;

    // Move overflow count up to the upper bits of the 64-bit number based on
    // CountBitWidth
    uint64_t combined_count = m_overflow_count;
    combined_count <<= CountBitWidth;
    // Add the p_new_count into the combined count to complete it.
    combined_count |= p_new_count;

    return combined_count;
  }

  constexpr void reset()
  {
    m_previous_count = 0;
    m_overflow_count = 0;
  }

private:
  uint32_t m_previous_count = 0;
  uint32_t m_overflow_count = 0;
};
}  // namespace hal

```

