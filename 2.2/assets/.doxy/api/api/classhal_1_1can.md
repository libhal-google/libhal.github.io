

# Class hal::can



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**can**](classhal_1_1can.md)



_Controller Area Network (CAN bus) hardware abstraction interface._ 

* `#include <can.hpp>`





Inherited by the following classes: [hal::lpc40::can](classhal_1_1lpc40_1_1can.md),  [hal::mock::can](structhal_1_1mock_1_1can.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**message\_t**](structhal_1_1can_1_1message__t.md) <br>_A CAN message._  |
| struct | [**send\_t**](structhal_1_1can_1_1send__t.md) <br>_Feedback from sending data over the CAN BUS._  |
| struct | [**settings**](structhal_1_1can_1_1settings.md) <br>_Generic settings for a can peripheral._  |


## Public Types

| Type | Name |
| ---: | :--- |
| typedef void(const [**message\_t**](structhal_1_1can_1_1message__t.md) &p\_message) | [**handler**](#typedef-handler)  <br>_Receive handler for can messages._  |
| typedef uint32\_t | [**id\_t**](#typedef-id_t)  <br>_Can message ID type trait._  |




















## Public Functions

| Type | Name |
| ---: | :--- |
|  status | [**bus\_on**](#function-bus_on) () <br>_Transition the CAN device from "bus-off" to "bus-on"._  |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1can_1_1settings.md) & p\_settings) <br>_Configure this can bus port to match the settings supplied._  |
|  void | [**on\_receive**](#function-on_receive) ([**hal::callback**](namespacehal.md#typedef-callback)&lt; [**handler**](classhal_1_1can.md#typedef-handler) &gt; p\_handler) <br>_Set the message reception handler._  |
|  result&lt; [**send\_t**](structhal_1_1can_1_1send__t.md) &gt; | [**send**](#function-send) (const [**message\_t**](structhal_1_1can_1_1message__t.md) & p\_message) <br>_Send a can message._  |
| virtual  | [**~can**](#function-can) () = default<br> |




























## Public Types Documentation




### typedef handler 

```C++
using hal::can::handler =  void(const message_t& p_message);
```






### typedef id\_t 

```C++
using hal::can::id_t =  uint32_t;
```



## Public Functions Documentation




### function bus\_on 

_Transition the CAN device from "bus-off" to "bus-on"._ 
```C++
inline status hal::can::bus_on () 
```



WARNING: Calling this function when the device is already in "bus-on" will have no effect. This function is not necessary to call after creating the CAN driver as the driver should already be "bus-on" on creation.


Can devices have two counters to determine system health. These two counters are the "transmit error counter" and the "receive error counter". Transmission errors can occur when the device attempts to communicate on the bus and either does not get an acknowledge or sees an unexpected or erroneous signal on the bus during its own transmission. When transmission errors reach 255 counts, the device will go into the "bus-off" state.


In the "bus-off" state, the CAN peripheral can no longer communicate on the bus. Any calls to `send()` will throw the error `std::errc::network_down`. If this occurs, this function must be called to re-enable bus communication.




**Returns:**

status - success or failure. In the case this function fails repeatedly, it is advised to simply not use the bus anymore as something is critical wrong and may not be recoverable. 





        



### function configure 

_Configure this can bus port to match the settings supplied._ 
```C++
inline status hal::can::configure (
    const settings & p_settings
) 
```





**Parameters:**


* `p_settings` - settings to apply to can driver 



**Returns:**

status - success or failure 




**Exception:**


* `std::errc::invalid_argument` if the settings could not be achieved. 




        



### function on\_receive 

_Set the message reception handler._ 
```C++
inline void hal::can::on_receive (
    hal::callback < handler > p_handler
) 
```



All messages received before a message handler is installed are dropped.




**Parameters:**


* `p_handler` - this handler will be called when a message has been received. 




        



### function send 

_Send a can message._ 
```C++
inline result< send_t > hal::can::send (
    const message_t & p_message
) 
```





**Parameters:**


* `p_message` - the message to be sent 



**Returns:**

result&lt;send\_t&gt; - success or failure 




**Exception:**


* `std::errc::network_down` - if the can device is in the "bus-off" state. This can happen if a critical fault in the bus has occurred. A call to `bus_on()` will need to be issued to attempt to talk on the bus again. See `bus_on()` for more details. 




        



### function ~can 

```C++
virtual hal::can::~can () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/can.hpp`

