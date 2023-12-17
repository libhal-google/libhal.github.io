

# File constants.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-lpc40**](dir_2fff134b595a3a874b0307aab0eea726.md) **>** [**constants.hpp**](libhal-lpc40_2constants_8hpp.md)

[Go to the documentation of this file](libhal-lpc40_2constants_8hpp.md)

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

namespace hal::lpc40 {
enum class peripheral : std::uint8_t
{
  lcd = 0,
  timer0 = 1,
  timer1 = 2,
  uart0 = 3,
  uart1 = 4,
  pwm0 = 5,
  pwm1 = 6,
  i2c0 = 7,
  uart4 = 8,
  rtc = 9,
  ssp1 = 10,
  emc = 11,
  adc = 12,
  can1 = 13,
  can2 = 14,
  gpio = 15,
  spifi = 16,
  motor_control_pwm = 17,
  quadrature_encoder = 18,
  i2c1 = 19,
  ssp2 = 20,
  ssp0 = 21,
  timer2 = 22,
  timer3 = 23,
  uart2 = 24,
  uart3 = 25,
  i2c2 = 26,
  i2s = 27,
  sdcard = 28,
  gpdma = 29,
  ethernet = 30,
  usb = 31,
  cpu,
};

enum class irq : std::uint16_t
{
  wdt = 16 + 0,
  timer0 = 16 + 1,
  timer1 = 16 + 2,
  timer2 = 16 + 3,
  timer3 = 16 + 4,
  uart0 = 16 + 5,
  uart1 = 16 + 6,
  uart2 = 16 + 7,
  uart3 = 16 + 8,
  pwm1 = 16 + 9,
  i2c0 = 16 + 10,
  i2c1 = 16 + 11,
  i2c2 = 16 + 12,
  reserved0 = 16 + 13,
  ssp0 = 16 + 14,
  ssp1 = 16 + 15,
  pll0 = 16 + 16,
  rtc = 16 + 17,
  eint0 = 16 + 18,
  eint1 = 16 + 19,
  eint2 = 16 + 20,
  eint3 = 16 + 21,
  adc = 16 + 22,
  bod = 16 + 23,
  usb = 16 + 24,
  can = 16 + 25,
  dma = 16 + 26,
  i2s = 16 + 27,
  enet = 16 + 28,
  mci = 16 + 29,
  mcpwm = 16 + 30,
  qei = 16 + 31,
  pll1 = 16 + 32,
  usbactivity = 16 + 33,
  canactivity = 16 + 34,
  uart4 = 16 + 35,
  ssp2 = 16 + 36,
  lcd = 16 + 37,
  gpio = 16 + 38,
  pwm0 = 16 + 39,
  eeprom = 16 + 40,
  cmp0 = 16 + 41,
  cmp1 = 16 + 42,
  max,
};
enum class error_t
{
  requires_usage_of_external_oscillator,
  baud_rate_impossible,
};
}  // namespace hal::lpc40

```

