

# File bit.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-util**](dir_5e94bd3e75b6b11eff60149e0bc5664b.md) **>** [**bit.hpp**](bit_8hpp.md)

[Go to the documentation of this file](bit_8hpp.md)

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

#include <concepts>
#include <cstddef>
#include <cstdint>
#include <limits>

namespace hal {
struct bitmask
{
  std::uint32_t position;
  std::uint32_t width;

  template<std::uint32_t position1, std::uint32_t position2>
  static consteval bitmask from()
  {
    constexpr std::uint32_t plus_one = 1;
    if constexpr (position1 < position2) {
      return bitmask{ .position = position1,
                      .width = plus_one + (position2 - position1) };
    } else {
      return bitmask{ .position = position2,
                      .width = plus_one + (position1 - position2) };
    }
  }

  template<std::uint32_t position>
  static constexpr bitmask from()
  {
    return bitmask{ .position = position, .width = 1U };
  }

  static consteval bitmask from(std::uint32_t position1,
                                std::uint32_t position2)
  {
    constexpr std::uint32_t plus_one = 1;
    if (position1 < position2) {
      return bitmask{ .position = position1,
                      .width = plus_one + (position2 - position1) };
    } else {
      return bitmask{ .position = position2,
                      .width = plus_one + (position1 - position2) };
    }
  }

  static constexpr bitmask from(std::uint32_t position)
  {
    return bitmask{ .position = position, .width = 1U };
  }

  template<std::unsigned_integral T>
  constexpr auto origin() const
  {
    // At compile time, generate variable containing all 1s with the size of the
    // target parameter.
    constexpr T field_of_ones = std::numeric_limits<T>::max();

    // At compile time calculate the number of bits in the target parameter.
    constexpr size_t target_width = sizeof(T) * 8;

    // Create bitmask by shifting the set of 1s down so that the number of 1s
    // from bit position 0 is equal to the width parameter.
    T mask_at_origin = static_cast<T>(field_of_ones >> (target_width - width));

    return mask_at_origin;
  }

  template<std::unsigned_integral T>
  constexpr auto value() const
  {
    return static_cast<T>(origin<T>() << position);
  }

  constexpr bool operator==(const bitmask& other)
  {
    return other.position == position && other.width == width;
  }
};

template<size_t ByteIndex>
struct byte_mask
{
  static constexpr hal::bitmask value{ .position = ByteIndex, .width = 8 };
};

template<size_t ByteIndex>
constexpr hal::bitmask byte_m = byte_mask<ByteIndex>::value;

template<size_t NibbleIndex>
struct nibble_mask
{
  static constexpr hal::bitmask value{ .position = NibbleIndex, .width = 4 };
};

template<size_t NibbleIndex>
constexpr hal::bitmask nibble_m = nibble_mask<NibbleIndex>::value;

template<bitmask field>
constexpr auto extract(std::unsigned_integral auto p_value)
{
  using T = decltype(p_value);
  // Shift desired value to the right to position 0
  const auto shifted = p_value >> field.position;
  // Mask away any bits left of the value based on the field width
  const auto masked = shifted & field.origin<T>();
  // Leaving only the desired bits
  return static_cast<T>(masked);
}

constexpr auto extract(bitmask p_field, std::unsigned_integral auto p_value)
{
  using T = decltype(p_value);
  // Shift desired value to the right to position 0
  const auto shifted = p_value >> p_field.position;
  // Mask away any bits left of the value based on the field width
  const auto masked = shifted & p_field.origin<T>();
  // Leaving only the desired bits
  return static_cast<T>(masked);
}

template<std::unsigned_integral T>
class value
{
public:
  static constexpr std::uint32_t width = sizeof(T) * 8;

  constexpr value(T p_initial_value = 0)
    : m_value(p_initial_value)
  {
  }

  template<bitmask field>
  constexpr auto& set()
  {
    static_assert(field.position < width,
                  "Bit position exceeds register width");
    constexpr auto mask = static_cast<T>(1U << field.position);

    m_value = m_value | mask;

    return *this;
  }

  constexpr auto& set(bitmask p_field)
  {
    const auto mask = static_cast<T>(1U << p_field.position);

    m_value = m_value | mask;

    return *this;
  }

  template<bitmask field>
  constexpr auto& clear()
  {
    static_assert(field.position < width,
                  "Bit position exceeds register width");
    constexpr auto mask = static_cast<T>(1U << field.position);
    constexpr auto inverted_mask = ~mask;

    m_value = m_value & inverted_mask;

    return *this;
  }

  constexpr auto& clear(bitmask p_field)
  {
    const auto mask = static_cast<T>(1U << p_field.position);
    const auto inverted_mask = ~mask;

    m_value = m_value & inverted_mask;

    return *this;
  }

  template<bitmask field>
  constexpr auto& toggle()
  {
    static_assert(field.position < width,
                  "Bit position exceeds register width");

    constexpr auto mask = static_cast<T>(1U << field.position);

    m_value = m_value ^ mask;

    return *this;
  }

  constexpr auto& toggle(bitmask p_field)
  {
    const auto mask = static_cast<T>(1U << p_field.position);

    m_value = m_value ^ mask;

    return *this;
  }

  template<bitmask field>
  constexpr auto& insert(std::unsigned_integral auto p_value)
  {
    const auto value_to_insert = static_cast<T>(p_value);
    // AND value with mask to remove any bits beyond the specified width.
    // Shift masked value into bit position and OR with target value.
    const auto shifted_field = value_to_insert << field.position;
    const auto new_value = shifted_field & field.value<T>();

    // Clear width's number of bits in the target value at the bit position
    // specified.
    m_value = m_value & ~field.value<T>();
    m_value = m_value | static_cast<T>(new_value);

    return *this;
  }

  constexpr auto& insert(bitmask p_field, std::unsigned_integral auto p_value)
  {
    // AND value with mask to remove any bits beyond the specified width.
    // Shift masked value into bit position and OR with target value.
    auto shifted_field = static_cast<T>(p_value) << p_field.position;
    auto new_value = shifted_field & p_field.value<T>();

    // Clear width's number of bits in the target value at the bit position
    // specified.
    m_value = m_value & ~p_field.value<T>();
    m_value = m_value | static_cast<T>(new_value);

    return *this;
  }

  template<std::integral U>
  [[nodiscard]] constexpr auto to()
  {
    return static_cast<U>(m_value);
  }

  [[nodiscard]] constexpr T get()
  {
    return m_value;
  }

protected:
  T m_value;
};

template<std::unsigned_integral T>
class modify : public value<T>
{
public:
  constexpr modify(volatile T& p_register_reference)
    : value<T>(p_register_reference)
    , m_pointer(&p_register_reference)
  {
  }

  ~modify()
  {
    *m_pointer = this->m_value;
  }

private:
  volatile T* m_pointer;
};
}  // namespace hal

```

