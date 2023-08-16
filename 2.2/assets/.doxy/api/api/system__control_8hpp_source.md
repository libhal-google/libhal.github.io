

# File system\_control.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-armcortex**](dir_b3459571a2adf19d50d3ad84e10dbc87.md) **>** [**system\_control.hpp**](system__control_8hpp.md)

[Go to the documentation of this file](system__control_8hpp.md)

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

namespace hal::cortex_m {
void initialize_floating_point_unit();

void set_interrupt_vector_table_address(void* p_table_location);

void* get_interrupt_vector_table_address();

void reset();

void wait_for_interrupt();

void wait_for_event();
}  // namespace hal::cortex_m

```

