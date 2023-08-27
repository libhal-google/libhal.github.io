

# Namespace hal::rmd



[**Namespace List**](namespaces.md) **>** [**hal**](namespacehal.md) **>** [**rmd**](namespacehal_1_1rmd.md)




















## Classes

| Type | Name |
| ---: | :--- |
| class | [**drc**](classhal_1_1rmd_1_1drc.md) <br>_Driver for RMD motors equip with the DRC motor drivers._  |
| class | [**drc\_motor**](classhal_1_1rmd_1_1drc__motor.md) <br>_Motor interface adaptor for DRC._  |
| class | [**drc\_rotation\_sensor**](classhal_1_1rmd_1_1drc__rotation__sensor.md) <br>_Rotation sensor adaptor for DRC motors._  |
| class | [**drc\_servo**](classhal_1_1rmd_1_1drc__servo.md) <br>_Servo interface adaptor for DRC._  |
| class | [**drc\_temperature\_sensor**](classhal_1_1rmd_1_1drc__temperature__sensor.md) <br>_Temperature sensor adaptor for DRC motors._  |
| class | [**mc\_x**](classhal_1_1rmd_1_1mc__x.md) <br>_Driver for RMD series motors equip with the MC-X motor driver._  |
| class | [**mc\_x\_motor**](classhal_1_1rmd_1_1mc__x__motor.md) <br>_Control a_ [_**mc\_x**_](classhal_1_1rmd_1_1mc__x.md) _motor driver like a_[_**hal::motor**_](classhal_1_1motor.md) _._ |
| class | [**mc\_x\_rotation**](classhal_1_1rmd_1_1mc__x__rotation.md) <br>_Reports the rotation of the DRC motor._  |
| class | [**mc\_x\_servo**](classhal_1_1rmd_1_1mc__x__servo.md) <br>_Control a_ [_**mc\_x**_](classhal_1_1rmd_1_1mc__x.md) _motor driver like a_[_**hal::servo**_](classhal_1_1servo.md) _._ |
| class | [**mc\_x\_temperature**](classhal_1_1rmd_1_1mc__x__temperature.md) <br>_Reports the temperature of the DRC motor._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**drc\_motor**](classhal_1_1rmd_1_1drc__motor.md) &gt; | [**make\_motor**](#function-make_motor) ([**drc**](classhal_1_1rmd_1_1drc.md) & p\_drc, [**hal::rpm**](namespacehal.md#typedef-rpm) p\_max\_speed) <br>_Create a_ [_**hal::motor**_](classhal_1_1motor.md) _implementation from the drc driver._ |
|  result&lt; [**mc\_x\_motor**](classhal_1_1rmd_1_1mc__x__motor.md) &gt; | [**make\_motor**](#function-make_motor) ([**mc\_x**](classhal_1_1rmd_1_1mc__x.md) & p\_mc\_x, [**hal::rpm**](namespacehal.md#typedef-rpm) p\_max\_speed) <br>_Create a_ [_**hal::motor**_](classhal_1_1motor.md) _driver using the MC-X driver._ |
|  result&lt; [**drc\_rotation\_sensor**](classhal_1_1rmd_1_1drc__rotation__sensor.md) &gt; | [**make\_rotation\_sensor**](#function-make_rotation_sensor) ([**drc**](classhal_1_1rmd_1_1drc.md) & p\_drc) <br>_Create a_ [_**hal::rotation\_sensor**_](classhal_1_1rotation__sensor.md) _driver using the drc driver._ |
|  result&lt; [**mc\_x\_rotation**](classhal_1_1rmd_1_1mc__x__rotation.md) &gt; | [**make\_rotation\_sensor**](#function-make_rotation_sensor) ([**mc\_x**](classhal_1_1rmd_1_1mc__x.md) & p\_mc\_x) <br>_Create a_ [_**hal::rotation\_sensor**_](classhal_1_1rotation__sensor.md) _driver using the MC-X driver._ |
|  result&lt; [**drc\_servo**](classhal_1_1rmd_1_1drc__servo.md) &gt; | [**make\_servo**](#function-make_servo) ([**drc**](classhal_1_1rmd_1_1drc.md) & p\_drc, [**hal::rpm**](namespacehal.md#typedef-rpm) p\_max\_speed) <br>_Create a_ [_**hal::servo**_](classhal_1_1servo.md) _driver using the drc driver._ |
|  result&lt; [**mc\_x\_servo**](classhal_1_1rmd_1_1mc__x__servo.md) &gt; | [**make\_servo**](#function-make_servo) ([**mc\_x**](classhal_1_1rmd_1_1mc__x.md) & p\_mc\_x, [**hal::rpm**](namespacehal.md#typedef-rpm) p\_max\_speed) <br>_Create a_ [_**hal::rotation\_sensor**_](classhal_1_1rotation__sensor.md) _driver using the MC-X driver._ |
|  result&lt; [**drc\_temperature\_sensor**](classhal_1_1rmd_1_1drc__temperature__sensor.md) &gt; | [**make\_temperature\_sensor**](#function-make_temperature_sensor) ([**drc**](classhal_1_1rmd_1_1drc.md) & p\_drc) <br>_Create a_ [_**hal::temperature\_sensor**_](classhal_1_1temperature__sensor.md) _driver using the drc driver._ |
|  result&lt; [**mc\_x\_temperature**](classhal_1_1rmd_1_1mc__x__temperature.md) &gt; | [**make\_temperature\_sensor**](#function-make_temperature_sensor) ([**mc\_x**](classhal_1_1rmd_1_1mc__x.md) & p\_mc\_x) <br>_Create a_ [_**hal::temperature\_sensor**_](classhal_1_1temperature__sensor.md) _driver using the MC-X driver._ |




























## Public Functions Documentation




### function make\_motor 

_Create a_ [_**hal::motor**_](classhal_1_1motor.md) _implementation from the drc driver._
```C++
result< drc_motor > hal::rmd::make_motor (
    drc & p_drc,
    hal::rpm p_max_speed
) 
```





**Parameters:**


* `p_drc` - reference to a drc driver. This object's lifetime must NOT exceed the lifetime of the return drc motor. 
* `p_max_speed` - maximum speed of the motor represented by +1.0 and -1.0 



**Returns:**

[**drc\_motor**](classhal_1_1rmd_1_1drc__motor.md) - motor implementation based on the drc driver 





        



### function make\_motor 

_Create a_ [_**hal::motor**_](classhal_1_1motor.md) _driver using the MC-X driver._
```C++
result< mc_x_motor > hal::rmd::make_motor (
    mc_x & p_mc_x,
    hal::rpm p_max_speed
) 
```





**Parameters:**


* `p_mc_x` - reference to a MC-X driver. This object's lifetime must exceed the lifetime of the returned object. 
* `p_max_speed` - maximum speed of the motor represented by +1.0 and -1.0 



**Returns:**

result&lt;mc\_x\_motor&gt; - motor implementation using the MC-X driver 





        



### function make\_rotation\_sensor 

_Create a_ [_**hal::rotation\_sensor**_](classhal_1_1rotation__sensor.md) _driver using the drc driver._
```C++
result< drc_rotation_sensor > hal::rmd::make_rotation_sensor (
    drc & p_drc
) 
```





**Parameters:**


* `p_drc` - reference to a drc driver. This object's lifetime must exceed the lifetime of the returned object. 



**Returns:**

[**drc\_rotation\_sensor**](classhal_1_1rmd_1_1drc__rotation__sensor.md) - motor implementation based on the drc driver 





        



### function make\_rotation\_sensor 

_Create a_ [_**hal::rotation\_sensor**_](classhal_1_1rotation__sensor.md) _driver using the MC-X driver._
```C++
result< mc_x_rotation > hal::rmd::make_rotation_sensor (
    mc_x & p_mc_x
) 
```





**Parameters:**


* `p_mc_x` - reference to a MC-X driver. This object's lifetime must exceed the lifetime of the returned object. 



**Returns:**

result&lt;mc\_x\_rotation&gt; - rotation sensor implementation based on the MC-X driver 





        



### function make\_servo 

_Create a_ [_**hal::servo**_](classhal_1_1servo.md) _driver using the drc driver._
```C++
result< drc_servo > hal::rmd::make_servo (
    drc & p_drc,
    hal::rpm p_max_speed
) 
```





**Parameters:**


* `p_drc` - reference to a drc driver. This object's lifetime must exceed the lifetime of the returned object. 
* `p_max_speed` - maximum speed of the motor when moving to an angle 



**Returns:**

result&lt;drc\_servo&gt; - motor implementation based on the drc driver 





        



### function make\_servo 

_Create a_ [_**hal::rotation\_sensor**_](classhal_1_1rotation__sensor.md) _driver using the MC-X driver._
```C++
result< mc_x_servo > hal::rmd::make_servo (
    mc_x & p_mc_x,
    hal::rpm p_max_speed
) 
```





**Parameters:**


* `p_mc_x` - reference to a MC-X driver. This object's lifetime must exceed the lifetime of the returned object. 
* `p_max_speed` - maximum speed of the motor when moving to an angle 



**Returns:**

result&lt;mc\_x\_rotation&gt; - rotation sensor implementation based on the MC-X driver 





        



### function make\_temperature\_sensor 

_Create a_ [_**hal::temperature\_sensor**_](classhal_1_1temperature__sensor.md) _driver using the drc driver._
```C++
result< drc_temperature_sensor > hal::rmd::make_temperature_sensor (
    drc & p_drc
) 
```





**Parameters:**


* `p_drc` - reference to a drc driver. This object's lifetime must exceed the lifetime of the returned object. 



**Returns:**

result&lt;drc\_temperature\_sensor&gt; - temperature sensor implementation based on the drc driver. 





        



### function make\_temperature\_sensor 

_Create a_ [_**hal::temperature\_sensor**_](classhal_1_1temperature__sensor.md) _driver using the MC-X driver._
```C++
result< mc_x_temperature > hal::rmd::make_temperature_sensor (
    mc_x & p_mc_x
) 
```





**Parameters:**


* `p_mc_x` - reference to a MC-X driver. This object's lifetime must exceed the lifetime of the returned object. 



**Returns:**

result&lt;mc\_x\_temperature&gt; - temperature sensor implementation based on the MC-X driver 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-rmd/drc.hpp`

