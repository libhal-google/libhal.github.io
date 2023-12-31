

# Class hal::soft::inert\_adc



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**soft**](namespacehal_1_1soft.md) **>** [**inert\_adc**](classhal_1_1soft_1_1inert__adc.md)



_Inert implementation of Analog to Digital Converter (ADC) hardware._ 

* `#include <inert_adc.hpp>`



Inherits the following classes: [hal::adc](classhal_1_1adc.md)
























































## Public Functions inherited from hal::adc

See [hal::adc](classhal_1_1adc.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**read\_t**](structhal_1_1adc_1_1read__t.md) &gt; | [**read**](#function-read) () <br>_Sample the analog to digital converter and return the result._  |
| virtual  | [**~adc**](#function-adc) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**inert\_adc**](classhal_1_1soft_1_1inert__adc.md) &gt; | [**create**](#function-create) ([**read\_t**](structhal_1_1adc_1_1read__t.md) p\_result) <br>_Factory function to create_ [_**inert\_adc**_](classhal_1_1soft_1_1inert__adc.md) _object._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**inert\_adc**_](classhal_1_1soft_1_1inert__adc.md) _object._
```C++
static inline result< inert_adc > hal::soft::inert_adc::create (
    read_t p_result
) 
```





**Parameters:**


* `p_result` - read\_t object to return when reading the [**inert\_adc**](classhal_1_1soft_1_1inert__adc.md) 



**Returns:**

result&lt;inert\_adc&gt; - Constructed [**inert\_adc**](classhal_1_1soft_1_1inert__adc.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/inert_drivers/inert_adc.hpp`

