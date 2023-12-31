

# Class hal::angular\_velocity\_sensor



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**angular\_velocity\_sensor**](classhal_1_1angular__velocity__sensor.md)



_angular velocity sensor hardware abstraction interface_ 

* `#include <angular_velocity_sensor.hpp>`





Inherited by the following classes: [hal::rmd::drc\_angular\_velocity\_sensor](classhal_1_1rmd_1_1drc__angular__velocity__sensor.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**read\_t**](structhal_1_1angular__velocity__sensor_1_1read__t.md) <br>_angular velocity reading from the sensor_  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**read\_t**](structhal_1_1angular__velocity__sensor_1_1read__t.md) &gt; | [**read**](#function-read) () <br>_Reads the most up to date angular velocity from the sensor._  |
| virtual  | [**~angular\_velocity\_sensor**](#function-angular_velocity_sensor) () = default<br> |




























## Public Functions Documentation




### function read 

_Reads the most up to date angular velocity from the sensor._ 
```C++
inline result< read_t > hal::angular_velocity_sensor::read () 
```





**Returns:**

result&lt;read\_t&gt; - angular velocity data 





        



### function ~angular\_velocity\_sensor 

```C++
virtual hal::angular_velocity_sensor::~angular_velocity_sensor () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/angular_velocity_sensor.hpp`

