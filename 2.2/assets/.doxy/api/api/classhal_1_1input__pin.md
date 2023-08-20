

# Class hal::input\_pin



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**input\_pin**](classhal_1_1input__pin.md)



_Digital input pin hardware abstraction interface._ [More...](#detailed-description)

* `#include <input_pin.hpp>`





Inherited by the following classes: [hal::lpc40::input\_pin](classhal_1_1lpc40_1_1input__pin.md),  [hal::mock::input\_pin](structhal_1_1mock_1_1input__pin.md),  [hal::soft::inert\_input\_pin](classhal_1_1soft_1_1inert__input__pin.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**level\_t**](structhal_1_1input__pin_1_1level__t.md) <br>_Input pin level reading structure._  |
| struct | [**settings**](structhal_1_1input__pin_1_1settings.md) <br>_Generic settings for input pins._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1input__pin_1_1settings.md) & p\_settings) <br>_Configure the input pin to match the settings supplied._  |
|  result&lt; [**level\_t**](structhal_1_1input__pin_1_1level__t.md) &gt; | [**level**](#function-level) () <br>_Read the state of the input pin._  |
| virtual  | [**~input\_pin**](#function-input_pin) () = default<br> |




























# Detailed Description


Use this to read a pin and determine if the voltage on it is HIGH or LOW. 


    
## Public Functions Documentation




### function configure 

_Configure the input pin to match the settings supplied._ 
```C++
inline status hal::input_pin::configure (
    const settings & p_settings
) 
```





**Parameters:**


* `p_settings` - settings to apply to input pin 



**Returns:**

status - success or failure 




**Exception:**


* `std::errc::invalid_argument` if the settings could not be achieved. 




        



### function level 

_Read the state of the input pin._ 
```C++
inline result< level_t > hal::input_pin::level () 
```





**Returns:**

result&lt;bool&gt; - true indicates HIGH voltage level and false indicates LOW voltage level 





        



### function ~input\_pin 

```C++
virtual hal::input_pin::~input_pin () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/input_pin.hpp`

