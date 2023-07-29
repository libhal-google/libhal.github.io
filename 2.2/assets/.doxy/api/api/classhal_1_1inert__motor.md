

# Class hal::inert\_motor



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**inert\_motor**](classhal_1_1inert__motor.md)



_Inert implementation of open loop motorized actuator hardware._ 

* `#include <inert_motor.hpp>`



Inherits the following classes: [hal::motor](classhal_1_1motor.md)
























































## Public Functions inherited from hal::motor

See [hal::motor](classhal_1_1motor.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**power\_t**](structhal_1_1motor_1_1power__t.md) &gt; | [**power**](#function-power) (float p\_power) <br>_Apply power to the motor._  |
| virtual  | [**~motor**](#function-motor) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**inert\_motor**](classhal_1_1inert__motor.md) &gt; | [**create**](#function-create) () <br>_Factory function to create_ [_**inert\_motor**_](classhal_1_1inert__motor.md) _object._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**inert\_motor**_](classhal_1_1inert__motor.md) _object._
```C++
static inline result< inert_motor > hal::inert_motor::create () 
```





**Returns:**

result&lt;inert\_motor&gt; - Constructed [**inert\_motor**](classhal_1_1inert__motor.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/inert_drivers/inert_motor.hpp`

