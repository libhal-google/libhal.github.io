

# Class hal::inert\_pwm



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**inert\_pwm**](classhal_1_1inert__pwm.md)



_Inert implementation of Pulse Width Modulation (PWM) channel hardware._ 

* `#include <inert_pwm.hpp>`



Inherits the following classes: [hal::pwm](classhal_1_1pwm.md)
























































## Public Functions inherited from hal::pwm

See [hal::pwm](classhal_1_1pwm.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**duty\_cycle\_t**](structhal_1_1pwm_1_1duty__cycle__t.md) &gt; | [**duty\_cycle**](#function-duty_cycle) (float p\_duty\_cycle) <br>_Set the pwm waveform duty cycle._  |
|  result&lt; [**frequency\_t**](structhal_1_1pwm_1_1frequency__t.md) &gt; | [**frequency**](#function-frequency) ([**hertz**](namespacehal.md#typedef-hertz) p\_frequency) <br>_Set the pwm waveform frequency._  |
| virtual  | [**~pwm**](#function-pwm) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**inert\_pwm**](classhal_1_1inert__pwm.md) &gt; | [**create**](#function-create) () <br>_Factory function to create_ [_**inert\_pwm**_](classhal_1_1inert__pwm.md) _object._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**inert\_pwm**_](classhal_1_1inert__pwm.md) _object._
```C++
static inline result< inert_pwm > hal::inert_pwm::create () 
```





**Returns:**

result&lt;inert\_pwm&gt; - Constructed [**inert\_pwm**](classhal_1_1inert__pwm.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/inert_drivers/inert_pwm.hpp`

