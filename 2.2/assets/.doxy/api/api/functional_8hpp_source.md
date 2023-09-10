

# File functional.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal**](dir_c21661262b37aa135a14febc024e67d7.md) **>** [**functional.hpp**](functional_8hpp.md)

[Go to the documentation of this file](functional_8hpp.md)

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

#include "third_party/inplace_function.hpp"
#include <tl/function_ref.hpp>

namespace hal {
template<typename F>
using function_ref = tl::function_ref<F>;

template<typename F, size_t Capacity>
using inplace_function = stdext::inplace_function<F, Capacity>;

template<typename F>
using callback = inplace_function<F, sizeof(std::intptr_t) * 2>;
}  // namespace hal

```

