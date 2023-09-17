

# Class hal::rotation\_sensor



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**rotation\_sensor**](classhal_1_1rotation__sensor.md)



_Rotation measuring hardware abstraction interface._ [More...](#detailed-description)

* `#include <rotation_sensor.hpp>`





Inherited by the following classes: [hal::rmd::drc\_rotation\_sensor](classhal_1_1rmd_1_1drc__rotation__sensor.md),  [hal::rmd::mc\_x\_rotation](classhal_1_1rmd_1_1mc__x__rotation.md),  [hal::soft::inert\_rotation\_sensor](classhal_1_1soft_1_1inert__rotation__sensor.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**read\_t**](structhal_1_1rotation__sensor_1_1read__t.md) <br>_Result from reading the rotation sensor._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**read\_t**](structhal_1_1rotation__sensor_1_1read__t.md) &gt; | [**read**](#function-read) () <br>_Read the current angle measured by the device._  |
| virtual  | [**~rotation\_sensor**](#function-rotation_sensor) () = default<br> |




























# Detailed Description


Examples of rotary encoder are:



* Rotary Potentiometers
* Quadrature Encoders
* Incremental Encoders
* Absolute Encoders
* Rotary Magnetic Encoders
* Inertial Measurement Unit or IMU




Rotation sensors can be relative or absolute. Relative position means that the sensor can only see changes in rotation from where measurement started. In other words, at application start, relative encoders will start at 0. Absolute encoders know their position at all times. At application start, the absolute encoder will be able to determine its exact orientation relative to a frame of reference when read.


Examples of relative rotation sensors are:



* Quadrature Encoders
* Incremental Encoders




Examples of absolute rotation sensors are:



* Rotary Potentiometers
* Absolute Encoders
* Rotary Magnetic Encoders
* IMUs




Rotation sensors can also be finite or infinite. Finite meaning that the angle that can be reported is a fixed amount for the device. Infinite means that the encoder can continue rotating and adding more to its angle reading forever. Infinite rotation sensors tend to not have a physical stop that limits how much they can be rotated.


Examples of finite rotation sensors are:



* Rotary Potentiometers
* Absolute Encoders
* IMUs




Examples of infinite rotation sensors are:



* Rotary Magnetic Encoders
* Quadrature Encoders
* Incremental Encoders




This interface does not provide a means to determine these attributes of a rotation sensor as this is an application architecture decision. Drivers that implement this interface should document what kind of rotary sensor it is such that a developer can determine its applicability to their application. The context of which sensor ought to be used for an application is solely known at architecture definition time and software should not be expected to at runtime, if the right type of rotation sensor was passed into the object. 


    
## Public Functions Documentation




### function read 

_Read the current angle measured by the device._ 
```C++
inline result< read_t > hal::rotation_sensor::read () 
```





**Returns:**

result&lt;read\_t&gt; - rotation data 





        



### function ~rotation\_sensor 

```C++
virtual hal::rotation_sensor::~rotation_sensor () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/rotation_sensor.hpp`

