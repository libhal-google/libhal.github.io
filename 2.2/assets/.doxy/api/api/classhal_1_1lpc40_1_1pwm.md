

# Class hal::lpc40::pwm



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**lpc40**](namespacehal_1_1lpc40.md) **>** [**pwm**](classhal_1_1lpc40_1_1pwm.md)



_pwm driver for the lpc40xx series of micro controllers_ [More...](#detailed-description)

* `#include <pwm.hpp>`



Inherits the following classes: [hal::pwm](classhal_1_1pwm.md)












## Classes

| Type | Name |
| ---: | :--- |
| struct | [**channel**](structhal_1_1lpc40_1_1pwm_1_1channel.md) <br>_Channel specific information._  |












































## Public Functions inherited from hal::pwm

See [hal::pwm](classhal_1_1pwm.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**duty\_cycle\_t**](structhal_1_1pwm_1_1duty__cycle__t.md) &gt; | [**duty\_cycle**](#function-duty_cycle) (float p\_duty\_cycle) <br>_Set the pwm waveform duty cycle._  |
|  result&lt; [**frequency\_t**](structhal_1_1pwm_1_1frequency__t.md) &gt; | [**frequency**](#function-frequency) (hertz p\_frequency) <br>_Set the pwm waveform frequency._  |
| virtual  | [**~pwm**](#function-pwm) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**pwm**](classhal_1_1lpc40_1_1pwm.md) &gt; | [**get**](#function-get) (std::uint8\_t p\_peripheral, std::uint8\_t p\_channel) <br>_Get a pwm driver._  |




















































# Detailed Description


This driver uses the dedicated PWM peripherals, PWM0, and PWM1 for generating pwm signals. Other methods would include using timers and the MotorPWM peripherals.


NOTE: Channels within a PWM peripheral device are NOT independent. Meaning that changing the frequency of one channel changes the frequency for all channels within the peripheral block. 


    
## Public Static Functions Documentation




### function get 

_Get a pwm driver._ 
```C++
static result< pwm > hal::lpc40::pwm::get (
    std::uint8_t p_peripheral,
    std::uint8_t p_channel
) 
```





**Parameters:**


* `p_peripheral` - Peripheral block, either 0 or 1 
* `p_channel` - PWM output channel within the peripheral block, from 1 to 6. 



**Returns:**

result&lt;pwm&&gt; - reference to the pwm driver 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-lpc40/pwm.hpp`

