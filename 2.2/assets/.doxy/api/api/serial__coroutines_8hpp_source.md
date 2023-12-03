

# File serial\_coroutines.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-util**](dir_5e94bd3e75b6b11eff60149e0bc5664b.md) **>** [**serial\_coroutines.hpp**](serial__coroutines_8hpp.md)

[Go to the documentation of this file](serial__coroutines_8hpp.md)

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

#include <cctype>
#include <cstdint>
#include <optional>
#include <span>

#include <libhal/error.hpp>
#include <libhal/serial.hpp>
#include <libhal/timeout.hpp>
#include <libhal/units.hpp>

#include "as_bytes.hpp"
#include "comparison.hpp"
#include "enum.hpp"

namespace hal {
class skip_past
{
public:
  skip_past(serial& p_serial,
            std::span<const hal::byte> p_sequence,
            size_t p_read_limit = 32)
    : m_serial(&p_serial)
    , m_sequence(p_sequence)
    , m_read_limit(p_read_limit)
  {
  }

  result<work_state> operator()()
  {
    if (m_search_index == m_sequence.size()) {
      return work_state::finished;
    }

    for (size_t read_limit = 0; read_limit < m_read_limit; read_limit++) {
      std::array<hal::byte, 1> buffer;
      auto read_result = HAL_CHECK(m_serial->read(buffer));

      if (read_result.data.size() != buffer.size()) {
        return work_state::in_progress;
      }

      // Check if the next byte received matches the sequence
      if (m_sequence[m_search_index] == read_result.data[0]) {
        m_search_index++;
      } else {  // Otherwise set the search index back to the start.
        m_search_index = 0;
      }

      // Check if the search index is equal to the size of the sequence size
      if (m_search_index == m_sequence.size()) {
        return work_state::finished;
      }
    }

    return work_state::in_progress;
  }

private:
  serial* m_serial;
  std::span<const hal::byte> m_sequence;
  size_t m_read_limit;
  size_t m_search_index = 0;
};

class read_into
{
public:
  read_into(serial& p_serial,
            std::span<hal::byte> p_buffer,
            size_t p_read_limit = 32)
    : m_serial(&p_serial)
    , m_buffer(p_buffer)
    , m_read_limit(p_read_limit)
  {
  }

  result<work_state> operator()()
  {
    for (size_t read_limit = 0; read_limit < m_read_limit; read_limit++) {
      if (m_buffer.empty()) {
        return work_state::finished;
      }

      auto read_result = HAL_CHECK(m_serial->read(m_buffer));
      // Set the m_buffer to the amount of bytes remaining to be read.
      m_buffer = m_buffer.subspan(read_result.data.size());

      if (read_result.data.empty()) {
        return work_state::in_progress;
      }
    }

    return work_state::in_progress;
  }

private:
  serial* m_serial;
  std::span<hal::byte> m_buffer;
  size_t m_read_limit;
};

class read_upto
{
public:
  read_upto(serial& p_serial,
            std::span<const hal::byte> p_sequence,
            std::span<hal::byte> p_buffer,
            size_t p_read_limit = 32)
    : m_serial(&p_serial)
    , m_sequence(p_sequence)
    , m_buffer(p_buffer)
    , m_read_limit(p_read_limit)
  {
  }

  result<work_state> operator()()
  {
    static constexpr size_t read_length = 1;
    if (m_search_index == m_sequence.size()) {
      return work_state::finished;
    }
    if (m_buffer.empty()) {
      return work_state::failed;
    }

    for (size_t read_limit = 0; read_limit < m_read_limit; read_limit++) {
      auto read_result =
        HAL_CHECK(m_serial->read(m_buffer.subspan(0, read_length)));

      if (read_result.data.size() == 0) {
        return work_state::in_progress;
      }

      // Check if the next byte received matches the sequence
      if (m_sequence[m_search_index] == read_result.data[0]) {
        m_search_index++;
      } else {  // Otherwise set the search index back to the start.
        m_search_index = 0;
      }

      // Check if the search index is equal to the size of the sequence size
      if (m_search_index == m_sequence.size()) {
        return work_state::finished;
      }

      m_buffer = m_buffer.subspan(read_length);

      if (m_buffer.empty()) {
        return work_state::failed;
      }
    }

    return work_state::in_progress;
  }

private:
  serial* m_serial;
  std::span<const hal::byte> m_sequence;
  std::span<hal::byte> m_buffer;
  size_t m_read_limit;
  size_t m_search_index = 0;
};

class read_uint32
{
public:
  read_uint32(serial& p_serial, size_t p_read_limit = 32)
    : m_serial(&p_serial)
    , m_read_limit(p_read_limit)
  {
  }

  result<work_state> operator()()
  {
    if (m_finished) {
      return work_state::finished;
    }

    for (size_t read_limit = 0; read_limit < m_read_limit; read_limit++) {
      std::array<hal::byte, 1> buffer;
      auto read_result = HAL_CHECK(m_serial->read(buffer));

      if (read_result.data.size() != buffer.size()) {
        return work_state::in_progress;
      }

      if (std::isdigit(static_cast<char>(read_result.data[0]))) {
        m_integer_value *= 10;
        m_integer_value += read_result.data[0] - hal::byte('0');
        m_found_digit = true;
      } else if (m_found_digit) {
        m_finished = true;
        return work_state::finished;
      }
    }

    return work_state::in_progress;
  }

  std::optional<uint32_t> get()
  {
    if (!m_finished) {
      return std::nullopt;
    }
    return m_integer_value;
  }

private:
  serial* m_serial;
  size_t m_read_limit;
  std::uint32_t m_integer_value = 0;
  bool m_found_digit = false;
  bool m_finished = false;
};
}  // namespace hal

```

