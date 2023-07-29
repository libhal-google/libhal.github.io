

# Class hal::inert\_steady\_clock



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**inert\_steady\_clock**](classhal_1_1inert__steady__clock.md)



_Inert implementation of steady clock mechanism._ 

* `#include <inert_steady_clock.hpp>`



Inherits the following classes: [hal::steady\_clock](classhal_1_1steady__clock.md)
























































## Public Functions inherited from hal::steady_clock

See [hal::steady\_clock](classhal_1_1steady__clock.md)

| Type | Name |
| ---: | :--- |
|  [**frequency\_t**](structhal_1_1steady__clock_1_1frequency__t.md) | [**frequency**](#function-frequency) () <br>_Get the operating frequency of the steady clock._  |
|  [**uptime\_t**](structhal_1_1steady__clock_1_1uptime__t.md) | [**uptime**](#function-uptime) () <br>_Get the current value of the steady clock._  |
| virtual  | [**~steady\_clock**](#function-steady_clock) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**inert\_steady\_clock**](classhal_1_1inert__steady__clock.md) &gt; | [**create**](#function-create) ([**frequency\_t**](structhal_1_1steady__clock_1_1frequency__t.md) p\_frequency, [**uptime\_t**](structhal_1_1steady__clock_1_1uptime__t.md) p\_uptime) <br>_Factory function to create_ [_**inert\_steady\_clock**_](classhal_1_1inert__steady__clock.md) _object._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**inert\_steady\_clock**_](classhal_1_1inert__steady__clock.md) _object._
```C++
static inline result< inert_steady_clock > hal::inert_steady_clock::create (
    frequency_t p_frequency,
    uptime_t p_uptime
) 
```





**Parameters:**


* `p_frequency` - frequency\_t object to return when [**frequency()**](classhal_1_1steady__clock.md#function-frequency) is called 
* `p_uptime` - uptime\_t object with the starting value that will be returned when [**uptime()**](classhal_1_1steady__clock.md#function-uptime) is called. The uptime will increment by 1 each time [**uptime()**](classhal_1_1steady__clock.md#function-uptime) is called. 



**Returns:**

result&lt;inert\_steady\_clock&gt; - Constructed [**inert\_steady\_clock**](classhal_1_1inert__steady__clock.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/inert_drivers/inert_steady_clock.hpp`

