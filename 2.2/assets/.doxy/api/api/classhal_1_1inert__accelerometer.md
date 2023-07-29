

# Class hal::inert\_accelerometer



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**inert\_accelerometer**](classhal_1_1inert__accelerometer.md)



_Inert implementation of acceleration sensing hardware._ 

* `#include <inert_accelerometer.hpp>`



Inherits the following classes: [hal::accelerometer](classhal_1_1accelerometer.md)
























































## Public Functions inherited from hal::accelerometer

See [hal::accelerometer](classhal_1_1accelerometer.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**read\_t**](structhal_1_1accelerometer_1_1read__t.md) &gt; | [**read**](#function-read) () <br>_Read the latest acceleration sensed by the device._  |
| virtual  | [**~accelerometer**](#function-accelerometer) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**inert\_accelerometer**](classhal_1_1inert__accelerometer.md) &gt; | [**create**](#function-create) ([**read\_t**](structhal_1_1accelerometer_1_1read__t.md) p\_values) <br>_Factory function to create_ [_**inert\_accelerometer**_](classhal_1_1inert__accelerometer.md) _object._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**inert\_accelerometer**_](classhal_1_1inert__accelerometer.md) _object._
```C++
static inline result< inert_accelerometer > hal::inert_accelerometer::create (
    read_t p_values
) 
```





**Parameters:**


* `p_values` - Read values to return when reading the [**inert\_accelerometer**](classhal_1_1inert__accelerometer.md). 



**Returns:**

result&lt;inert\_accelerometer&gt; - Constructed [**inert\_accelerometer**](classhal_1_1inert__accelerometer.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/inert_drivers/inert_accelerometer.hpp`

