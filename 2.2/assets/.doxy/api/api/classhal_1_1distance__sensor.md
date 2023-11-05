

# Class hal::distance\_sensor



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**distance\_sensor**](classhal_1_1distance__sensor.md)



_Linear distance hardware abstraction interface._ [More...](#detailed-description)

* `#include <distance_sensor.hpp>`





Inherited by the following classes: [hal::soft::inert\_distance\_sensor](classhal_1_1soft_1_1inert__distance__sensor.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**read\_t**](structhal_1_1distance__sensor_1_1read__t.md) <br>_Result from sampling the distance sensor._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**read\_t**](structhal_1_1distance__sensor_1_1read__t.md) &gt; | [**read**](#function-read) () <br>_Read the current distance measured by the device._  |
| virtual  | [**~distance\_sensor**](#function-distance_sensor) () = default<br> |




























# Detailed Description


Examples of distance encoder are:



* Linear Potentiometers
* LIDAR or TOF (time of flight) sensor
* Ultrasonic range finder
* Infrared Distance Sensors
* Linear Quadrature Encoders
* Linear Incremental Encoders
* Linear Absolute Encoders
* Linear Magnetic Encoders




Distance sensors can be relative or absolute. Relative position means that the sensor can only see changes in rotation from where measurement started. In other words, at application start, relative encoders will start at 0. Absolute encoders know their position at all times. At application start, the absolute encoder will be able to determine its exact orientation relative to a frame of reference when read.


Examples of relative rotation sensors are:



* Quadrature Encoders
* Incremental Encoders




Examples of absolute rotation sensors are:



* Potentiometers
* Absolute Encoders
* Rotary Magnetic Encoders
* IMUs




Distance sensors can also be finite or infinite. Finite meaning that the angle that can be reported is a fixed amount for the device. Infinite means that the encoder can continue rotating and adding more to its angle reading forever. Infinite rotation sensors tend to not have a physical stop that limits how much they can be rotated.


Examples of finite rotation sensors are:



* Potentiometers
* Absolute Encoders
* IMUs




Examples of infinite rotation sensors are:



* Rotary Magnetic Encoders
* Quadrature Encoders
* Incremental Encoders




This interface does not provide a means to determine these attributes of a rotation sensor as this is an application architecture decision. Drivers that implement this interface should document what kind of distance sensor it is such that a developer can determine its applicability to their application. The context of which sensor ought to be used for an application is solely known at architecture definition time and software should not be expected to at runtime, if the right type of rotation sensor was passed into the object. 


    
## Public Functions Documentation




### function read 

_Read the current distance measured by the device._ 
```C++
inline result< read_t > hal::distance_sensor::read () 
```





**Returns:**

result&lt;read\_t&gt; - distance data 





        



### function ~distance\_sensor 

```C++
virtual hal::distance_sensor::~distance_sensor () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/distance_sensor.hpp`

