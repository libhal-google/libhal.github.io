

# File spi.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-mock**](dir_24679974995b72317f1fb09ac5dd2fb9.md) **>** [**spi.hpp**](libhal-mock_2spi_8hpp.md)

[Go to the documentation of this file](libhal-mock_2spi_8hpp.md)

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

#include "testing.hpp"
#include <libhal/spi.hpp>
#include <libhal/units.hpp>

namespace hal::mock {
struct write_only_spi : public hal::spi
{
  void reset()
  {
    spy_configure.reset();
    write_record.clear();
  }

  spy_handler<settings> spy_configure;
  std::vector<std::vector<hal::byte>> write_record;

private:
  status driver_configure(const settings& p_settings) override
  {
    return spy_configure.record(p_settings);
  };

  result<transfer_t> driver_transfer(
    std::span<const hal::byte> p_data_out,
    [[maybe_unused]] std::span<hal::byte> p_data_in,
    [[maybe_unused]] hal::byte p_filler) override
  {
    write_record.push_back({ p_data_out.begin(), p_data_out.end() });
    return transfer_t{};
  };
};
}  // namespace hal::mock

```

