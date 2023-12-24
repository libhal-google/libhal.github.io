

# Class hal::interrupt\_pin



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**interrupt\_pin**](classhal_1_1interrupt__pin.md)



_Digital interrupt pin hardware abstraction._ [More...](#detailed-description)

* `#include <interrupt_pin.hpp>`





Inherited by the following classes: [hal::lpc40::interrupt\_pin](classhal_1_1lpc40_1_1interrupt__pin.md),  [hal::mock::interrupt\_pin](structhal_1_1mock_1_1interrupt__pin.md),  [hal::soft::inert\_interrupt\_pin](classhal_1_1soft_1_1inert__interrupt__pin.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**settings**](structhal_1_1interrupt__pin_1_1settings.md) <br>_Generic settings for interrupt pins._  |


## Public Types

| Type | Name |
| ---: | :--- |
| typedef void(bool p\_state) | [**handler**](#typedef-handler)  <br>_Interrupt pin handler._  |
| enum  | [**trigger\_edge**](#enum-trigger_edge)  <br>_The condition in which an interrupt it's triggered._  |




















## Public Functions

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1interrupt__pin_1_1settings.md) & p\_settings) <br>_Configure the interrupt pin to match the settings supplied._  |
|  void | [**on\_trigger**](#function-on_trigger) ([**hal::callback**](namespacehal.md#typedef-callback)&lt; [**handler**](classhal_1_1interrupt__pin.md#typedef-handler) &gt; p\_callback) <br>_Set the callback for when the interrupt occurs._  |
| virtual  | [**~interrupt\_pin**](#function-interrupt_pin) () = default<br> |




























# Detailed Description


Use this to automatically call a function when a pin's state has transitioned.


The transition states are:



* falling edge: the pin reads a transitions from HIGH to LOW
* rising edge: the pin reads a transitions from LOW to HIGH
* both: the pin reads any state change 




    
## Public Types Documentation




### typedef handler 

_Interrupt pin handler._ 
```C++
using hal::interrupt_pin::handler =  void(bool p_state);
```



param p\_state - if true state of the pin when the interrupt was triggered was HIGH, otherwise LOW 


        



### enum trigger\_edge 

```C++
enum hal::interrupt_pin::trigger_edge {
    falling = 0,
    rising = 1,
    both = 2
};
```



## Public Functions Documentation




### function configure 

_Configure the interrupt pin to match the settings supplied._ 
```C++
inline status hal::interrupt_pin::configure (
    const settings & p_settings
) 
```





**Parameters:**


* `p_settings` - settings to apply to interrupt pin 



**Returns:**

status - success or failure 




**Exception:**


* `std::errc::invalid_argument` if the settings could not be achieved. 




        



### function on\_trigger 

_Set the callback for when the interrupt occurs._ 
```C++
inline void hal::interrupt_pin::on_trigger (
    hal::callback < handler > p_callback
) 
```



Any state transitions before this function is called are lost.




**Parameters:**


* `p_callback` - function to execute when the trigger condition occurs. 




        



### function ~interrupt\_pin 

```C++
virtual hal::interrupt_pin::~interrupt_pin () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/interrupt_pin.hpp`

