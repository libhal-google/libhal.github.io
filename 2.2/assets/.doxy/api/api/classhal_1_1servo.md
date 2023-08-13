

# Class hal::servo



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**servo**](classhal_1_1servo.md)



_Hardware abstraction for a closed loop position controlled rotational actuator._ 

* `#include <servo.hpp>`





Inherited by the following classes: [hal::rmd::drc\_servo](classhal_1_1rmd_1_1drc__servo.md),  [hal::rmd::mc\_x\_servo](classhal_1_1rmd_1_1mc__x__servo.md),  [hal::soft::rc\_servo](classhal_1_1soft_1_1rc__servo.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**position\_t**](structhal_1_1servo_1_1position__t.md) <br>_Feedback from setting the servo position._  |
| struct | [**range\_error**](structhal_1_1servo_1_1range__error.md) <br>_Error information indicating the range of the servo._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**position\_t**](structhal_1_1servo_1_1position__t.md) &gt; | [**position**](#function-position) ([**hal::degrees**](namespacehal.md#typedef-degrees) p\_position) <br>_Set the position of the servo's output shaft._  |
| virtual  | [**~servo**](#function-servo) () = default<br> |




























## Public Functions Documentation




### function position 

_Set the position of the servo's output shaft._ 
```C++
inline result< position_t > hal::servo::position (
    hal::degrees p_position
) 
```



Position is the rotational position as a angle in degrees that the caller wants the shaft to rotate to. The allowed range of positions is defined by the servo itself. Many servos have intrinsic limits to their range.


Developers must choose servos that fit the range for their applications. Applications must clearly define the range that they require in order to perform correctly.


The velocity in which the servo shaft moves is not defined by this function but is either intrinsic to the servo or a configuration of the servo.




**Parameters:**


* `p_position` - the position to move the servo shaft in degrees. 



**Returns:**

result&lt;position\_t&gt; - success or failure 




**Exception:**


* `std::errc::invalid_argument` - when position exceeds the range of the servo. When this error occurs, the guaranteed behavior is that the servo keeps its last set position. 
* [**hal::servo::range\_error**](structhal_1_1servo_1_1range__error.md) - when position exceeds the range of the servo. Provides details about the min and max range of the servo. When this error occurs, the guaranteed behavior is that the servo keeps its last set position. 




        



### function ~servo 

```C++
virtual hal::servo::~servo () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/servo.hpp`

