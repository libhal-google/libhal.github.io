

# Class hal::current\_sensor



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**current\_sensor**](classhal_1_1current__sensor.md)



_current sensor hardware abstraction interface_ 

* `#include <current_sensor.hpp>`





Inherited by the following classes: [hal::rmd::mc\_x\_current\_sensor](classhal_1_1rmd_1_1mc__x__current__sensor.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**read\_t**](structhal_1_1current__sensor_1_1read__t.md) <br>_current reading from the sensor_  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**read\_t**](structhal_1_1current__sensor_1_1read__t.md) &gt; | [**read**](#function-read) () <br>_Reads the most up to date current from the sensor._  |
| virtual  | [**~current\_sensor**](#function-current_sensor) () = default<br> |




























## Public Functions Documentation




### function read 

_Reads the most up to date current from the sensor._ 
```C++
inline result< read_t > hal::current_sensor::read () 
```





**Returns:**

result&lt;read\_t&gt; - current data 





        



### function ~current\_sensor 

```C++
virtual hal::current_sensor::~current_sensor () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/current_sensor.hpp`

