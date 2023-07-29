

# Class hal::inert\_input\_pin



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**inert\_input\_pin**](classhal_1_1inert__input__pin.md)



_Inert implementation of digital input pin hardware._ 

* `#include <inert_input_pin.hpp>`



Inherits the following classes: [hal::input\_pin](classhal_1_1input__pin.md)
























































## Public Functions inherited from hal::input_pin

See [hal::input\_pin](classhal_1_1input__pin.md)

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1input__pin_1_1settings.md) & p\_settings) <br>_Configure the input pin to match the settings supplied._  |
|  result&lt; [**level\_t**](structhal_1_1input__pin_1_1level__t.md) &gt; | [**level**](#function-level) () <br>_Read the state of the input pin._  |
| virtual  | [**~input\_pin**](#function-input_pin) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**inert\_input\_pin**](classhal_1_1inert__input__pin.md) &gt; | [**create**](#function-create) ([**level\_t**](structhal_1_1input__pin_1_1level__t.md) p\_level) <br>_Factory function to create_ [_**inert\_input\_pin**_](classhal_1_1inert__input__pin.md) _object._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**inert\_input\_pin**_](classhal_1_1inert__input__pin.md) _object._
```C++
static inline result< inert_input_pin > hal::inert_input_pin::create (
    level_t p_level
) 
```





**Parameters:**


* `p_level` - level\_t object to retrun when [**level()**](classhal_1_1input__pin.md#function-level) is called 



**Returns:**

result&lt;inert\_input\_pin&gt; - Constructed [**inert\_input\_pin**](classhal_1_1inert__input__pin.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/inert_drivers/inert_input_pin.hpp`

