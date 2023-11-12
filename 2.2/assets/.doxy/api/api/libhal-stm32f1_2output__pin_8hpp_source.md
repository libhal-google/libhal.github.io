

# File output\_pin.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-stm32f1**](dir_382b22576b48b83d585887c4aba4f004.md) **>** [**output\_pin.hpp**](libhal-stm32f1_2output__pin_8hpp.md)

[Go to the documentation of this file](libhal-stm32f1_2output__pin_8hpp.md)

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

#include <libhal/output_pin.hpp>

namespace hal::stm32f1 {
class output_pin : public hal::output_pin
{
public:
  static result<output_pin> get(std::uint8_t p_port,
                                std::uint8_t p_pin,
                                output_pin::settings p_settings = {});

private:
  output_pin(std::uint8_t p_port, std::uint8_t p_pin);

  status driver_configure(const settings& p_settings) override;
  result<set_level_t> driver_level(bool p_high) override;
  result<level_t> driver_level() override;

  std::uint8_t m_port{};
  std::uint8_t m_pin{};
};
}  // namespace hal::stm32f1

```

