

# File rc\_servo.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-soft**](dir_d4bad6877cf31bc2d39b696d7a305013.md) **>** [**rc\_servo.hpp**](rc__servo_8hpp.md)

[Go to the documentation of this file](rc__servo_8hpp.md)

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

// Use "#pragma once" as an include guard for headers
// This is required because it ensures that the compiler will process this file
// only once, no matter how many times it is included.
#pragma once

#include <libhal/pwm.hpp>
#include <libhal/servo.hpp>

// Keep drivers within the namespace hal to not pollute global namespace
namespace hal::soft {
class rc_servo : public hal::servo
{
public:
  struct settings
  {
    hal::hertz frequency = 50;
    hal::degrees min_angle = 0;
    hal::degrees max_angle = 90;
    std::uint32_t min_microseconds = 1000;
    std::uint32_t max_microseconds = 2000;
  };

  // NOTE: Use a factory function in place of a constructor to report any errors
  // that could happen and let the application decide the next steps. The
  // Factory function returns a result<rc_servo> object. The standard name for
  // factory functions for device drivers is "create()" and the signature must
  // be: static result<type> create(/* ... args ... */){ /* ... */ }

  static result<rc_servo> create(hal::pwm& p_pwm, settings p_settings);

private:
  struct ranges
  {
    std::pair<float, float> percent;
    std::pair<float, float> angle;
  };
  // Constructor is private to only be accessed from the factory function.
  // Use p_ prefix for function parameters.
  constexpr rc_servo(hal::pwm& p_pwm, ranges p_ranges);

  result<position_t> driver_position(hal::degrees p_position) override;

  // Use m_ prefix for private/protected class members.
  // Use a pointer here rather than a reference, because member references
  // implicitly delete move constructors
  hal::pwm* m_pwm;
  ranges m_ranges;
};
// Comment the end of the namespace and end the file with an extra line.
}  // namespace hal::soft

```

