

# Struct hal::interrupt\_pin::settings



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**interrupt\_pin**](classhal_1_1interrupt__pin.md) **>** [**settings**](structhal_1_1interrupt__pin_1_1settings.md)



_Generic settings for interrupt pins._ 

* `#include <interrupt_pin.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  [**pin\_resistor**](namespacehal.md#enum-pin_resistor) | [**resistor**](#variable-resistor)   = = pin\_resistor::pull\_up<br>_Pull resistor for an interrupt pin._  |
|  [**trigger\_edge**](classhal_1_1interrupt__pin.md#enum-trigger_edge) | [**trigger**](#variable-trigger)   = = trigger\_edge::rising<br>_The trigger condition that will signal the system to run the callback._  |












































## Public Attributes Documentation




### variable resistor 

_Pull resistor for an interrupt pin._ 
```C++
pin_resistor hal::interrupt_pin::settings::resistor;
```



In general, it is highly advised to either set the pull resistor to something other than "none" or to attach an external pull up resistor to the interrupt pin in order to prevent random interrupt from firing. 


        



### variable trigger 

```C++
trigger_edge hal::interrupt_pin::settings::trigger;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/interrupt_pin.hpp`

