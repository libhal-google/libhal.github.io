

# Class hal::motor



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**motor**](classhal_1_1motor.md)



_Hardware abstraction for an open loop rotational actuator._ [More...](#detailed-description)

* `#include <motor.hpp>`





Inherited by the following classes: [hal::mock::motor](structhal_1_1mock_1_1motor.md),  [hal::rmd::drc\_motor](classhal_1_1rmd_1_1drc__motor.md),  [hal::rmd::mc\_x\_motor](classhal_1_1rmd_1_1mc__x__motor.md),  [hal::soft::inert\_motor](classhal_1_1soft_1_1inert__motor.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**power\_t**](structhal_1_1motor_1_1power__t.md) <br>_Feedback from setting the motor power._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**power\_t**](structhal_1_1motor_1_1power__t.md) &gt; | [**power**](#function-power) (float p\_power) <br>_Apply power to the motor._  |
| virtual  | [**~motor**](#function-motor) () = default<br> |




























# Detailed Description


The motor interface can represent a variety of things such as:



* A driver for motor controller IC like the DRV8801
* A driver for a motor with integrated controller & serial interface
* A unidirectional motor controlled by a single transistor
* A servo with open loop motor control 




    
## Public Functions Documentation




### function power 

_Apply power to the motor._ 
```C++
inline result< power_t > hal::motor::power (
    float p_power
) 
```



Power is a percentage and thus cannot be used as a way to gauge how fast the motor is moving. In general applying more power means to increase speed and/or torque to the motor.



* 0% power would mean that no power is being applied to the motor. In this situation an unloaded motor will not move. 0% power does not guarantee that the motor will hold its position. These specifics depend greatly on the type of motor used and careful selection of motor and motor driver are important for applications using this interface.
* 100% power means that the maximum available of power is being applied to the motor. As an example, if the max voltage of a DC brushed motor's power supply is 12V, then 12V would be supplied to this motor.
* 50% power would mean that half of the available power is being applied to the motor. Using the same example, in this case 6V would be applied to the motor either as a DC constant voltage or via PWM at 50% duty cycle.
* Negative values will cause the motor to move in the opposite direction as positive values. In the event that motor driver can \* only go in one direction, this function should clamp the power applied to 0%.






**Parameters:**


* `p_power` - Percentage of power to apply to the motor from -1.0f to +1.0f, -100% to 100%, respectively. 



**Returns:**

result&lt;power\_t&gt; - success or failure 





        



### function ~motor 

```C++
virtual hal::motor::~motor () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/motor.hpp`

