

# Struct hal::mock::can



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**mock**](namespacehal_1_1mock.md) **>** [**can**](structhal_1_1mock_1_1can.md)



_Mock can implementation for use in unit tests and simulations._ 

* `#include <can.hpp>`



Inherits the following classes: [hal::can](classhal_1_1can.md)
















## Public Types inherited from hal::can

See [hal::can](classhal_1_1can.md)

| Type | Name |
| ---: | :--- |
| typedef void(const [**message\_t**](structhal_1_1can_1_1message__t.md) &p\_message) | [**handler**](#typedef-handler)  <br>_Receive handler for can messages._  |
| typedef uint32\_t | [**id\_t**](#typedef-id_t)  <br>_Can message ID type trait._  |






## Public Attributes

| Type | Name |
| ---: | :--- |
|  [**spy\_handler**](classhal_1_1spy__handler.md)&lt; bool &gt; | [**spy\_bus\_on**](#variable-spy_bus_on)  <br>_Spy handler for_ [_**hal::can::bus\_on()**_](classhal_1_1can.md#function-bus_on) _will always have content of "true"._ |
|  [**spy\_handler**](classhal_1_1spy__handler.md)&lt; [**settings**](structhal_1_1can_1_1settings.md) &gt; | [**spy\_configure**](#variable-spy_configure)  <br>_Spy handler for_ [_**hal::can::configure()**_](classhal_1_1can.md#function-configure) __ |
|  [**spy\_handler**](classhal_1_1spy__handler.md)&lt; hal::callback&lt; [**handler**](classhal_1_1can.md#typedef-handler) &gt; &gt; | [**spy\_on\_receive**](#variable-spy_on_receive)  <br>_Spy handler for_ [_**hal::can::on\_receive()**_](classhal_1_1can.md#function-on_receive) __ |
|  [**spy\_handler**](classhal_1_1spy__handler.md)&lt; [**message\_t**](structhal_1_1can_1_1message__t.md) &gt; | [**spy\_send**](#variable-spy_send)  <br>_Spy handler for_ [_**hal::can::send()**_](classhal_1_1can.md#function-send) __ |
































## Public Functions

| Type | Name |
| ---: | :--- |
|  void | [**reset**](#function-reset) () <br>_Reset spy information for functions._  |


## Public Functions inherited from hal::can

See [hal::can](classhal_1_1can.md)

| Type | Name |
| ---: | :--- |
|  status | [**bus\_on**](#function-bus_on) () <br>_Transition the CAN device from "bus-off" to "bus-on"._  |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1can_1_1settings.md) & p\_settings) <br>_Configure this can bus port to match the settings supplied._  |
|  void | [**on\_receive**](#function-on_receive) (hal::callback&lt; [**handler**](classhal_1_1can.md#typedef-handler) &gt; p\_handler) <br>_Set the message reception handler._  |
|  result&lt; [**send\_t**](structhal_1_1can_1_1send__t.md) &gt; | [**send**](#function-send) (const [**message\_t**](structhal_1_1can_1_1message__t.md) & p\_message) <br>_Send a can message._  |
| virtual  | [**~can**](#function-can) () = default<br> |






















































## Public Attributes Documentation




### variable spy\_bus\_on 

```C++
spy_handler<bool> hal::mock::can::spy_bus_on;
```






### variable spy\_configure 

```C++
spy_handler<settings> hal::mock::can::spy_configure;
```






### variable spy\_on\_receive 

```C++
spy_handler<hal::callback<handler> > hal::mock::can::spy_on_receive;
```






### variable spy\_send 

```C++
spy_handler<message_t> hal::mock::can::spy_send;
```



## Public Functions Documentation




### function reset 

```C++
inline void hal::mock::can::reset () 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-mock/can.hpp`

