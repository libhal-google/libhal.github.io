

# Class hal::inert\_distance\_sensor



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**inert\_distance\_sensor**](classhal_1_1inert__distance__sensor.md)



_Inert implementation of linear distance hardware._ 

* `#include <inert_distance_sensor.hpp>`



Inherits the following classes: [hal::distance\_sensor](classhal_1_1distance__sensor.md)
























































## Public Functions inherited from hal::distance_sensor

See [hal::distance\_sensor](classhal_1_1distance__sensor.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**read\_t**](structhal_1_1distance__sensor_1_1read__t.md) &gt; | [**read**](#function-read) () <br>_Read the current distance measured by the device._  |
| virtual  | [**~distance\_sensor**](#function-distance_sensor) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**inert\_distance\_sensor**](classhal_1_1inert__distance__sensor.md) &gt; | [**create**](#function-create) ([**read\_t**](structhal_1_1distance__sensor_1_1read__t.md) p\_result) <br>_Factory function to create_ [_**inert\_distance\_sensor**_](classhal_1_1inert__distance__sensor.md) _object._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**inert\_distance\_sensor**_](classhal_1_1inert__distance__sensor.md) _object._
```C++
static inline result< inert_distance_sensor > hal::inert_distance_sensor::create (
    read_t p_result
) 
```





**Parameters:**


* `p_result` - read\_t data to be returned when calling [**read()**](classhal_1_1distance__sensor.md#function-read) 



**Returns:**

result&lt;inert\_distance\_sensor&gt; - Constructed [**inert\_distance\_sensor**](classhal_1_1inert__distance__sensor.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/inert_drivers/inert_distance_sensor.hpp`

