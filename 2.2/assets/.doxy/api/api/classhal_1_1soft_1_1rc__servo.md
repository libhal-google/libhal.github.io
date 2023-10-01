

# Class hal::soft::rc\_servo



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**soft**](namespacehal_1_1soft.md) **>** [**rc\_servo**](classhal_1_1soft_1_1rc__servo.md)



_Generic RC servo driver._ 

* `#include <rc_servo.hpp>`



Inherits the following classes: [hal::servo](classhal_1_1servo.md)












## Classes

| Type | Name |
| ---: | :--- |
| struct | [**settings**](structhal_1_1soft_1_1rc__servo_1_1settings.md) <br>_Information about the RC servo needed to control it properly._  |












































## Public Functions inherited from hal::servo

See [hal::servo](classhal_1_1servo.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**position\_t**](structhal_1_1servo_1_1position__t.md) &gt; | [**position**](#function-position) ([**hal::degrees**](namespacehal.md#typedef-degrees) p\_position) <br>_Set the position of the servo's output shaft._  |
| virtual  | [**~servo**](#function-servo) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**rc\_servo**](classhal_1_1soft_1_1rc__servo.md) &gt; | [**create**](#function-create) ([**hal::pwm**](classhal_1_1pwm.md) & p\_pwm, [**settings**](structhal_1_1soft_1_1rc__servo_1_1settings.md) p\_settings) <br>_Factory function to create a_ [_**rc\_servo**_](classhal_1_1soft_1_1rc__servo.md) _object._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create a_ [_**rc\_servo**_](classhal_1_1soft_1_1rc__servo.md) _object._
```C++
static result< rc_servo > hal::soft::rc_servo::create (
    hal::pwm & p_pwm,
    settings p_settings
) 
```



Compile time error will occur if the min microseconds is more than the max microseconds, if the max microseconds is more than the frequency wavelength, or if the min angle is more than max angle.




**Parameters:**


* `p_pwm` - pwm signal connected to the RC servo 
* `p_settings` - 



**Returns:**

result&lt;rc\_servo&gt; - Constructed [**rc\_servo**](classhal_1_1soft_1_1rc__servo.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/rc_servo.hpp`

