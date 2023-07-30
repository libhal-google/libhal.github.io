

# Struct hal::stm32f1::clock\_tree::ahb\_t



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**stm32f1**](namespacehal_1_1stm32f1.md) **>** [**clock\_tree**](structhal_1_1stm32f1_1_1clock__tree.md) **>** [**ahb\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1ahb__t.md)



_Defines the configuration of the dividers beyond system clock mux._ 

* `#include <clock.hpp>`















## Classes

| Type | Name |
| ---: | :--- |
| struct | [**apb1\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1ahb__t_1_1apb1__t.md) <br>_Maximum rate of 36 MHz._  |
| struct | [**apb2\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1ahb__t_1_1apb2__t.md) <br> |






## Public Attributes

| Type | Name |
| ---: | :--- |
|  struct [**hal::stm32f1::clock\_tree::ahb\_t::apb1\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1ahb__t_1_1apb1__t.md) | [**apb1**](#variable-apb1)   = = {}<br> |
|  struct [**hal::stm32f1::clock\_tree::ahb\_t::apb2\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1ahb__t_1_1apb2__t.md) | [**apb2**](#variable-apb2)   = = {}<br> |
|  ahb\_divider | [**divider**](#variable-divider)   = = ahb\_divider::divide\_by\_1<br> |












































## Public Attributes Documentation




### variable apb1 

```C++
struct hal::stm32f1::clock_tree::ahb_t::apb1_t hal::stm32f1::clock_tree::ahb_t::apb1;
```






### variable apb2 

```C++
struct hal::stm32f1::clock_tree::ahb_t::apb2_t hal::stm32f1::clock_tree::ahb_t::apb2;
```






### variable divider 

```C++
ahb_divider hal::stm32f1::clock_tree::ahb_t::divider;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-stm32f1/clock.hpp`

