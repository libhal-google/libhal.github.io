

# Class hal::output\_pin



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**output\_pin**](classhal_1_1output__pin.md)



_Digital output pin hardware abstraction._ [More...](#detailed-description)

* `#include <output_pin.hpp>`





Inherited by the following classes: [hal::lpc40::output\_pin](classhal_1_1lpc40_1_1output__pin.md),  [hal::mock::output\_pin](structhal_1_1mock_1_1output__pin.md),  [hal::soft::inert\_output\_pin](classhal_1_1soft_1_1inert__output__pin.md),  [hal::soft::output\_pin\_inverter](classhal_1_1soft_1_1output__pin__inverter.md),  [hal::stm32f1::output\_pin](classhal_1_1stm32f1_1_1output__pin.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**level\_t**](structhal_1_1output__pin_1_1level__t.md) <br>_Pin level reading structure._  |
| struct | [**set\_level\_t**](structhal_1_1output__pin_1_1set__level__t.md) <br>_Feedback from setting the pin state._  |
| struct | [**settings**](structhal_1_1output__pin_1_1settings.md) <br>_Generic settings for output pins._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1output__pin_1_1settings.md) & p\_settings) <br>_Configure the output pin to match the settings supplied._  |
|  result&lt; [**set\_level\_t**](structhal_1_1output__pin_1_1set__level__t.md) &gt; | [**level**](#function-level-12) (bool p\_high) <br>_Set the state of the pin._  |
|  result&lt; [**level\_t**](structhal_1_1output__pin_1_1level__t.md) &gt; | [**level**](#function-level-22) () <br>_Read the current state of the output pin._  |
| virtual  | [**~output\_pin**](#function-output_pin) () = default<br> |




























# Detailed Description


Use this to drive a pin HIGH or LOW in order to send a control signal or turn off or on an LED.


Implementations of this interface can be backed by external devices such as I/O expanders or other micro-controllers. 


    
## Public Functions Documentation




### function configure 

_Configure the output pin to match the settings supplied._ 
```C++
inline status hal::output_pin::configure (
    const settings & p_settings
) 
```





**Parameters:**


* `p_settings` - settings to apply to output pin 



**Returns:**

status - success or failure 




**Exception:**


* `std::errc::invalid_argument` if the settings could not be achieved. 




        



### function level [1/2]

_Set the state of the pin._ 
```C++
inline result< set_level_t > hal::output_pin::level (
    bool p_high
) 
```





**Parameters:**


* `p_high` - if true then the pin state is set to HIGH voltage. If false, the pin state is set to LOW voltage. 



**Returns:**

result&lt;set\_level\_t&gt; - success or failure 





        



### function level [2/2]

_Read the current state of the output pin._ 
```C++
inline result< level_t > hal::output_pin::level () 
```



Implementations must read the pin state from hardware and will not simply cache the results from the execution of `level(bool)`.


This pin may not equal the state set by `level(bool)` when the pin is configured as open-drain.




**Returns:**

result&lt;level\_t&gt; - return the current level state of the output pin 





        



### function ~output\_pin 

```C++
virtual hal::output_pin::~output_pin () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/output_pin.hpp`

