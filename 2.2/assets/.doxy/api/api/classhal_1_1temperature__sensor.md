

# Class hal::temperature\_sensor



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**temperature\_sensor**](classhal_1_1temperature__sensor.md)



_Temperature sensing hardware abstraction interface._ 

* `#include <temperature_sensor.hpp>`





Inherited by the following classes: [hal::rmd::drc\_temperature\_sensor](classhal_1_1rmd_1_1drc__temperature__sensor.md),  [hal::rmd::mc\_x\_temperature](classhal_1_1rmd_1_1mc__x__temperature.md),  [hal::soft::inert\_temperature\_sensor](classhal_1_1soft_1_1inert__temperature__sensor.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**read\_t**](structhal_1_1temperature__sensor_1_1read__t.md) <br>_Result from reading the temperature sensor._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**read\_t**](structhal_1_1temperature__sensor_1_1read__t.md) &gt; | [**read**](#function-read) () <br>_Read the current temperature measured by the device._  |
| virtual  | [**~temperature\_sensor**](#function-temperature_sensor) () = default<br> |




























## Public Functions Documentation




### function read 

_Read the current temperature measured by the device._ 
```C++
inline result< read_t > hal::temperature_sensor::read () 
```





**Returns:**

result&lt;read\_t&gt; - temperature data 





        



### function ~temperature\_sensor 

```C++
virtual hal::temperature_sensor::~temperature_sensor () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/temperature_sensor.hpp`

