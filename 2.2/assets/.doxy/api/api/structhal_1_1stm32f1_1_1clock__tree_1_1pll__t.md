

# Struct hal::stm32f1::clock\_tree::pll\_t



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**stm32f1**](namespacehal_1_1stm32f1.md) **>** [**clock\_tree**](structhal_1_1stm32f1_1_1clock__tree.md) **>** [**pll\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1pll__t.md)



_Defines the configuration of the PLL._ 

* `#include <clock.hpp>`















## Classes

| Type | Name |
| ---: | :--- |
| struct | [**usb\_divider\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1pll__t_1_1usb__divider__t.md) <br> |






## Public Attributes

| Type | Name |
| ---: | :--- |
|  bool | [**enable**](#variable-enable)   = = false<br> |
|  pll\_multiply | [**multiply**](#variable-multiply)   = = pll\_multiply::multiply\_by\_2<br> |
|  pll\_source | [**source**](#variable-source)   = = pll\_source::high\_speed\_internal<br> |
|  struct [**hal::stm32f1::clock\_tree::pll\_t::usb\_divider\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1pll__t_1_1usb__divider__t.md) | [**usb**](#variable-usb)   = = {}<br> |












































## Public Attributes Documentation




### variable enable 

```C++
bool hal::stm32f1::clock_tree::pll_t::enable;
```






### variable multiply 

```C++
pll_multiply hal::stm32f1::clock_tree::pll_t::multiply;
```






### variable source 

```C++
pll_source hal::stm32f1::clock_tree::pll_t::source;
```






### variable usb 

```C++
struct hal::stm32f1::clock_tree::pll_t::usb_divider_t hal::stm32f1::clock_tree::pll_t::usb;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-stm32f1/clock.hpp`

