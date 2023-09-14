

# Struct hal::lpc40::clock::configuration



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**lpc40**](namespacehal_1_1lpc40.md) **>** [**clock**](classhal_1_1lpc40_1_1clock.md) **>** [**configuration**](structhal_1_1lpc40_1_1clock_1_1configuration.md)



_Clock configuration object._ 

* `#include <clock.hpp>`















## Classes

| Type | Name |
| ---: | :--- |
| struct | [**cpu\_t**](structhal_1_1lpc40_1_1clock_1_1configuration_1_1cpu__t.md) <br>_cpu clock control config struct_  |
| struct | [**pll\_t**](structhal_1_1lpc40_1_1clock_1_1configuration_1_1pll__t.md) <br>_phase locked loops config struct_  |
| struct | [**spifi\_t**](structhal_1_1lpc40_1_1clock_1_1configuration_1_1spifi__t.md) <br>_spifi clock control config struct_  |
| struct | [**usb\_t**](structhal_1_1lpc40_1_1clock_1_1configuration_1_1usb__t.md) <br>_usb clock control config struct_  |






## Public Attributes

| Type | Name |
| ---: | :--- |
|  [**cpu\_t**](structhal_1_1lpc40_1_1clock_1_1configuration_1_1cpu__t.md) | [**cpu**](#variable-cpu)   = = {}<br>_cpu clock control_  |
|  bool | [**emc\_half\_cpu\_divider**](#variable-emc_half_cpu_divider)   = = false<br> |
|  [**hertz**](namespacehal.md#typedef-hertz) | [**oscillator\_frequency**](#variable-oscillator_frequency)   = = [**irc\_frequency**](classhal_1_1lpc40_1_1clock.md#variable-irc_frequency)<br>_the frequency of the input oscillator_  |
|  uint8\_t | [**peripheral\_divider**](#variable-peripheral_divider)   = = 4<br>_Defines the peripheral clock divider amount._  |
|  std::array&lt; [**pll\_t**](structhal_1_1lpc40_1_1clock_1_1configuration_1_1pll__t.md), 2 &gt; | [**pll**](#variable-pll)   = = {}<br>_phase locked loops for both pll[0] and pll[1]_  |
|  [**spifi\_t**](structhal_1_1lpc40_1_1clock_1_1configuration_1_1spifi__t.md) | [**spifi**](#variable-spifi)   = = {}<br>_spifi clock control_  |
|  [**usb\_t**](structhal_1_1lpc40_1_1clock_1_1configuration_1_1usb__t.md) | [**usb**](#variable-usb)   = = {}<br>_usb clock control_  |
|  bool | [**use\_external\_oscillator**](#variable-use_external_oscillator)   = = false<br>_set to true to use external XTC_  |












































## Public Attributes Documentation




### variable cpu 

```C++
cpu_t hal::lpc40::clock::configuration::cpu;
```






### variable emc\_half\_cpu\_divider 


```C++
bool hal::lpc40::clock::configuration::emc_half_cpu_divider;
```



Set true to make the EMC divider half as slow as the CPU divider. Set to false to set it to equal that amount. 


        



### variable oscillator\_frequency 

```C++
hertz hal::lpc40::clock::configuration::oscillator_frequency;
```






### variable peripheral\_divider 

```C++
uint8_t hal::lpc40::clock::configuration::peripheral_divider;
```






### variable pll 

```C++
std::array<pll_t, 2> hal::lpc40::clock::configuration::pll;
```






### variable spifi 

```C++
spifi_t hal::lpc40::clock::configuration::spifi;
```






### variable usb 

```C++
usb_t hal::lpc40::clock::configuration::usb;
```






### variable use\_external\_oscillator 

```C++
bool hal::lpc40::clock::configuration::use_external_oscillator;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-lpc40/clock.hpp`

