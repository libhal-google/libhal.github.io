

# Class hal::rmd::drc\_motor



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**rmd**](namespacehal_1_1rmd.md) **>** [**drc\_motor**](classhal_1_1rmd_1_1drc__motor.md)



_Motor interface adaptor for DRC._ 

* `#include <drc.hpp>`



Inherits the following classes: [hal::motor](classhal_1_1motor.md)
























































## Public Functions inherited from hal::motor

See [hal::motor](classhal_1_1motor.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**power\_t**](structhal_1_1motor_1_1power__t.md) &gt; | [**power**](#function-power) (float p\_power) <br>_Apply power to the motor._  |
| virtual  | [**~motor**](#function-motor) () = default<br> |





















































## Friends Documentation





### friend make\_motor 

_Create a_ [_**hal::motor**_](classhal_1_1motor.md) _implementation from the drc driver._
```C++
result< drc_motor > hal::rmd::drc_motor::make_motor (
    drc & p_drc,
    hal::rpm p_max_speed
) 
```





**Parameters:**


* `p_drc` - reference to a drc driver. This object's lifetime must NOT exceed the lifetime of the return drc motor. 
* `p_max_speed` - maximum speed of the motor represented by +1.0 and -1.0 



**Returns:**

[**drc\_motor**](classhal_1_1rmd_1_1drc__motor.md) - motor implementation based on the drc driver 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-rmd/drc.hpp`

