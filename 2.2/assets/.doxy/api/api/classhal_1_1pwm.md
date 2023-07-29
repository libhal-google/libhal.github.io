

# Class hal::pwm



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**pwm**](classhal_1_1pwm.md)



_Pulse Width Modulation (PWM) channel hardware abstraction._ [More...](#detailed-description)

* `#include <pwm.hpp>`





Inherited by the following classes: [hal::inert\_pwm](classhal_1_1inert__pwm.md),  [hal::lpc40::pwm](classhal_1_1lpc40_1_1pwm.md),  [hal::mock::pwm](structhal_1_1mock_1_1pwm.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**duty\_cycle\_t**](structhal_1_1pwm_1_1duty__cycle__t.md) <br>_Feedback setting the pwm duty cycle._  |
| struct | [**frequency\_t**](structhal_1_1pwm_1_1frequency__t.md) <br>_Feedback setting the pwm frequency._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**duty\_cycle\_t**](structhal_1_1pwm_1_1duty__cycle__t.md) &gt; | [**duty\_cycle**](#function-duty_cycle) (float p\_duty\_cycle) <br>_Set the pwm waveform duty cycle._  |
|  result&lt; [**frequency\_t**](structhal_1_1pwm_1_1frequency__t.md) &gt; | [**frequency**](#function-frequency) (hertz p\_frequency) <br>_Set the pwm waveform frequency._  |
| virtual  | [**~pwm**](#function-pwm) () = default<br> |




























# Detailed Description


This driver controls the waveform generation of a square wave and its properties such as frequency and duty cycle.


Frequency, meaning how often the waveform cycles from from low to high.


Duty cycle, what proportion of the wavelength of the pulse is the voltage HIGH.



  ____________________       _
 |                    |     |
_|                    |_____|
 ^                    ^     ^
 |<------ high ------>|<low>|

 HIGH Duration = 18 segments
 LOW Duration =  5 segments
 Duty Cycle = 20 / (20 + 5) = 80%

 If each segment is 1us then the wavelength is 25us
 Thus frequency is (1 / 25us) = 40kHz



PWM is used for power control like motor control, lighting, transmitting signals to servos, sending telemetry and much more. 


    
## Public Functions Documentation




### function duty\_cycle 

_Set the pwm waveform duty cycle._ 
```C++
inline result< duty_cycle_t > hal::pwm::duty_cycle (
    float p_duty_cycle
) 
```



The input value `p_duty_cycle` is a 32-bit floating point value from 0.0f to 1.0f.


The floating point value is directly proportional to the duty cycle percentage, such that 0.0f is 0%, 0.25f is 25%, 0.445f is 44.5% and 1.0f is 100%.


This function clamps the input value between 0.0f and 1.0f and thus values passed to driver implementations are guaranteed to be within this range. Callers of this function do not need to clamp their values before passing them into this function as it would be redundant. The rationale for doing this at the interface layer is that it allows callers and driver implementors to omit redundant clamping code, reducing code bloat.




**Parameters:**


* `p_duty_cycle` - a value from 0.0f to +1.0f representing the duty cycle percentage. 



**Returns:**

result&lt;duty\_cycle\_t&gt; - success or failure 





        



### function frequency 

_Set the pwm waveform frequency._ 
```C++
inline result< frequency_t > hal::pwm::frequency (
    hertz p_frequency
) 
```



This function clamps the input value between 1.0\_Hz and 1.0\_GHz and thus values passed to driver implementations are guaranteed to be within this range. Callers of this function do not need to clamp their values before passing them into this function as it would be redundant. The rationale for doing this at the interface layer is that it allows callers and driver implementors to omit redundant clamping code, reducing code bloat.




**Parameters:**


* `p_frequency` - settings to apply to pwm driver 



**Returns:**

result&lt;frequency\_t&gt; - success or failure 




**Exception:**


* `std::errc::argument_out_of_domain` - if the frequency is beyond what the pwm generator is capable of achieving. 




        



### function ~pwm 

```C++
virtual hal::pwm::~pwm () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/pwm.hpp`

