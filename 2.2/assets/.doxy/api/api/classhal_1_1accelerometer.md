

# Class hal::accelerometer



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**accelerometer**](classhal_1_1accelerometer.md)



_Acceleration sensing hardware abstraction interface._ 

* `#include <accelerometer.hpp>`





Inherited by the following classes: [hal::inert\_accelerometer](classhal_1_1inert__accelerometer.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**read\_t**](structhal_1_1accelerometer_1_1read__t.md) <br>_Result from reading the accelerometer._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**read\_t**](structhal_1_1accelerometer_1_1read__t.md) &gt; | [**read**](#function-read) () <br>_Read the latest acceleration sensed by the device._  |
| virtual  | [**~accelerometer**](#function-accelerometer) () = default<br> |




























## Public Functions Documentation




### function read 

_Read the latest acceleration sensed by the device._ 
```C++
inline result< read_t > hal::accelerometer::read () 
```





**Returns:**

result&lt;read\_t&gt; - acceleration data 





        



### function ~accelerometer 

```C++
virtual hal::accelerometer::~accelerometer () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/accelerometer.hpp`

