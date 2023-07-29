

# Class hal::inert\_dac



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**inert\_dac**](classhal_1_1inert__dac.md)



_Inert implementation of Digital to Analog Converter (DAC) hardware._ 

* `#include <inert_dac.hpp>`



Inherits the following classes: [hal::dac](classhal_1_1dac.md)
























































## Public Functions inherited from hal::dac

See [hal::dac](classhal_1_1dac.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**write\_t**](structhal_1_1dac_1_1write__t.md) &gt; | [**write**](#function-write) (float p\_percentage) <br>_Set the output voltage of the DAC._  |
| virtual  | [**~dac**](#function-dac) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**inert\_dac**](classhal_1_1inert__dac.md) &gt; | [**create**](#function-create) () <br>_Factory function to create_ [_**inert\_dac**_](classhal_1_1inert__dac.md) _object._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**inert\_dac**_](classhal_1_1inert__dac.md) _object._
```C++
static inline result< inert_dac > hal::inert_dac::create () 
```





**Returns:**

result&lt;inert\_dac&gt; - Constructed [**inert\_dac**](classhal_1_1inert__dac.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/inert_drivers/inert_dac.hpp`

