

# Class hal::inert\_can



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**inert\_can**](classhal_1_1inert__can.md)



_Inert implementation of Controller Area Network (CAN bus) hardware._ 

* `#include <inert_can.hpp>`



Inherits the following classes: [hal::can](classhal_1_1can.md)
















## Public Types inherited from hal::can

See [hal::can](classhal_1_1can.md)

| Type | Name |
| ---: | :--- |
| typedef void(const [**message\_t**](structhal_1_1can_1_1message__t.md) &p\_message) | [**handler**](#typedef-handler)  <br>_Receive handler for can messages._  |
| typedef uint32\_t | [**id\_t**](#typedef-id_t)  <br>_Can message ID type trait._  |








































## Public Functions inherited from hal::can

See [hal::can](classhal_1_1can.md)

| Type | Name |
| ---: | :--- |
|  status | [**bus\_on**](#function-bus_on) () <br>_Transition the CAN device from "bus-off" to "bus-on"._  |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1can_1_1settings.md) & p\_settings) <br>_Configure this can bus port to match the settings supplied._  |
|  void | [**on\_receive**](#function-on_receive) ([**hal::callback**](namespacehal.md#typedef-callback)&lt; [**handler**](classhal_1_1can.md#typedef-handler) &gt; p\_handler) <br>_Set the message reception handler._  |
|  result&lt; [**send\_t**](structhal_1_1can_1_1send__t.md) &gt; | [**send**](#function-send) (const [**message\_t**](structhal_1_1can_1_1message__t.md) & p\_message) <br>_Send a can message._  |
| virtual  | [**~can**](#function-can) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**inert\_can**](classhal_1_1inert__can.md) &gt; | [**create**](#function-create) (bool p\_bus\_on) <br>_Factory function to create_ [_**inert\_can**_](classhal_1_1inert__can.md) _object._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**inert\_can**_](classhal_1_1inert__can.md) _object._
```C++
static inline result< inert_can > hal::inert_can::create (
    bool p_bus_on
) 
```





**Parameters:**


* `p_bus_on` - State of inert can bus. Setting this value to true will return success when [**bus\_on()**](classhal_1_1can.md#function-bus_on) is called, and setting this value to false will return an error when [**bus\_on()**](classhal_1_1can.md#function-bus_on) is caled. 



**Returns:**

result&lt;inert\_can&gt; - Constructed [**inert\_can**](classhal_1_1inert__can.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/incomplete_drivers/inert_can.hpp`

