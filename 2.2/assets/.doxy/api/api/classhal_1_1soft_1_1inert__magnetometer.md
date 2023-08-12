

# Class hal::soft::inert\_magnetometer



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**soft**](namespacehal_1_1soft.md) **>** [**inert\_magnetometer**](classhal_1_1soft_1_1inert__magnetometer.md)



_Inert implementation of magnetic field strength sensing hardware._ 

* `#include <inert_magnetometer.hpp>`



Inherits the following classes: [hal::magnetometer](classhal_1_1magnetometer.md)
























































## Public Functions inherited from hal::magnetometer

See [hal::magnetometer](classhal_1_1magnetometer.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**read\_t**](structhal_1_1magnetometer_1_1read__t.md) &gt; | [**read**](#function-read) () <br>_Read the latest magnetic field strength sensed by the device._  |
| virtual  | [**~magnetometer**](#function-magnetometer) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**inert\_magnetometer**](classhal_1_1soft_1_1inert__magnetometer.md) &gt; | [**create**](#function-create) ([**read\_t**](structhal_1_1magnetometer_1_1read__t.md) p\_result) <br>_Factory function to create an_ [_**inert\_magnetometer**_](classhal_1_1soft_1_1inert__magnetometer.md) _object._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create an_ [_**inert\_magnetometer**_](classhal_1_1soft_1_1inert__magnetometer.md) _object._
```C++
static inline result< inert_magnetometer > hal::soft::inert_magnetometer::create (
    read_t p_result
) 
```





**Parameters:**


* `p_result` - read\_t object to return when [**read()**](classhal_1_1magnetometer.md#function-read) is called 



**Returns:**

result&lt;inert\_magnetometer&gt; - Constructed [**inert\_magnetometer**](classhal_1_1soft_1_1inert__magnetometer.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/inert_drivers/inert_magnetometer.hpp`

