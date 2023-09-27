

# Class hal::rmd::drc



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**rmd**](namespacehal_1_1rmd.md) **>** [**drc**](classhal_1_1rmd_1_1drc.md)



_Driver for RMD motors equip with the DRC motor drivers._ 

* `#include <drc.hpp>`















## Classes

| Type | Name |
| ---: | :--- |
| struct | [**feedback\_t**](structhal_1_1rmd_1_1drc_1_1feedback__t.md) <br> |


## Public Types

| Type | Name |
| ---: | :--- |
| enum [**hal::byte**](namespacehal.md#typedef-byte) | [**actuate**](#enum-actuate)  <br>_Commands for actuate the motor._  |
| enum [**hal::byte**](namespacehal.md#typedef-byte) | [**read**](#enum-read)  <br>_Commands that can be issued to a RMD-X motor._  |
| enum [**hal::byte**](namespacehal.md#typedef-byte) | [**system**](#enum-system)  <br>_Commands for controlling the motor as a whole._  |
| enum [**hal::byte**](namespacehal.md#typedef-byte) | [**write**](#enum-write)  <br>_Commands for updating motor configuration data._  |




















## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**drc**](#function-drc-13) ([**drc**](classhal_1_1rmd_1_1drc.md) & p\_other) = delete<br> |
|   | [**drc**](#function-drc-23) ([**drc**](classhal_1_1rmd_1_1drc.md) && p\_other) <br> |
|  const [**feedback\_t**](structhal_1_1rmd_1_1drc_1_1feedback__t.md) & | [**feedback**](#function-feedback) () const<br> |
|  status | [**feedback\_request**](#function-feedback_request) ([**read**](classhal_1_1rmd_1_1drc.md#enum-read) p\_command) <br>_Request feedback from the motor._  |
|  void | [**operator()**](#function-operator()) (const [**can::message\_t**](structhal_1_1can_1_1message__t.md) & p\_message) <br>_Handle messages from the canbus with this devices ID._  |
|  [**drc**](classhal_1_1rmd_1_1drc.md) & | [**operator=**](#function-operator) ([**drc**](classhal_1_1rmd_1_1drc.md) & p\_other) = delete<br> |
|  [**drc**](classhal_1_1rmd_1_1drc.md) & | [**operator=**](#function-operator_1) ([**drc**](classhal_1_1rmd_1_1drc.md) && p\_other) <br> |
|  status | [**position\_control**](#function-position_control) ([**degrees**](namespacehal.md#typedef-degrees) p\_angle, [**rpm**](namespacehal.md#typedef-rpm) speed) <br>_Move motor shaft to a specific angle._  |
|  status | [**system\_control**](#function-system_control) ([**system**](classhal_1_1rmd_1_1drc.md#enum-system) p\_system\_command) <br>_Send system control commands to the device._  |
|  status | [**velocity\_control**](#function-velocity_control) ([**rpm**](namespacehal.md#typedef-rpm) p\_speed) <br>_Rotate motor shaft at the designated speed._  |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**drc**](classhal_1_1rmd_1_1drc.md) &gt; | [**create**](#function-create) ([**hal::can\_router**](classhal_1_1can__router.md) & p\_router, [**hal::steady\_clock**](classhal_1_1steady__clock.md) & p\_clock, float p\_gear\_ratio, [**can::id\_t**](classhal_1_1can.md#typedef-id_t) device\_id, [**hal::time\_duration**](namespacehal.md#typedef-time_duration) p\_max\_response\_time=std::chrono::milliseconds(10)) <br>_Create a new drc device driver._  |


























## Public Types Documentation




### enum actuate 

```C++
enum hal::rmd::drc::actuate {
    speed = 0xA2,
    position_2 = 0xA4
};
```






### enum read 

```C++
enum hal::rmd::drc::read {
    multi_turns_angle = 0x92,
    status_1_and_error_flags = 0x9A,
    status_2 = 0x9C
};
```






### enum system 

```C++
enum hal::rmd::drc::system {
    clear_error_flag = 0x9B,
    off = 0x80,
    stop = 0x81,
    running = 0x88
};
```






### enum write 

```C++
enum hal::rmd::drc::write {
    pid_to_ram = 0x31,
    pid_to_rom = 0x32,
    acceleration_data_to_ram = 0x34,
    encoder_offset = 0x91,
    current_position_to_rom_as_motor_zero = 0x19
};
```



## Public Functions Documentation




### function drc [1/3]

```C++
hal::rmd::drc::drc (
    drc & p_other
) = delete
```






### function drc [2/3]

```C++
hal::rmd::drc::drc (
    drc && p_other
) 
```






### function feedback 

```C++
const feedback_t & hal::rmd::drc::feedback () const
```






### function feedback\_request 

_Request feedback from the motor._ 
```C++
status hal::rmd::drc::feedback_request (
    read p_command
) 
```





**Parameters:**


* `p_command` - the request to command the motor to respond with 



**Returns:**

status - success or failure 




**Exception:**


* `std::errc::timed_out` - if a response is not returned within the max response time set at creation. 




        



### function operator() 

_Handle messages from the canbus with this devices ID._ 
```C++
void hal::rmd::drc::operator() (
    const can::message_t & p_message
) 
```



Meant mostly for testing purposes.




**Parameters:**


* `p_message` - message received from the bus 




        



### function operator= 

```C++
drc & hal::rmd::drc::operator= (
    drc & p_other
) = delete
```






### function operator= 

```C++
drc & hal::rmd::drc::operator= (
    drc && p_other
) 
```






### function position\_control 

_Move motor shaft to a specific angle._ 
```C++
status hal::rmd::drc::position_control (
    degrees p_angle,
    rpm speed
) 
```





**Parameters:**


* `p_angle` - angle position in degrees to move to 
* `speed` - maximum speed in rpm's 



**Returns:**

status - success or failure 




**Exception:**


* `std::errc::timed_out` - if a response is not returned within the max response time set at creation. 




        



### function system\_control 

_Send system control commands to the device._ 
```C++
status hal::rmd::drc::system_control (
    system p_system_command
) 
```





**Parameters:**


* `p_system_command` - system control command to send to the device 



**Returns:**

status - success or failure status 




**Exception:**


* `std::errc::timed_out` - if a response is not returned within the max response time set at creation. 




        



### function velocity\_control 

_Rotate motor shaft at the designated speed._ 
```C++
status hal::rmd::drc::velocity_control (
    rpm p_speed
) 
```





**Parameters:**


* `p_speed` - speed in rpm to move the motor shaft at. Positive values rotate the motor shaft clockwise, negative values rotate the motor shaft counter-clockwise assuming you are looking directly at the motor shaft. 



**Returns:**

status - success or failure 




**Exception:**


* `std::errc::timed_out` - if a response is not returned within the max response time set at creation. 




        
## Public Static Functions Documentation




### function create 

_Create a new drc device driver._ 
```C++
static result< drc > hal::rmd::drc::create (
    hal::can_router & p_router,
    hal::steady_clock & p_clock,
    float p_gear_ratio,
    can::id_t device_id,
    hal::time_duration p_max_response_time=std::chrono::milliseconds(10)
) 
```



This factory function will power cycle the motor




**Parameters:**


* `p_router` - can router to use 
* `p_clock` - clocked used to determine timeouts 
* `p_gear_ratio` - gear ratio of the motor 
* `device_id` - The CAN ID of the motor 
* `p_max_response_time` - maximum amount of time to wait for a response from the motor. 



**Returns:**

result&lt;drc&gt; - the drc driver or an error 




**Exception:**


* `std::errc::timed_out` - a response is not returned within the max response time when attempting to power cycle. 




        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-rmd/drc.hpp`

