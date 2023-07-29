

# Class hal::inert\_gyroscope



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**inert\_gyroscope**](classhal_1_1inert__gyroscope.md)



_Inert implementation of angular velocity sensing hardware._ 

* `#include <inert_gyroscope.hpp>`



Inherits the following classes: [hal::gyroscope](classhal_1_1gyroscope.md)
























































## Public Functions inherited from hal::gyroscope

See [hal::gyroscope](classhal_1_1gyroscope.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**read\_t**](structhal_1_1gyroscope_1_1read__t.md) &gt; | [**read**](#function-read) () <br>_Read the latest angular velocity sensed by the device._  |
| virtual  | [**~gyroscope**](#function-gyroscope) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**inert\_gyroscope**](classhal_1_1inert__gyroscope.md) &gt; | [**create**](#function-create) ([**read\_t**](structhal_1_1gyroscope_1_1read__t.md) p\_result) <br>_Factory function to create_ [_**inert\_gyroscope**_](classhal_1_1inert__gyroscope.md) _object._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**inert\_gyroscope**_](classhal_1_1inert__gyroscope.md) _object._
```C++
static inline result< inert_gyroscope > hal::inert_gyroscope::create (
    read_t p_result
) 
```





**Parameters:**


* `p_result` - Values to return when calling [**read()**](classhal_1_1gyroscope.md#function-read) 



**Returns:**

result&lt;inert\_gyroscope&gt; - Constructed [**inert\_gyroscope**](classhal_1_1inert__gyroscope.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/inert_drivers/inert_gyroscope.hpp`

