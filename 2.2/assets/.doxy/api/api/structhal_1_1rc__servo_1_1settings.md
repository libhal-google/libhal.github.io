

# Struct hal::rc\_servo::settings



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**rc\_servo**](classhal_1_1rc__servo.md) **>** [**settings**](structhal_1_1rc__servo_1_1settings.md)



_Information about the RC servo needed to control it properly._ 

* `#include <rc_servo.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  [**hal::hertz**](namespacehal.md#typedef-hertz) | [**frequency**](#variable-frequency)   = = 50<br>_PWM signal frequency. Check the documentation for the RC servo to determine what range of frequencies can be used with it._  |
|  [**hal::degrees**](namespacehal.md#typedef-degrees) | [**max\_angle**](#variable-max_angle)   = = 90<br>_The physical maximum angle that the servo shaft can move to._  |
|  std::uint32\_t | [**max\_microseconds**](#variable-max_microseconds)   = = 2000<br>_The maximum pulse width in microseconds that maps to the maximum angle of the servo._  |
|  [**hal::degrees**](namespacehal.md#typedef-degrees) | [**min\_angle**](#variable-min_angle)   = = 0<br>_The physical minimum angle that the servo shaft can move to._  |
|  std::uint32\_t | [**min\_microseconds**](#variable-min_microseconds)   = = 1000<br>_The minimum pulse width in microseconds that maps to the minimum angle of the servo._  |












































## Public Attributes Documentation




### variable frequency 

```C++
hal::hertz hal::rc_servo::settings::frequency;
```






### variable max\_angle 

```C++
hal::degrees hal::rc_servo::settings::max_angle;
```






### variable max\_microseconds 

```C++
std::uint32_t hal::rc_servo::settings::max_microseconds;
```






### variable min\_angle 

```C++
hal::degrees hal::rc_servo::settings::min_angle;
```






### variable min\_microseconds 

```C++
std::uint32_t hal::rc_servo::settings::min_microseconds;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/rc_servo.hpp`

