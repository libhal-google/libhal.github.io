

# Class hal::inert\_timer



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**inert\_timer**](classhal_1_1inert__timer.md)



_Inert implementation of timer hardware._ 

* `#include <inert_timer.hpp>`



Inherits the following classes: [hal::timer](classhal_1_1timer.md)
























































## Public Functions inherited from hal::timer

See [hal::timer](classhal_1_1timer.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**cancel\_t**](structhal_1_1timer_1_1cancel__t.md) &gt; | [**cancel**](#function-cancel) () <br>_Stops a scheduled event from happening._  |
|  result&lt; [**is\_running\_t**](structhal_1_1timer_1_1is__running__t.md) &gt; | [**is\_running**](#function-is_running) () <br>_Determine if the timer is currently running._  |
|  result&lt; [**schedule\_t**](structhal_1_1timer_1_1schedule__t.md) &gt; | [**schedule**](#function-schedule) ([**hal::callback**](namespacehal.md#typedef-callback)&lt; void(void)&gt; p\_callback, [**hal::time\_duration**](namespacehal.md#typedef-time_duration) p\_delay) <br>_Schedule an callback be be executed after the delay time._  |
| virtual  | [**~timer**](#function-timer) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**inert\_timer**](classhal_1_1inert__timer.md) &gt; | [**create**](#function-create) ([**is\_running\_t**](structhal_1_1timer_1_1is__running__t.md) p\_is\_running) <br>_Factory function to create_ [_**inert\_timer**_](classhal_1_1inert__timer.md) _object._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**inert\_timer**_](classhal_1_1inert__timer.md) _object._
```C++
static inline result< inert_timer > hal::inert_timer::create (
    is_running_t p_is_running
) 
```





**Parameters:**


* `p_is_running` - is\_running\_t object to return when [**is\_running()**](classhal_1_1timer.md#function-is_running) is called 



**Returns:**

result&lt;inert\_timer&gt; - Constructed [**inert\_timer**](classhal_1_1inert__timer.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/inert_drivers/inert_timer.hpp`

