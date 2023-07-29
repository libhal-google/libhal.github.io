

# Class hal::magnetometer



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**magnetometer**](classhal_1_1magnetometer.md)



_Magnetic field strength sensing hardware abstraction interface._ [More...](#detailed-description)

* `#include <magnetometer.hpp>`





Inherited by the following classes: [hal::inert\_magnetometer](classhal_1_1inert__magnetometer.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**read\_t**](structhal_1_1magnetometer_1_1read__t.md) <br>_Result from reading the accelerometer._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**read\_t**](structhal_1_1magnetometer_1_1read__t.md) &gt; | [**read**](#function-read) () <br>_Read the latest magnetic field strength sensed by the device._  |
| virtual  | [**~magnetometer**](#function-magnetometer) () = default<br> |




























# Detailed Description


Magnetometers are usually used for determining the strength of a magnetic field, or calculating compass headings. If the device that the magnetometer is mounted on, tends to move, or change its own orientation, then it is helpful to use an accelerometer or tilt sensor in order to determine appropriate heading for compass calculations. 


    
## Public Functions Documentation




### function read 

_Read the latest magnetic field strength sensed by the device._ 
```C++
inline result< read_t > hal::magnetometer::read () 
```





**Returns:**

result&lt;read\_t&gt; - magnetic field strength data 





        



### function ~magnetometer 

```C++
virtual hal::magnetometer::~magnetometer () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/magnetometer.hpp`

