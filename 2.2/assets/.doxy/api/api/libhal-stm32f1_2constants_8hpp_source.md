

# File constants.hpp

[**File List**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-stm32f1**](dir_382b22576b48b83d585887c4aba4f004.md) **>** [**constants.hpp**](libhal-stm32f1_2constants_8hpp.md)

[Go to the documentation of this file](libhal-stm32f1_2constants_8hpp.md)

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

namespace hal::stm32f1 {

static constexpr std::uint32_t bus_id_offset = 32;
static constexpr std::uint32_t ahb_bus = bus_id_offset * 0;
static constexpr std::uint32_t apb1_bus = bus_id_offset * 1;
static constexpr std::uint32_t apb2_bus = bus_id_offset * 2;
static constexpr std::uint32_t beyond_bus = bus_id_offset * 3;

enum class peripheral : std::uint8_t
{
  dma1 = ahb_bus + 0,
  dma2 = ahb_bus + 1,
  sram = ahb_bus + 2,
  flitf = ahb_bus + 4,
  crc = ahb_bus + 6,
  fsmc = ahb_bus + 8,
  sdio = ahb_bus + 10,

  timer2 = apb1_bus + 0,
  timer3 = apb1_bus + 1,
  timer4 = apb1_bus + 2,
  timer5 = apb1_bus + 3,
  timer6 = apb1_bus + 4,
  timer7 = apb1_bus + 5,
  timer12 = apb1_bus + 6,
  timer13 = apb1_bus + 7,
  timer14 = apb1_bus + 8,
  window_watchdog = apb1_bus + 11,
  spi2 = apb1_bus + 14,
  spi3 = apb1_bus + 15,
  usart2 = apb1_bus + 17,
  usart3 = apb1_bus + 18,
  uart4 = apb1_bus + 19,
  uart5 = apb1_bus + 20,
  i2c1 = apb1_bus + 21,
  i2c2 = apb1_bus + 22,
  usb = apb1_bus + 23,
  can1 = apb1_bus + 25,
  backup_clock = apb1_bus + 27,
  power = apb1_bus + 28,
  dac = apb1_bus + 29,

  afio = apb2_bus + 0,
  gpio_a = apb2_bus + 2,
  gpio_b = apb2_bus + 3,
  gpio_c = apb2_bus + 4,
  gpio_d = apb2_bus + 5,
  gpio_e = apb2_bus + 6,
  gpio_f = apb2_bus + 7,
  gpio_g = apb2_bus + 8,
  adc1 = apb2_bus + 9,
  adc2 = apb2_bus + 10,
  timer1 = apb2_bus + 11,
  spi1 = apb2_bus + 12,
  timer8 = apb2_bus + 13,
  usart1 = apb2_bus + 14,
  adc3 = apb2_bus + 15,
  timer9 = apb2_bus + 19,
  timer10 = apb2_bus + 20,
  timer11 = apb2_bus + 21,

  cpu = beyond_bus + 0,
  system_timer = beyond_bus + 1,
  i2s = beyond_bus + 2,
};

enum class irq : std::uint16_t
{
  window_watchdog = 0,
  pvd = 1,
  tamper = 2,
  rtc = 3,
  flash = 4,
  rcc = 5,
  exti0 = 6,
  exti1 = 7,
  exti2 = 8,
  exti3 = 9,
  exti4 = 10,
  dma1_channel1 = 11,
  dma1_channel2 = 12,
  dma1_channel3 = 13,
  dma1_channel4 = 14,
  dma1_channel5 = 15,
  dma1_channel6 = 16,
  dma1_channel7 = 17,
  adc1 = 18,
  adc1_2 = 18,
  usb_hp_can1_tx = 19,
  can1_tx = 19,
  usb_lp_can1_rx0 = 20,
  can1_rx0 = 20,
  can1_rx1 = 21,
  can1_sce = 22,
  exti9_5 = 23,
  tim1_brk = 24,
  tim1_brk_tim15 = 24,
  tim1_brk_tim9 = 24,
  tim1_up = 25,
  tim1_up_tim16 = 25,
  tim1_up_tim10 = 25,
  tim1_trg_com = 26,
  tim1_trg_com_tim11 = 26,
  tim1_cc = 27,
  tim2 = 28,
  tim3 = 29,
  tim4 = 30,
  i2c1_ev = 31,
  i2c1_er = 32,
  i2c2_ev = 33,
  i2c2_er = 34,
  spi1 = 35,
  spi2 = 36,
  usart1 = 37,
  usart2 = 38,
  usart3 = 39,
  exti15_10 = 40,
  rtcalarm = 41,
  usbwakeup = 42,
  cec = 42,
  otg_fs_wkup = 42,
  tim8_brk = 43,
  tim12 = 43,
  tim8_brk_tim12 = 43,
  tim8_up = 44,
  tim13 = 44,
  tim8_up_tim13 = 44,
  tim8_trg_com = 45,
  tim14 = 45,
  tim8_trg_com_tim14 = 45,
  tim8_cc = 46,
  adc3 = 47,
  fsmc = 48,
  sdio = 49,
  tim5 = 50,
  spi3 = 51,
  uart4 = 52,
  uart5 = 53,
  tim6_dac = 54,
  tim6 = 54,
  tim7 = 55,
  dma2_channel1 = 56,
  dma2_channel2 = 57,
  dma2_channel3 = 58,
  dma2_channel4_5 = 59,
  dma2_channel4 = 59,
  dma2_channel5 = 60,
  eth = 61,
  eth_wkup = 62,
  can2_tx = 63,
  can2_rx0 = 64,
  can2_rx1 = 65,
  can2_sce = 66,
  otg_fs = 67,
  max,
};

enum class error_t : std::uint16_t
{
  max,
};
}  // namespace hal::stm32f1

```

