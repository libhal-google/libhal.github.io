

# Class hal::lpc40::interrupt\_pin



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**lpc40**](namespacehal_1_1lpc40.md) **>** [**interrupt\_pin**](classhal_1_1lpc40_1_1interrupt__pin.md)



_Interrupt pin implementation for the lpc40xx._ 

* `#include <interrupt_pin.hpp>`



Inherits the following classes: [hal::interrupt\_pin](classhal_1_1interrupt__pin.md)
















## Public Types inherited from hal::interrupt_pin

See [hal::interrupt\_pin](classhal_1_1interrupt__pin.md)

| Type | Name |
| ---: | :--- |
| typedef void(bool p\_state) | [**handler**](#typedef-handler)  <br>_Interrupt pin handler._  |
| enum  | [**trigger\_edge**](#enum-trigger_edge)  <br>_The condition in which an interrupt it's triggered._  |






































## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**interrupt\_pin**](#function-interrupt_pin-13) ([**interrupt\_pin**](classhal_1_1lpc40_1_1interrupt__pin.md) & p\_other) = delete<br> |
|   | [**interrupt\_pin**](#function-interrupt_pin-23) ([**interrupt\_pin**](classhal_1_1lpc40_1_1interrupt__pin.md) && p\_other) <br> |
|  [**interrupt\_pin**](classhal_1_1lpc40_1_1interrupt__pin.md) & | [**operator=**](#function-operator) ([**interrupt\_pin**](classhal_1_1lpc40_1_1interrupt__pin.md) & p\_other) = delete<br> |
|  [**interrupt\_pin**](classhal_1_1lpc40_1_1interrupt__pin.md) & | [**operator=**](#function-operator_1) ([**interrupt\_pin**](classhal_1_1lpc40_1_1interrupt__pin.md) && p\_other) <br> |
| virtual  | [**~interrupt\_pin**](#function-interrupt_pin) () <br> |


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
|  result&lt; [**interrupt\_pin**](classhal_1_1lpc40_1_1interrupt__pin.md) &gt; | [**get**](#function-get) (std::uint8\_t port, std::uint8\_t pin, [**settings**](structhal_1_1interrupt__pin_1_1settings.md) p\_settings={}) <br>_Get the interrupt pin object._  |




















































## Public Functions Documentation




### function interrupt\_pin [1/3]

```C++
hal::lpc40::interrupt_pin::interrupt_pin (
    interrupt_pin & p_other
) = delete
```






### function interrupt\_pin [2/3]

```C++
hal::lpc40::interrupt_pin::interrupt_pin (
    interrupt_pin && p_other
) 
```






### function operator= 

```C++
interrupt_pin & hal::lpc40::interrupt_pin::operator= (
    interrupt_pin & p_other
) = delete
```






### function operator= 

```C++
interrupt_pin & hal::lpc40::interrupt_pin::operator= (
    interrupt_pin && p_other
) 
```






### function ~interrupt\_pin 

```C++
virtual hal::lpc40::interrupt_pin::~interrupt_pin () 
```



Implements [*hal::interrupt\_pin::~interrupt\_pin*](classhal_1_1interrupt__pin.md#function-interrupt_pin)

## Public Static Functions Documentation




### function get 

_Get the interrupt pin object._ 
```C++
static result< interrupt_pin > hal::lpc40::interrupt_pin::get (
    std::uint8_t port,
    std::uint8_t pin,
    settings p_settings={}
) 
```





**Parameters:**


* `port` - selects pin port to use 
* `pin` - selects pin within the port to use 
* `p_settings` - initial pin settings 



**Returns:**

result&lt;interrupt\_pin&gt; - interrupt pin driver object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-lpc40/interrupt_pin.hpp`

