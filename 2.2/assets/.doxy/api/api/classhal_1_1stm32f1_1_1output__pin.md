

# Class hal::stm32f1::output\_pin



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**stm32f1**](namespacehal_1_1stm32f1.md) **>** [**output\_pin**](classhal_1_1stm32f1_1_1output__pin.md)



_Output pin implementation for the stm32::f10x._ 

* `#include <output_pin.hpp>`



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
|  result&lt; [**output\_pin**](classhal_1_1stm32f1_1_1output__pin.md) &gt; | [**get**](#function-get) (std::uint8\_t p\_port, std::uint8\_t p\_pin, [**output\_pin::settings**](structhal_1_1output__pin_1_1settings.md) p\_settings={}) <br>_Get the output pin object._  |




















































## Public Static Functions Documentation




### function get 

_Get the output pin object._ 
```C++
static result< output_pin > hal::stm32f1::output_pin::get (
    std::uint8_t p_port,
    std::uint8_t p_pin,
    output_pin::settings p_settings={}
) 
```





**Parameters:**


* `p_port` - selects pin port to use 
* `p_pin` - selects which pin within the port to use 
* `p_settings` - initial pin settings 



**Returns:**

result&lt;output\_pin&gt; - reference to the statically allocated output pin 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-stm32f1/output_pin.hpp`

