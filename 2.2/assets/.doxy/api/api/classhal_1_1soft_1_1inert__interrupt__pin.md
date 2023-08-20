

# Class hal::soft::inert\_interrupt\_pin



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**soft**](namespacehal_1_1soft.md) **>** [**inert\_interrupt\_pin**](classhal_1_1soft_1_1inert__interrupt__pin.md)



_Inert implementation of digital interrupt pin hardware._ 

* `#include <inert_interrupt_pin.hpp>`



Inherits the following classes: [hal::interrupt\_pin](classhal_1_1interrupt__pin.md)
















## Public Types inherited from hal::interrupt_pin

See [hal::interrupt\_pin](classhal_1_1interrupt__pin.md)

| Type | Name |
| ---: | :--- |
| typedef void(bool p\_state) | [**handler**](#typedef-handler)  <br>_Interrupt pin handler._  |
| enum  | [**trigger\_edge**](#enum-trigger_edge)  <br>_The condition in which an interrupt it's triggered._  |








































## Public Functions inherited from hal::interrupt_pin

See [hal::interrupt\_pin](classhal_1_1interrupt__pin.md)

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1interrupt__pin_1_1settings.md) & p\_settings) <br>_Configure the interrupt pin to match the settings supplied._  |
|  void | [**on\_trigger**](#function-on_trigger) ([**hal::callback**](namespacehal.md#typedef-callback)&lt; [**handler**](classhal_1_1interrupt__pin.md#typedef-handler) &gt; p\_callback) <br>_Set the callback for when the interrupt occurs._  |
| virtual  | [**~interrupt\_pin**](#function-interrupt_pin) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**inert\_interrupt\_pin**](classhal_1_1soft_1_1inert__interrupt__pin.md) &gt; | [**create**](#function-create) () <br>_Factory function to create_ [_**inert\_interrupt\_pin**_](classhal_1_1soft_1_1inert__interrupt__pin.md) _object._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**inert\_interrupt\_pin**_](classhal_1_1soft_1_1inert__interrupt__pin.md) _object._
```C++
static inline result< inert_interrupt_pin > hal::soft::inert_interrupt_pin::create () 
```





**Returns:**

result&lt;inert\_interrupt\_pin&gt; - Constructed [**inert\_interrupt\_pin**](classhal_1_1soft_1_1inert__interrupt__pin.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/inert_drivers/inert_interrupt_pin.hpp`

