

# File inert\_spi.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-soft**](dir_d4bad6877cf31bc2d39b696d7a305013.md) **>** [**incomplete\_drivers**](dir_6341654c6178e3c825562b2d2d27fb31.md) **>** [**inert\_spi.hpp**](inert__spi_8hpp.md)

[Go to the documentation of this file](inert__spi_8hpp.md)

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

#include <libhal/spi.hpp>

namespace hal {
class inert_spi : public hal::spi
{
public:
  static result<inert_spi> create()
  {
    return inert_spi();
  }

private:
  constexpr inert_spi()
  {
  }

  status driver_configure([[maybe_unused]] const settings& p_settings)
  {
    return hal::success();
  };

  result<transfer_t> driver_transfer(
    [[maybe_unused]] std::span<const hal::byte> p_data_out,
    [[maybe_unused]] std::span<hal::byte> p_data_in,
    [[maybe_unused]] hal::byte p_filler)
  {
    return transfer_t{};
  };
};
}  // namespace hal

```

