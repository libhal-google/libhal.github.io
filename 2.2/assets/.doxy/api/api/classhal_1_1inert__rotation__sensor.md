

# Class hal::inert\_rotation\_sensor



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**inert\_rotation\_sensor**](classhal_1_1inert__rotation__sensor.md)



_Inert implementation of rotation measuring hardware._ 

* `#include <inert_rotation_sensor.hpp>`



Inherits the following classes: [hal::rotation\_sensor](classhal_1_1rotation__sensor.md)
























































## Public Functions inherited from hal::rotation_sensor

See [hal::rotation\_sensor](classhal_1_1rotation__sensor.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**read\_t**](structhal_1_1rotation__sensor_1_1read__t.md) &gt; | [**read**](#function-read) () <br>_Read the current angle measured by the device._  |
| virtual  | [**~rotation\_sensor**](#function-rotation_sensor) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**inert\_rotation\_sensor**](classhal_1_1inert__rotation__sensor.md) &gt; | [**create**](#function-create) ([**read\_t**](structhal_1_1rotation__sensor_1_1read__t.md) p\_position) <br>_Factory function to create_ [_**inert\_rotation\_sensor**_](classhal_1_1inert__rotation__sensor.md) _object._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**inert\_rotation\_sensor**_](classhal_1_1inert__rotation__sensor.md) _object._
```C++
static inline result< inert_rotation_sensor > hal::inert_rotation_sensor::create (
    read_t p_position
) 
```





**Parameters:**


* `p_position` - read\_t object to return when [**read()**](classhal_1_1rotation__sensor.md#function-read) is called 



**Returns:**

result&lt;inert\_rotation\_sensor&gt; - Constructed [**inert\_rotation\_sensor**](classhal_1_1inert__rotation__sensor.md) onject 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/inert_drivers/inert_rotation_sensor.hpp`

