

# Namespace hal::stm32f1



[**Namespace List**](namespaces.md) **>** [**hal**](namespacehal.md) **>** [**stm32f1**](namespacehal_1_1stm32f1.md)




















## Classes

| Type | Name |
| ---: | :--- |
| struct | [**clock\_tree**](structhal_1_1stm32f1_1_1clock__tree.md) <br> |
| class | [**output\_pin**](classhal_1_1stm32f1_1_1output__pin.md) <br>_Output pin implementation for the stm32::f10x._  |


## Public Types

| Type | Name |
| ---: | :--- |
| enum std::uint8\_t | [**adc\_divider**](#enum-adc_divider)  <br>_Available dividers for the ADC bus._  |
| enum std::uint8\_t | [**ahb\_divider**](#enum-ahb_divider)  <br>_Available dividers for the AHB bus._  |
| enum std::uint8\_t | [**apb\_divider**](#enum-apb_divider)  <br>_Available dividers for the APB bus._  |
| enum std::uint16\_t | [**error\_t**](#enum-error_t)  <br>_Error types for stm32f1._  |
| enum std::uint16\_t | [**irq**](#enum-irq)  <br>_List of interrupt request numbers for this platform._  |
| enum std::uint8\_t | [**peripheral**](#enum-peripheral)  <br>_List of each peripheral and their power on id number for this platform._  |
| enum std::uint8\_t | [**pll\_multiply**](#enum-pll_multiply)  <br>_PLL frequency multiplication options._  |
| enum std::uint8\_t | [**pll\_source**](#enum-pll_source)  <br>_Available clock sources for the PLL._  |
| enum std::uint8\_t | [**rtc\_source**](#enum-rtc_source)  <br>_Available clock sources for the RTC._  |
| enum std::uint8\_t | [**system\_clock\_select**](#enum-system_clock_select)  <br>_Available clock sources available for the system clock._  |
| enum std::uint8\_t | [**usb\_divider**](#enum-usb_divider)  <br>_Available dividers for the USB peripheral._  |




## Public Attributes

| Type | Name |
| ---: | :--- |
|  constexpr auto | [**flash\_clock**](#variable-flash_clock)   = = internal\_high\_speed\_oscillator<br>_Constant for the frequency of the Flash Controller._  |
|  constexpr auto | [**internal\_high\_speed\_oscillator**](#variable-internal_high_speed_oscillator)   = = 8.0\_MHz<br>_Constant for the frequency of the HSE._  |
|  constexpr auto | [**internal\_low\_speed\_oscillator**](#variable-internal_low_speed_oscillator)   = = 20.0\_kHz<br>_Constant for the frequency of the LSE._  |
|  constexpr auto | [**watchdog\_clock\_rate**](#variable-watchdog_clock_rate)   = = internal\_low\_speed\_oscillator<br>_Constant for the frequency of the Watch Dog Peripheral._  |


## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  constexpr std::uint32\_t | [**ahb\_bus**](#variable-ahb_bus)   = = bus\_id\_offset \* 0<br>_Bit position of AHB._  |
|  constexpr std::uint32\_t | [**apb1\_bus**](#variable-apb1_bus)   = = bus\_id\_offset \* 1<br>_Bit position of APB1._  |
|  constexpr std::uint32\_t | [**apb2\_bus**](#variable-apb2_bus)   = = bus\_id\_offset \* 2<br>_Bit position of AHB2._  |
|  constexpr std::uint32\_t | [**beyond\_bus**](#variable-beyond_bus)   = = bus\_id\_offset \* 3<br>_Bit position of systems outside of any bus._  |
|  constexpr std::uint32\_t | [**bus\_id\_offset**](#variable-bus_id_offset)   = = 32<br>_Number of bits between each enable register._  |














## Public Functions

| Type | Name |
| ---: | :--- |
|  void | [**configure\_clocks**](#function-configure_clocks) ([**clock\_tree**](structhal_1_1stm32f1_1_1clock__tree.md) p\_clock\_tree) <br> |
|  hal::hertz | [**frequency**](#function-frequency) (peripheral p\_id) <br> |
|  void | [**release\_jtag\_pins**](#function-release_jtag_pins) () <br>_Make JTAG pins not associated with SWD available as IO._  |




























## Public Types Documentation




### enum adc\_divider 

```C++
enum hal::stm32f1::adc_divider {
    divide_by_2 = 0b00,
    divide_by_4 = 0b01,
    divide_by_6 = 0b10,
    divide_by_8 = 0b11
};
```






### enum ahb\_divider 

```C++
enum hal::stm32f1::ahb_divider {
    divide_by_1 = 0,
    divide_by_2 = 0b1000,
    divide_by_4 = 0b1001,
    divide_by_8 = 0b1010,
    divide_by_16 = 0b1011,
    divide_by_64 = 0b1100,
    divide_by_128 = 0b1101,
    divide_by_256 = 0b1110,
    divide_by_512 = 0b1111
};
```






### enum apb\_divider 

```C++
enum hal::stm32f1::apb_divider {
    divide_by_1 = 0,
    divide_by_2 = 0b100,
    divide_by_4 = 0b101,
    divide_by_8 = 0b110,
    divide_by_16 = 0b111
};
```






### enum error\_t 

```C++
enum hal::stm32f1::error_t {
    max
};
```






### enum irq 

```C++
enum hal::stm32f1::irq {
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
    max
};
```






### enum peripheral 

```C++
enum hal::stm32f1::peripheral {
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
    i2s = beyond_bus + 2
};
```






### enum pll\_multiply 

```C++
enum hal::stm32f1::pll_multiply {
    multiply_by_2 = 0b0000,
    multiply_by_3 = 0b0001,
    multiply_by_4 = 0b0010,
    multiply_by_5 = 0b0011,
    multiply_by_6 = 0b0100,
    multiply_by_7 = 0b0101,
    multiply_by_8 = 0b0110,
    multiply_by_9 = 0b0111,
    multiply_by_10 = 0b1000,
    multiply_by_11 = 0b1001,
    multiply_by_12 = 0b1010,
    multiply_by_13 = 0b1011,
    multiply_by_14 = 0b1100,
    multiply_by_15 = 0b1101,
    multiply_by_16 = 0b1110
};
```






### enum pll\_source 

```C++
enum hal::stm32f1::pll_source {
    high_speed_internal = 0b0,
    high_speed_external = 0b1,
    high_speed_external_divided_by_2 = 0b11
};
```






### enum rtc\_source 

```C++
enum hal::stm32f1::rtc_source {
    no_clock = 0b00,
    low_speed_internal = 0b01,
    low_speed_external = 0b10,
    high_speed_external_divided_by_128 = 0b11
};
```






### enum system\_clock\_select 

```C++
enum hal::stm32f1::system_clock_select {
    high_speed_internal = 0b00,
    high_speed_external = 0b01,
    pll = 0b10
};
```






### enum usb\_divider 

```C++
enum hal::stm32f1::usb_divider {
    divide_by_1 = 1,
    divide_by_1_point_5 = 0
};
```



## Public Attributes Documentation




### variable flash\_clock 

```C++
constexpr auto hal::stm32f1::flash_clock;
```






### variable internal\_high\_speed\_oscillator 

```C++
constexpr auto hal::stm32f1::internal_high_speed_oscillator;
```






### variable internal\_low\_speed\_oscillator 

```C++
constexpr auto hal::stm32f1::internal_low_speed_oscillator;
```






### variable watchdog\_clock\_rate 

```C++
constexpr auto hal::stm32f1::watchdog_clock_rate;
```



## Public Static Attributes Documentation




### variable ahb\_bus 

```C++
constexpr std::uint32_t hal::stm32f1::ahb_bus;
```






### variable apb1\_bus 

```C++
constexpr std::uint32_t hal::stm32f1::apb1_bus;
```






### variable apb2\_bus 

```C++
constexpr std::uint32_t hal::stm32f1::apb2_bus;
```






### variable beyond\_bus 

```C++
constexpr std::uint32_t hal::stm32f1::beyond_bus;
```






### variable bus\_id\_offset 

```C++
constexpr std::uint32_t hal::stm32f1::bus_id_offset;
```



## Public Functions Documentation




### function configure\_clocks 


```C++
void hal::stm32f1::configure_clocks (
    clock_tree p_clock_tree
) 
```





**Attention:**

If configuration of the system clocks is desired, one should consult the user manual of the target MCU in use to determine the valid clock configuration values that can/should be used. The Initialize() method is only responsible for configuring the clock system based on configurations in the clock\_configuration. Incorrect configurations may result in a hard fault or cause the clock system(s) to supply incorrect clock rate(s).




**See also:** Figure 11. Clock Tree [https://www.st.com/resource/en/reference\_manual/cd00171190-stm32f101xx-stm32f102xx-stm32f103xx-stm32f105xx-and-stm32f107xx-advanced-arm-based-32-bit-mcus-stmicroelectronics.pdf#page=126](https://www.st.com/resource/en/reference_manual/cd00171190-stm32f101xx-stm32f102xx-stm32f103xx-stm32f105xx-and-stm32f107xx-advanced-arm-based-32-bit-mcus-stmicroelectronics.pdf#page=126) 



        



### function frequency 


```C++
hal::hertz hal::stm32f1::frequency (
    peripheral p_id
) 
```





**Returns:**

the clock rate frequency of a peripheral 





        



### function release\_jtag\_pins 

_Make JTAG pins not associated with SWD available as IO._ 
```C++
void hal::stm32f1::release_jtag_pins () 
```



The GPIO pins PB3, PB4, and PA15 are default initalized to be used for JTAG purposes. If you are using SWD and want to use these pins as GPIO or as other alternative functions, this function MUST be called. 


        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-stm32f1/clock.hpp`

