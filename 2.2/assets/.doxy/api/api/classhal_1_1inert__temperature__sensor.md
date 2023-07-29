

# Class hal::inert\_temperature\_sensor



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**inert\_temperature\_sensor**](classhal_1_1inert__temperature__sensor.md)



_Inert implementation of temperature sensing hardware._ 

* `#include <inert_temperature_sensor.hpp>`



Inherits the following classes: [hal::temperature\_sensor](classhal_1_1temperature__sensor.md)
























































## Public Functions inherited from hal::temperature_sensor

See [hal::temperature\_sensor](classhal_1_1temperature__sensor.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**read\_t**](structhal_1_1temperature__sensor_1_1read__t.md) &gt; | [**read**](#function-read) () <br>_Read the current temperature measured by the device._  |
| virtual  | [**~temperature\_sensor**](#function-temperature_sensor) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**inert\_temperature\_sensor**](classhal_1_1inert__temperature__sensor.md) &gt; | [**create**](#function-create) ([**read\_t**](structhal_1_1temperature__sensor_1_1read__t.md) p\_temperature) <br>_Factory function to create_ [_**inert\_temperature\_sensor**_](classhal_1_1inert__temperature__sensor.md) _object._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**inert\_temperature\_sensor**_](classhal_1_1inert__temperature__sensor.md) _object._
```C++
static inline result< inert_temperature_sensor > hal::inert_temperature_sensor::create (
    read_t p_temperature
) 
```





**Parameters:**


* `p_temperature` - read\_t object to return when [**read()**](classhal_1_1temperature__sensor.md#function-read) is called 



**Returns:**

result&lt;inert\_temperature\_sensor&gt; - Constructed [**inert\_temperature\_sensor**](classhal_1_1inert__temperature__sensor.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/inert_drivers/inert_temperature_sensor.hpp`

