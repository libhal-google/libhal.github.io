

# Class hal::lpc40::can



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**lpc40**](namespacehal_1_1lpc40.md) **>** [**can**](classhal_1_1lpc40_1_1can.md)








Inherits the following classes: [hal::can](classhal_1_1can.md)












## Classes

| Type | Name |
| ---: | :--- |
| struct | [**port**](structhal_1_1lpc40_1_1can_1_1port.md) <br> |




## Public Types inherited from hal::can

See [hal::can](classhal_1_1can.md)

| Type | Name |
| ---: | :--- |
| typedef void(const [**message\_t**](structhal_1_1can_1_1message__t.md) &p\_message) | [**handler**](#typedef-handler)  <br>_Receive handler for can messages._  |
| typedef uint32\_t | [**id\_t**](#typedef-id_t)  <br>_Can message ID type trait._  |






































## Public Functions

| Type | Name |
| ---: | :--- |
| virtual  | [**~can**](#function-can) () <br> |


## Public Functions inherited from hal::can

See [hal::can](classhal_1_1can.md)

| Type | Name |
| ---: | :--- |
|  status | [**bus\_on**](#function-bus_on) () <br>_Transition the CAN device from "bus-off" to "bus-on"._  |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1can_1_1settings.md) & p\_settings) <br>_Configure this can bus port to match the settings supplied._  |
|  void | [**on\_receive**](#function-on_receive) (hal::callback&lt; [**handler**](classhal_1_1can.md#typedef-handler) &gt; p\_handler) <br>_Set the message reception handler._  |
|  result&lt; [**send\_t**](structhal_1_1can_1_1send__t.md) &gt; | [**send**](#function-send) (const [**message\_t**](structhal_1_1can_1_1message__t.md) & p\_message) <br>_Send a can message._  |
| virtual  | [**~can**](#function-can) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**can**](classhal_1_1lpc40_1_1can.md) &gt; | [**get**](#function-get) (std::uint8\_t p\_port, [**can::settings**](structhal_1_1can_1_1settings.md) p\_settings={}) <br> |




















































## Public Functions Documentation




### function ~can 

```C++
virtual hal::lpc40::can::~can () 
```



Implements [*hal::can::~can*](classhal_1_1can.md#function-can)

## Public Static Functions Documentation




### function get 

```C++
static result< can > hal::lpc40::can::get (
    std::uint8_t p_port,
    can::settings p_settings={}
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-lpc40/can.hpp`

