

# File startup.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-armcortex**](dir_b3459571a2adf19d50d3ad84e10dbc87.md) **>** [**startup.hpp**](startup_8hpp.md)

[Go to the documentation of this file](startup_8hpp.md)

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
#include <cstring>

// These need to be supplied by the linker script if the application developer
// in order to call hal::cortex::initialize_data_section()
extern "C"
{
  extern uint32_t __data_start;
  extern uint32_t __data_source;
  extern uint32_t __data_size;
  extern uint32_t __bss_start;
  extern uint32_t __bss_size;
}

namespace hal::cortex_m {
inline void initialize_data_section()
{
  // Initialize statically allocated data by coping the data section from ROM to
  // RAM. CRT0.o/.s does not perform .data section initialization so it must be
  // done by initialize_platform.
  intptr_t data_size = reinterpret_cast<intptr_t>(&__data_size);
  memcpy(&__data_start, &__data_source, data_size);
}
inline void initialize_bss_section()
{
  // Initialize statically allocated data by coping the data section from ROM to
  // RAM. CRT0.o/.s does not perform .data section initialization so it must be
  // done by initialize_platform.
  intptr_t bss_size = reinterpret_cast<intptr_t>(&__bss_size);
  memset(&__bss_start, 0, bss_size);
}
}  // namespace hal::cortex_m

```

