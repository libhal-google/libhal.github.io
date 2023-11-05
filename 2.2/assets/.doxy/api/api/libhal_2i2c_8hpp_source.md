

# File i2c.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal**](dir_c21661262b37aa135a14febc024e67d7.md) **>** [**i2c.hpp**](libhal_2i2c_8hpp.md)

[Go to the documentation of this file](libhal_2i2c_8hpp.md)

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

#include <span>

#include "error.hpp"
#include "functional.hpp"
#include "timeout.hpp"
#include "units.hpp"

namespace hal {
class i2c
{
public:
  struct settings
  {
    hertz clock_rate = 100.0_kHz;
  };

  struct transaction_t
  {};

  [[nodiscard]] status configure(const settings& p_settings)
  {
    return driver_configure(p_settings);
  }

  [[nodiscard]] result<transaction_t> transaction(
    hal::byte p_address,
    std::span<const hal::byte> p_data_out,
    std::span<hal::byte> p_data_in,
    hal::function_ref<hal::timeout_function> p_timeout)
  {
    return driver_transaction(p_address, p_data_out, p_data_in, p_timeout);
  }

  virtual ~i2c() = default;

private:
  virtual status driver_configure(const settings& p_settings) = 0;
  virtual result<transaction_t> driver_transaction(
    hal::byte p_address,
    std::span<const hal::byte> p_data_out,
    std::span<hal::byte> p_data_in,
    hal::function_ref<hal::timeout_function> p_timeout) = 0;
};
}  // namespace hal

```

