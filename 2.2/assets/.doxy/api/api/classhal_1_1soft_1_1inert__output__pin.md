

# Class hal::soft::inert\_output\_pin



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**soft**](namespacehal_1_1soft.md) **>** [**inert\_output\_pin**](classhal_1_1soft_1_1inert__output__pin.md)



_Inert implementation of digital output pin hardware._ 

* `#include <inert_output_pin.hpp>`



Inherits the following classes: [hal::output\_pin](classhal_1_1output__pin.md)
























































## Public Functions inherited from hal::output_pin

See [hal::output\_pin](classhal_1_1output__pin.md)

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1output__pin_1_1settings.md) & p\_settings) <br>_Configure the output pin to match the settings supplied._  |
|  result&lt; [**set\_level\_t**](structhal_1_1output__pin_1_1set__level__t.md) &gt; | [**level**](#function-level-12) (bool p\_high) <br>_Set the state of the pin._  |
|  result&lt; [**level\_t**](structhal_1_1output__pin_1_1level__t.md) &gt; | [**level**](#function-level-22) () <br>_Read the current state of the output pin._  |
| virtual  | [**~output\_pin**](#function-output_pin) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**inert\_output\_pin**](classhal_1_1soft_1_1inert__output__pin.md) &gt; | [**create**](#function-create) (bool p\_level) <br>_Factory function to create_ [_**inert\_output\_pin**_](classhal_1_1soft_1_1inert__output__pin.md) _._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**inert\_output\_pin**_](classhal_1_1soft_1_1inert__output__pin.md) _._
```C++
static inline result< inert_output_pin > hal::soft::inert_output_pin::create (
    bool p_level
) 
```





**Parameters:**


* `p_level` - level\_t object to return when [**level()**](classhal_1_1output__pin.md#function-level-22) is called. This value can be changed by using [**level(bool)**](classhal_1_1output__pin.md#function-level-12) after creation. 



**Returns:**

result&lt;inert\_output\_pin&gt; - Constructed [**inert\_output\_pin**](classhal_1_1soft_1_1inert__output__pin.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/inert_drivers/inert_output_pin.hpp`

