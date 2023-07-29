

# File adc.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-lpc40**](dir_2fff134b595a3a874b0307aab0eea726.md) **>** [**adc.hpp**](libhal-lpc40_2adc_8hpp.md)

[Go to the documentation of this file](libhal-lpc40_2adc_8hpp.md)

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

#include <libhal/adc.hpp>
#include <libhal/units.hpp>

#include "constants.hpp"
#include "pin.hpp"

namespace hal::lpc40 {
class adc : public hal::adc
{
public:
  struct channel
  {
    hertz clock_rate = 1'000'000.0f;
    pin adc_pin;
    uint8_t index;
    uint8_t pin_function;
  };

  static result<adc> get(size_t p_channel);

  static result<adc> construct_custom_channel(const channel& p_channel);

  virtual ~adc() = default;

private:
  adc(const channel& p_channel);
  result<read_t> driver_read() override;

  volatile uint32_t* m_sample = nullptr;
};
}  // namespace hal::lpc40

```

