

# Struct hal::rmd::mc\_x::feedback\_t



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**rmd**](namespacehal_1_1rmd.md) **>** [**mc\_x**](classhal_1_1rmd_1_1mc__x.md) **>** [**feedback\_t**](structhal_1_1rmd_1_1mc__x_1_1feedback__t.md)



[More...](#detailed-description)

* `#include <mc_x.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  std::int16\_t | [**encoder**](#variable-encoder)   = { 0 }<br>_Signed 16-bit raw encoder count value of the motor._  |
|  std::uint32\_t | [**message\_number**](#variable-message_number)   = = 0<br> |
|  std::int16\_t | [**raw\_current**](#variable-raw_current)   = { 0 }<br> |
|  std::int16\_t | [**raw\_error\_state**](#variable-raw_error_state)   = { 0 }<br>_16-bit value containing error flag information_  |
|  std::int8\_t | [**raw\_motor\_temperature**](#variable-raw_motor_temperature)   = { 0 }<br>_Core temperature of the motor (1C/LSB)_  |
|  std::int64\_t | [**raw\_multi\_turn\_angle**](#variable-raw_multi_turn_angle)   = { 0 }<br> |
|  std::int16\_t | [**raw\_speed**](#variable-raw_speed)   = { 0 }<br>_Rotational velocity of the motor (1 degrees per second (dps)/LSB)_  |
|  std::int16\_t | [**raw\_volts**](#variable-raw_volts)   = { 0 }<br>_Motor's supply voltage (0.1V/LSB)_  |
















## Public Functions

| Type | Name |
| ---: | :--- |
|  hal::degrees | [**angle**](#function-angle) () noexcept const<br> |
|  hal::ampere | [**current**](#function-current) () noexcept const<br> |
|  bool | [**encoder\_calibration\_error**](#function-encoder_calibration_error) () noexcept const<br> |
|  bool | [**low\_pressure**](#function-low_pressure) () noexcept const<br> |
|  bool | [**motor\_stall**](#function-motor_stall) () noexcept const<br> |
|  bool | [**over\_current**](#function-over_current) () noexcept const<br> |
|  bool | [**over\_temperature**](#function-over_temperature) () noexcept const<br> |
|  bool | [**over\_voltage**](#function-over_voltage) () noexcept const<br> |
|  bool | [**power\_overrun**](#function-power_overrun) () noexcept const<br> |
|  hal::rpm | [**speed**](#function-speed) () noexcept const<br> |
|  bool | [**speeding**](#function-speeding) () noexcept const<br> |
|  hal::celsius | [**temperature**](#function-temperature) () noexcept const<br> |
|  hal::volts | [**volts**](#function-volts) () noexcept const<br> |




























# Detailed Description


Structure containing all of the forms of feedback acquired by an RMD-X motor 


    
## Public Attributes Documentation




### variable encoder 

```C++
std::int16_t hal::rmd::mc_x::feedback_t::encoder;
```






### variable message\_number 


```C++
std::uint32_t hal::rmd::mc_x::feedback_t::message_number;
```



Every time a message from our motor is received this number increments. This can be used to indicate if the feedback has updated since the last time it was read. 


        



### variable raw\_current 


```C++
std::int16_t hal::rmd::mc_x::feedback_t::raw_current;
```



Current flowing through the motor windings (-2048 &lt;-&gt; 2048 ==&gt; -33A &lt;-&gt; 33A) 


        



### variable raw\_error\_state 

```C++
std::int16_t hal::rmd::mc_x::feedback_t::raw_error_state;
```






### variable raw\_motor\_temperature 

```C++
std::int8_t hal::rmd::mc_x::feedback_t::raw_motor_temperature;
```






### variable raw\_multi\_turn\_angle 


```C++
std::int64_t hal::rmd::mc_x::feedback_t::raw_multi_turn_angle;
```



Represents the multi-turn absolute angle of the encoder relative to its zero starting point (0.01°/LSB) 


        



### variable raw\_speed 

```C++
std::int16_t hal::rmd::mc_x::feedback_t::raw_speed;
```






### variable raw\_volts 

```C++
std::int16_t hal::rmd::mc_x::feedback_t::raw_volts;
```



## Public Functions Documentation




### function angle 

```C++
hal::degrees hal::rmd::mc_x::feedback_t::angle () noexcept const
```






### function current 

```C++
hal::ampere hal::rmd::mc_x::feedback_t::current () noexcept const
```






### function encoder\_calibration\_error 

```C++
bool hal::rmd::mc_x::feedback_t::encoder_calibration_error () noexcept const
```






### function low\_pressure 

```C++
bool hal::rmd::mc_x::feedback_t::low_pressure () noexcept const
```






### function motor\_stall 

```C++
bool hal::rmd::mc_x::feedback_t::motor_stall () noexcept const
```






### function over\_current 

```C++
bool hal::rmd::mc_x::feedback_t::over_current () noexcept const
```






### function over\_temperature 

```C++
bool hal::rmd::mc_x::feedback_t::over_temperature () noexcept const
```






### function over\_voltage 

```C++
bool hal::rmd::mc_x::feedback_t::over_voltage () noexcept const
```






### function power\_overrun 

```C++
bool hal::rmd::mc_x::feedback_t::power_overrun () noexcept const
```






### function speed 

```C++
hal::rpm hal::rmd::mc_x::feedback_t::speed () noexcept const
```






### function speeding 

```C++
bool hal::rmd::mc_x::feedback_t::speeding () noexcept const
```






### function temperature 

```C++
hal::celsius hal::rmd::mc_x::feedback_t::temperature () noexcept const
```






### function volts 

```C++
hal::volts hal::rmd::mc_x::feedback_t::volts () noexcept const
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-rmd/mc_x.hpp`

