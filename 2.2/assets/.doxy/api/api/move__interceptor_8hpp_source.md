

# File move\_interceptor.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-util**](dir_5e94bd3e75b6b11eff60149e0bc5664b.md) **>** [**move\_interceptor.hpp**](move__interceptor_8hpp.md)

[Go to the documentation of this file](move__interceptor_8hpp.md)

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

namespace hal {

template<class T>
class move_interceptor
{
public:
  friend T;

private:
  void intercept(T* p_previous)
  {
    static_cast<T*>(this)->intercept(p_previous);
  }

  move_interceptor() = default;
  move_interceptor(move_interceptor& p_previous) = delete;
  move_interceptor& operator=(move_interceptor& p_previous) = delete;
  move_interceptor(move_interceptor&& p_previous)
  {
    intercept(static_cast<T*>(&p_previous));
  }
  move_interceptor& operator=(move_interceptor&& p_previous)
  {
    intercept(static_cast<T*>(&p_previous));
    return *this;
  }
};
}  // namespace hal

```

