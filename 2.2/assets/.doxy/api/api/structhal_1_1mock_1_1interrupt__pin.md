

# Struct hal::mock::interrupt\_pin



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**mock**](namespacehal_1_1mock.md) **>** [**interrupt\_pin**](structhal_1_1mock_1_1interrupt__pin.md)



_mock_ [_**interrupt\_pin**_](structhal_1_1mock_1_1interrupt__pin.md) _implementation for use in unit tests and simulations._

* `#include <interrupt_pin.hpp>`



Inherits the following classes: [hal::interrupt\_pin](classhal_1_1interrupt__pin.md)
















## Public Types inherited from hal::interrupt_pin

See [hal::interrupt\_pin](classhal_1_1interrupt__pin.md)

| Type | Name |
| ---: | :--- |
| typedef void(bool p\_state) | [**handler**](#typedef-handler)  <br>_Interrupt pin handler._  |
| enum  | [**trigger\_edge**](#enum-trigger_edge)  <br>_The condition in which an interrupt it's triggered._  |






## Public Attributes

| Type | Name |
| ---: | :--- |
|  [**spy\_handler**](classhal_1_1spy__handler.md)&lt; [**settings**](structhal_1_1interrupt__pin_1_1settings.md) &gt; | [**spy\_configure**](#variable-spy_configure)  <br>_Spy handler for_ [_**hal::interrupt\_pin::configure()**_](classhal_1_1interrupt__pin.md#function-configure) __ |
|  [**spy\_handler**](classhal_1_1spy__handler.md)&lt; std::function&lt; [**handler**](classhal_1_1interrupt__pin.md#typedef-handler) &gt; &gt; | [**spy\_on\_trigger**](#variable-spy_on_trigger)  <br>_Spy handler for_ [_**hal::interrupt\_pin::on\_trigger()**_](classhal_1_1interrupt__pin.md#function-on_trigger) __ |
































## Public Functions

| Type | Name |
| ---: | :--- |
|  void | [**reset**](#function-reset) () <br>_Reset spy information for_ [_**configure()**_](classhal_1_1interrupt__pin.md#function-configure) _,_[_**on\_trigger()**_](classhal_1_1interrupt__pin.md#function-on_trigger) _, and disable()_ |


## Public Functions inherited from hal::interrupt_pin

See [hal::interrupt\_pin](classhal_1_1interrupt__pin.md)

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1interrupt__pin_1_1settings.md) & p\_settings) <br>_Configure the interrupt pin to match the settings supplied._  |
|  void | [**on\_trigger**](#function-on_trigger) ([**hal::callback**](namespacehal.md#typedef-callback)&lt; [**handler**](classhal_1_1interrupt__pin.md#typedef-handler) &gt; p\_callback) <br>_Set the callback for when the interrupt occurs._  |
| virtual  | [**~interrupt\_pin**](#function-interrupt_pin) () = default<br> |






















































## Public Attributes Documentation




### variable spy\_configure 

```C++
spy_handler<settings> hal::mock::interrupt_pin::spy_configure;
```






### variable spy\_on\_trigger 

```C++
spy_handler<std::function<handler> > hal::mock::interrupt_pin::spy_on_trigger;
```



## Public Functions Documentation




### function reset 

```C++
inline void hal::mock::interrupt_pin::reset () 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-mock/interrupt_pin.hpp`

