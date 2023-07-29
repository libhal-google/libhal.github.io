

# Class hal::rmd::mc\_x



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**rmd**](namespacehal_1_1rmd.md) **>** [**mc\_x**](classhal_1_1rmd_1_1mc__x.md)



_Driver for RMD series motors equip with the MC-X motor driver._ 

* `#include <mc_x.hpp>`















## Classes

| Type | Name |
| ---: | :--- |
| struct | [**feedback\_t**](structhal_1_1rmd_1_1mc__x_1_1feedback__t.md) <br> |


## Public Types

| Type | Name |
| ---: | :--- |
| enum hal::byte | [**actuate**](#enum-actuate)  <br>_Commands for actuate the motor._  |
| enum hal::byte | [**read**](#enum-read)  <br>_Commands that can be issued to a RMD-X motor._  |
| enum hal::byte | [**system**](#enum-system)  <br>_Commands for controlling the motor as a whole._  |
| enum hal::byte | [**write**](#enum-write)  <br>_Commands for updating motor configuration data._  |




















## Public Functions

| Type | Name |
| ---: | :--- |
|  const [**feedback\_t**](structhal_1_1rmd_1_1mc__x_1_1feedback__t.md) & | [**feedback**](#function-feedback) () const<br>_Get feedback about the motor._  |
|  status | [**feedback\_request**](#function-feedback_request) ([**read**](classhal_1_1rmd_1_1mc__x.md#enum-read) p\_command) <br>_Request feedback from the motor._  |
|   | [**mc\_x**](#function-mc_x-13) ([**mc\_x**](classhal_1_1rmd_1_1mc__x.md) & p\_other) = delete<br> |
|   | [**mc\_x**](#function-mc_x-23) ([**mc\_x**](classhal_1_1rmd_1_1mc__x.md) && p\_other) <br> |
|  void | [**operator()**](#function-operator()) (const [**can::message\_t**](structhal_1_1can_1_1message__t.md) & p\_message) <br>_Handle messages from the can bus with this devices ID._  |
|  [**mc\_x**](classhal_1_1rmd_1_1mc__x.md) & | [**operator=**](#function-operator) ([**mc\_x**](classhal_1_1rmd_1_1mc__x.md) & p\_other) = delete<br> |
|  [**mc\_x**](classhal_1_1rmd_1_1mc__x.md) & | [**operator=**](#function-operator_1) ([**mc\_x**](classhal_1_1rmd_1_1mc__x.md) && p\_other) <br> |
|  status | [**position\_control**](#function-position_control) (degrees p\_angle, rpm speed) <br>_Move motor shaft to a specific angle._  |
|  status | [**system\_control**](#function-system_control) ([**system**](classhal_1_1rmd_1_1mc__x.md#enum-system) p\_system\_command) <br>_Send system control commands to the device._  |
|  status | [**velocity\_control**](#function-velocity_control) (rpm p\_speed) <br>_Rotate motor shaft at the designated speed._  |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**mc\_x**](classhal_1_1rmd_1_1mc__x.md) &gt; | [**create**](#function-create) ([**hal::can\_router**](classhal_1_1can__router.md) & p\_router, [**hal::steady\_clock**](classhal_1_1steady__clock.md) & p\_clock, float p\_gear\_ratio, [**can::id\_t**](classhal_1_1can.md#typedef-id_t) device\_id, hal::time\_duration p\_max\_response\_time=std::chrono::milliseconds(10)) <br>_Create a new_ [_**mc\_x**_](classhal_1_1rmd_1_1mc__x.md) _device driver._ |


























## Public Types Documentation




### enum actuate 

```C++
enum hal::rmd::mc_x::actuate {
    torque = 0xA1,
    speed = 0xA2,
    position = 0xA5
};
```






### enum read 

```C++
enum hal::rmd::mc_x::read {
    multi_turns_angle = 0x92,
    status_1_and_error_flags = 0x9A,
    status_2 = 0x9C
};
```






### enum system 

```C++
enum hal::rmd::mc_x::system {
    off = 0x80,
    stop = 0x81
};
```






### enum write 

```C++
enum hal::rmd::mc_x::write;
```



## Public Functions Documentation




### function feedback 

_Get feedback about the motor._ 
```C++
const feedback_t & hal::rmd::mc_x::feedback () const
```



This object contains cached data from each response returned from the motor. It is updated when any of the control or feedback APIs are called. This object will not update without one of those APIs being called.




**Returns:**

const [**feedback\_t**](structhal_1_1rmd_1_1mc__x_1_1feedback__t.md)& - information about the motor 




**Exception:**


* `std::errc::timed_out` - if a response is not returned within the max response time set at creation. 




        



### function feedback\_request 

_Request feedback from the motor._ 
```C++
status hal::rmd::mc_x::feedback_request (
    read p_command
) 
```





**Parameters:**


* `p_command` - the request to command the motor to respond with 



**Returns:**

status - success or failure 




**Exception:**


* `std::errc::timed_out` - if a response is not returned within the max response time set at creation. 




        



### function mc\_x [1/3]

```C++
hal::rmd::mc_x::mc_x (
    mc_x & p_other
) = delete
```






### function mc\_x [2/3]

```C++
hal::rmd::mc_x::mc_x (
    mc_x && p_other
) 
```






### function operator() 

_Handle messages from the can bus with this devices ID._ 
```C++
void hal::rmd::mc_x::operator() (
    const can::message_t & p_message
) 
```



Meant mostly for testing purposes.




**Parameters:**


* `p_message` - message received from the bus 




        



### function operator= 

```C++
mc_x & hal::rmd::mc_x::operator= (
    mc_x & p_other
) = delete
```






### function operator= 

```C++
mc_x & hal::rmd::mc_x::operator= (
    mc_x && p_other
) 
```






### function position\_control 

_Move motor shaft to a specific angle._ 
```C++
status hal::rmd::mc_x::position_control (
    degrees p_angle,
    rpm speed
) 
```





**Parameters:**


* `p_angle` - angle position in degrees to move to 
* `speed` - speed in rpm's 



**Returns:**

status - success or failure 




**Exception:**


* `std::errc::timed_out` - if a response is not returned within the max response time set at creation. 




        



### function system\_control 

_Send system control commands to the device._ 
```C++
status hal::rmd::mc_x::system_control (
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
status hal::rmd::mc_x::velocity_control (
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

_Create a new_ [_**mc\_x**_](classhal_1_1rmd_1_1mc__x.md) _device driver._
```C++
static result< mc_x > hal::rmd::mc_x::create (
    hal::can_router & p_router,
    hal::steady_clock & p_clock,
    float p_gear_ratio,
    can::id_t device_id,
    hal::time_duration p_max_response_time=std::chrono::milliseconds(10)
) 
```





**Parameters:**


* `p_router` - can router to use 
* `p_clock` - clocked used to determine timeouts 
* `p_gear_ratio` - gear ratio of the motor 
* `device_id` - The CAN ID of the motor 
* `p_max_response_time` - maximum amount of time to wait for a response from the motor. 



**Returns:**

result&lt;mc\_x&gt; - the [**mc\_x**](classhal_1_1rmd_1_1mc__x.md) driver or an error (no errors are currently generated from this function) 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-rmd/mc_x.hpp`

