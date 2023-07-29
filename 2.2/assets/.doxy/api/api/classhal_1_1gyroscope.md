

# Class hal::gyroscope



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**gyroscope**](classhal_1_1gyroscope.md)



_Angular velocity sensing hardware abstraction interface._ 

* `#include <gyroscope.hpp>`





Inherited by the following classes: [hal::inert\_gyroscope](classhal_1_1inert__gyroscope.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**read\_t**](structhal_1_1gyroscope_1_1read__t.md) <br>_Result from reading the gyroscope._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**read\_t**](structhal_1_1gyroscope_1_1read__t.md) &gt; | [**read**](#function-read) () <br>_Read the latest angular velocity sensed by the device._  |
| virtual  | [**~gyroscope**](#function-gyroscope) () = default<br> |




























## Public Functions Documentation




### function read 

_Read the latest angular velocity sensed by the device._ 
```C++
inline result< read_t > hal::gyroscope::read () 
```





**Returns:**

result&lt;read\_t&gt; - angular velocity data 





        



### function ~gyroscope 

```C++
virtual hal::gyroscope::~gyroscope () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/gyroscope.hpp`

