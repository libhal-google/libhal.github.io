

# Struct hal::lpc40::clock::configuration::cpu\_t



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**lpc40**](namespacehal_1_1lpc40.md) **>** [**clock**](classhal_1_1lpc40_1_1clock.md) **>** [**configuration**](structhal_1_1lpc40_1_1clock_1_1configuration.md) **>** [**cpu\_t**](structhal_1_1lpc40_1_1clock_1_1configuration_1_1cpu__t.md)



_cpu clock control config struct_ 

* `#include <clock.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  uint8\_t | [**divider**](#variable-divider)   = = 1<br>_Divide the input clock from IRC or PLL0._  |
|  bool | [**use\_pll0**](#variable-use_pll0)   = = false<br> |












































## Public Attributes Documentation




### variable divider 

```C++
uint8_t hal::lpc40::clock::configuration::cpu_t::divider;
```






### variable use\_pll0 


```C++
bool hal::lpc40::clock::configuration::cpu_t::use_pll0;
```



If true, use PLL0, if false, use system clock which is defined as 12MHz 


        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-lpc40/clock.hpp`

