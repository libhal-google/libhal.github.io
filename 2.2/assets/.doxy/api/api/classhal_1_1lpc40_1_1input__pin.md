

# Class hal::lpc40::input\_pin



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**lpc40**](namespacehal_1_1lpc40.md) **>** [**input\_pin**](classhal_1_1lpc40_1_1input__pin.md)



_Input pin implementation for the lpc40xx._ 

* `#include <input_pin.hpp>`



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
|  result&lt; [**input\_pin**](classhal_1_1lpc40_1_1input__pin.md) &gt; | [**get**](#function-get) (std::uint8\_t p\_port, std::uint8\_t p\_pin, [**input\_pin::settings**](structhal_1_1input__pin_1_1settings.md) p\_settings={}) <br>_Get the input pin object._  |




















































## Public Static Functions Documentation




### function get 

_Get the input pin object._ 
```C++
static result< input_pin > hal::lpc40::input_pin::get (
    std::uint8_t p_port,
    std::uint8_t p_pin,
    input_pin::settings p_settings={}
) 
```





**Parameters:**


* `p_port` - selects pin port to use 
* `p_pin` - selects pin within the port to use 
* `p_settings` - initial pin settings 



**Returns:**

result&lt;input\_pin&gt; - reference to a statically allocated input pin 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-lpc40/input_pin.hpp`

