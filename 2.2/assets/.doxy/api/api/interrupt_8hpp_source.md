

# File interrupt.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-armcortex**](dir_b3459571a2adf19d50d3ad84e10dbc87.md) **>** [**interrupt.hpp**](interrupt_8hpp.md)

[Go to the documentation of this file](interrupt_8hpp.md)

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

#include <array>
#include <span>
#include <utility>

#include <libhal/error.hpp>

namespace hal::cortex_m {
using interrupt_pointer = void (*)();

class interrupt
{
public:
  static constexpr size_t core_interrupts = 16;

  class exception_number
  {
  public:
    constexpr exception_number(std::uint16_t p_id)
      : m_id(p_id)
    {
    }

    constexpr exception_number(exception_number& p_id) = default;
    constexpr exception_number& operator=(exception_number& p_id) = default;

    static constexpr uint32_t index_position = 5;

    static constexpr uint32_t enable_mask_code = 0x1F;

    [[nodiscard]] constexpr bool default_enabled() const
    {
      return m_id < core_interrupts;
    }

    [[nodiscard]] constexpr std::uint32_t to_irq_number() const
    {
      return static_cast<std::uint32_t>(m_id - core_interrupts);
    }

    [[nodiscard]] constexpr std::uint32_t register_index() const
    {
      return to_irq_number() >> index_position;
    }

    [[nodiscard]] constexpr std::uint32_t enable_mask() const
    {
      return 1U << (to_irq_number() & enable_mask_code);
    }

    [[nodiscard]] constexpr size_t vector_index() const
    {
      return m_id;
    }

    [[nodiscard]] bool is_valid() const
    {
      return m_id < get_vector_table().size();
    }

    [[nodiscard]] constexpr std::uint16_t get_event_number()
    {
      return m_id;
    }

  private:
    std::uint16_t m_id = 0;
  };

  static void nop();

  template<size_t VectorCount>
  static void initialize()
  {
    // Statically allocate a buffer of vectors to be used as the new IVT.
    static constexpr size_t total_vector_count = VectorCount + core_interrupts;
    alignas(512) static std::array<interrupt_pointer, total_vector_count>
      vector_buffer{};
    setup(vector_buffer);
  }

  template<size_t VectorCount>
  static void reinitialize()
  {
    reset();
    initialize<VectorCount>();
  }

  static const std::span<interrupt_pointer> get_vector_table();

  static void disable_interrupts();

  static void enable_interrupts();

  explicit interrupt(exception_number p_id);

  void enable(interrupt_pointer p_handler);

  void disable();

  [[nodiscard]] bool verify_vector_enabled(interrupt_pointer p_handler);

private:
  static void reset();
  static void setup(std::span<interrupt_pointer> p_vector_table);

  exception_number m_id;
};
}  // namespace hal::cortex_m

```

