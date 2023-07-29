

# Struct hal::output\_pin::settings



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**output\_pin**](classhal_1_1output__pin.md) **>** [**settings**](structhal_1_1output__pin_1_1settings.md)



_Generic settings for output pins._ 

* `#include <output_pin.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  bool | [**open\_drain**](#variable-open_drain)   = = false<br> |
|  pin\_resistor | [**resistor**](#variable-resistor)   = = pin\_resistor::none<br> |












































## Public Attributes Documentation




### variable open\_drain 


```C++
bool hal::output_pin::settings::open_drain;
```



Starting level of the output pin. HIGH voltage defined as true and LOW voltage defined as false. 


        



### variable resistor 


```C++
pin_resistor hal::output_pin::settings::resistor;
```



Pull resistor for the pin. This generally only helpful when open drain is enabled. 


        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/output_pin.hpp`

