

# File static\_callable.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-util**](dir_5e94bd3e75b6b11eff60149e0bc5664b.md) **>** [**static\_callable.hpp**](static__callable_8hpp.md)

[Go to the documentation of this file](static__callable_8hpp.md)

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

#include <libhal/functional.hpp>

namespace hal {
template<class owner_class, int reference_designator, typename signature>
class static_callable;

template<class owner_class,
         int reference_designator,
         typename return_t,
         typename... args_t>
class static_callable<owner_class,
                      reference_designator,
                      return_t(args_t... p_args)>
{
public:
  explicit static_callable(hal::callback<return_t(args_t... p_args)> p_callback)
  {
    callback = p_callback;
  }

  [[nodiscard]] auto* get_handler()
  {
    return &handler;
  }

private:
  static return_t handler(args_t... p_args)
  {
    return callback(p_args...);
  }

  inline static hal::callback<return_t(args_t... p_args)> callback;
};
}  // namespace hal

```

