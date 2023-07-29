

# Struct hal::stm32f1::clock\_tree



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**stm32f1**](namespacehal_1_1stm32f1.md) **>** [**clock\_tree**](structhal_1_1stm32f1_1_1clock__tree.md)




















## Classes

| Type | Name |
| ---: | :--- |
| struct | [**ahb\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1ahb__t.md) <br>_Defines the configuration of the dividers beyond system clock mux._  |
| struct | [**pll\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1pll__t.md) <br>_Defines the configuration of the PLL._  |
| struct | [**rtc\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1rtc__t.md) <br>_Defines the configuration for the RTC._  |






## Public Attributes

| Type | Name |
| ---: | :--- |
|  struct [**hal::stm32f1::clock\_tree::ahb\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1ahb__t.md) | [**ahb**](#variable-ahb)   = = {}<br> |
|  hal::hertz | [**high\_speed\_external**](#variable-high_speed_external)   = = 0.0\_MHz<br>_Defines the frequency of the high speed external clock signal._  |
|  hal::hertz | [**low\_speed\_external**](#variable-low_speed_external)   = = 0.0\_MHz<br>_Defines the frequency of the low speed external clock signal._  |
|  struct [**hal::stm32f1::clock\_tree::pll\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1pll__t.md) | [**pll**](#variable-pll)   = = {}<br> |
|  struct [**hal::stm32f1::clock\_tree::rtc\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1rtc__t.md) | [**rtc**](#variable-rtc)   = = {}<br> |
|  system\_clock\_select | [**system\_clock**](#variable-system_clock)   = = system\_clock\_select::high\_speed\_internal<br> |












































## Public Attributes Documentation




### variable ahb 

```C++
struct hal::stm32f1::clock_tree::ahb_t hal::stm32f1::clock_tree::ahb;
```






### variable high\_speed\_external 

```C++
hal::hertz hal::stm32f1::clock_tree::high_speed_external;
```






### variable low\_speed\_external 

```C++
hal::hertz hal::stm32f1::clock_tree::low_speed_external;
```






### variable pll 

```C++
struct hal::stm32f1::clock_tree::pll_t hal::stm32f1::clock_tree::pll;
```






### variable rtc 

```C++
struct hal::stm32f1::clock_tree::rtc_t hal::stm32f1::clock_tree::rtc;
```






### variable system\_clock 


```C++
system_clock_select hal::stm32f1::clock_tree::system_clock;
```



Defines which clock source will be use for the system. 

**Warning:**

System will lock up in the following situations:
* Select PLL, but PLL is not enabled
* Select PLL, but PLL frequency is too high
* Select High Speed External, but the frequency is kept at 0\_Mhz. 







        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-stm32f1/clock.hpp`

