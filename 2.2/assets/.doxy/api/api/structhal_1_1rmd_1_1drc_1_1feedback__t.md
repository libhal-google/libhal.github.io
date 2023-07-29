

# Struct hal::rmd::drc::feedback\_t



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**rmd**](namespacehal_1_1rmd.md) **>** [**drc**](classhal_1_1rmd_1_1drc.md) **>** [**feedback\_t**](structhal_1_1rmd_1_1drc_1_1feedback__t.md)



[More...](#detailed-description)

* `#include <drc.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  std::int16\_t | [**encoder**](#variable-encoder)   = { 0 }<br>_Signed 16-bit raw encoder count value of the motor._  |
|  std::uint32\_t | [**message\_number**](#variable-message_number)   = = 0<br> |
|  std::int16\_t | [**raw\_current**](#variable-raw_current)   = { 0 }<br> |
|  std::uint8\_t | [**raw\_error\_state**](#variable-raw_error_state)   = { 0 }<br>_8-bit value containing error flag information_  |
|  std::int8\_t | [**raw\_motor\_temperature**](#variable-raw_motor_temperature)   = { 0 }<br>_Core temperature of the motor (1C/LSB)_  |
|  std::int64\_t | [**raw\_multi\_turn\_angle**](#variable-raw_multi_turn_angle)   = { 0 }<br>_Raw multi-turn angle (0.01°/LSB)_  |
|  std::int16\_t | [**raw\_speed**](#variable-raw_speed)   = { 0 }<br>_Rotational velocity of the motor (1 degrees per second (dps)/LSB)_  |
|  std::int16\_t | [**raw\_volts**](#variable-raw_volts)   = { 0 }<br>_Motor's supply voltage (0.1V/LSB)_  |
















## Public Functions

| Type | Name |
| ---: | :--- |
|  hal::degrees | [**angle**](#function-angle) () noexcept const<br> |
|  hal::ampere | [**current**](#function-current) () noexcept const<br> |
|  bool | [**over\_temperature\_protection\_tripped**](#function-over_temperature_protection_tripped) () noexcept const<br>_Return if the motor has detected an over temperature event._  |
|  bool | [**over\_voltage\_protection\_tripped**](#function-over_voltage_protection_tripped) () noexcept const<br>_Return if the motor has detected an over voltage event._  |
|  hal::rpm | [**speed**](#function-speed) () noexcept const<br> |
|  hal::celsius | [**temperature**](#function-temperature) () noexcept const<br> |
|  hal::volts | [**volts**](#function-volts) () noexcept const<br> |




























# Detailed Description


Structure containing all of the forms of feedback acquired by an RMD-X motor 


    
## Public Attributes Documentation




### variable encoder 

```C++
std::int16_t hal::rmd::drc::feedback_t::encoder;
```






### variable message\_number 


```C++
std::uint32_t hal::rmd::drc::feedback_t::message_number;
```



Every time a message from our motor is received this number increments. This can be used to indicate if the feedback has updated since the last time it was read. 


        



### variable raw\_current 


```C++
std::int16_t hal::rmd::drc::feedback_t::raw_current;
```



Current flowing through the motor windings (-2048 &lt;-&gt; 2048 ==&gt; -33A &lt;-&gt; 33A) 


        



### variable raw\_error\_state 

```C++
std::uint8_t hal::rmd::drc::feedback_t::raw_error_state;
```






### variable raw\_motor\_temperature 

```C++
std::int8_t hal::rmd::drc::feedback_t::raw_motor_temperature;
```






### variable raw\_multi\_turn\_angle 

```C++
std::int64_t hal::rmd::drc::feedback_t::raw_multi_turn_angle;
```






### variable raw\_speed 

```C++
std::int16_t hal::rmd::drc::feedback_t::raw_speed;
```






### variable raw\_volts 

```C++
std::int16_t hal::rmd::drc::feedback_t::raw_volts;
```



## Public Functions Documentation




### function angle 

```C++
hal::degrees hal::rmd::drc::feedback_t::angle () noexcept const
```






### function current 

```C++
hal::ampere hal::rmd::drc::feedback_t::current () noexcept const
```






### function over\_temperature\_protection\_tripped 

_Return if the motor has detected an over temperature event._ 
```C++
bool hal::rmd::drc::feedback_t::over_temperature_protection_tripped () noexcept const
```



In order for this field to be updated a feedback\_request with status\_1\_and\_error\_flags must be issued.




**Returns:**

true - over temperature protection tripped 




**Returns:**

false - over temperature protection has not tripped 





        



### function over\_voltage\_protection\_tripped 

_Return if the motor has detected an over voltage event._ 
```C++
bool hal::rmd::drc::feedback_t::over_voltage_protection_tripped () noexcept const
```



In order for this field to be updated a feedback\_request with status\_1\_and\_error\_flags must be issued.




**Returns:**

true - over voltage protection tripped 




**Returns:**

false - over voltage protection has not tripped 





        



### function speed 

```C++
hal::rpm hal::rmd::drc::feedback_t::speed () noexcept const
```






### function temperature 

```C++
hal::celsius hal::rmd::drc::feedback_t::temperature () noexcept const
```






### function volts 

```C++
hal::volts hal::rmd::drc::feedback_t::volts () noexcept const
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-rmd/drc.hpp`

