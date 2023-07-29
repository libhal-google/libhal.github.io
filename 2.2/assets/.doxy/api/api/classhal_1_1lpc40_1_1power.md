

# Class hal::lpc40::power



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**lpc40**](namespacehal_1_1lpc40.md) **>** [**power**](classhal_1_1lpc40_1_1power.md)



_Power control for lpc40xx peripherals._ 

* `#include <power.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|  bool | [**is\_on**](#function-is_on) () <br>_Check if the peripheral is powered on._  |
|  void | [**off**](#function-off) () <br>_Power off peripheral._  |
|  void | [**on**](#function-on) () <br>_Power on the peripheral._  |
|   | [**power**](#function-power) (peripheral p\_peripheral) <br>_Construct a new power control object._  |




























## Public Functions Documentation




### function is\_on 

_Check if the peripheral is powered on._ 
```C++
bool hal::lpc40::power::is_on () 
```





**Returns:**

true - peripheral is on 




**Returns:**

false - peripheral is off 





        



### function off 

```C++
void hal::lpc40::power::off () 
```






### function on 

```C++
void hal::lpc40::power::on () 
```






### function power 

_Construct a new power control object._ 
```C++
hal::lpc40::power::power (
    peripheral p_peripheral
) 
```





**Parameters:**


* `p_peripheral` - id of the peripheral to configure 




        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-lpc40/power.hpp`

