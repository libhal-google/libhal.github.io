

# Class hal::steady\_clock\_timeout



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md)



_Timeout object based on_ [_**hal::steady\_clock**_](classhal_1_1steady__clock.md) _._[More...](#detailed-description)

* `#include <steady_clock.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|  status | [**operator()**](#function-operator()) () <br>_Call this object to check if it has timed out._  |
|  [**steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md) & | [**operator=**](#function-operator) (const [**steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md) & p\_timeout) = default<br>_Assign construct a new counter timeout object._  |
|  [**steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md) & | [**operator=**](#function-operator_1) ([**steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md) && p\_timeout) = default<br>_Move assign construct a new counter timeout object._  |
|   | [**steady\_clock\_timeout**](#function-steady_clock_timeout-13) (const [**steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md) & p\_timeout) = default<br>_Construct a new counter timeout object._  |
|   | [**steady\_clock\_timeout**](#function-steady_clock_timeout-23) ([**steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md) && p\_timeout) = default<br>_Construct a new counter timeout object._  |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  [**steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md) | [**create**](#function-create) ([**hal::steady\_clock**](classhal_1_1steady__clock.md) & p\_steady\_clock, [**hal::time\_duration**](namespacehal.md#typedef-time_duration) p\_duration) <br>_Create a_ [_**steady\_clock\_timeout**_](classhal_1_1steady__clock__timeout.md) _._ |


























# Detailed Description


Do not use this class directly. Use `hal::create_timeout(hal::steady_clock&)` instead of instantiating this class directly. 


    
## Public Functions Documentation




### function operator() 

_Call this object to check if it has timed out._ 
```C++
status hal::steady_clock_timeout::operator() () 
```





**Returns:**

status - success or failure 




**Exception:**


* `std::errc::timed_out` - if the timeout time has been exceeded. 




        



### function operator= 

_Assign construct a new counter timeout object._ 
```C++
steady_clock_timeout & hal::steady_clock_timeout::operator= (
    const steady_clock_timeout & p_timeout
) = default
```





**Parameters:**


* `p_timeout` - other [**steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md) 



**Returns:**

[**steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md)& 





        



### function operator= 

_Move assign construct a new counter timeout object._ 
```C++
steady_clock_timeout & hal::steady_clock_timeout::operator= (
    steady_clock_timeout && p_timeout
) = default
```





**Parameters:**


* `p_timeout` - other [**steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md) 



**Returns:**

[**steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md)& 





        



### function steady\_clock\_timeout [1/3]

_Construct a new counter timeout object._ 
```C++
hal::steady_clock_timeout::steady_clock_timeout (
    const steady_clock_timeout & p_timeout
) = default
```





**Parameters:**


* `p_timeout` - other [**steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md) 




        



### function steady\_clock\_timeout [2/3]

_Construct a new counter timeout object._ 
```C++
hal::steady_clock_timeout::steady_clock_timeout (
    steady_clock_timeout && p_timeout
) = default
```





**Parameters:**


* `p_timeout` - other [**steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md) 




        
## Public Static Functions Documentation




### function create 

_Create a_ [_**steady\_clock\_timeout**_](classhal_1_1steady__clock__timeout.md) _._
```C++
static steady_clock_timeout hal::steady_clock_timeout::create (
    hal::steady_clock & p_steady_clock,
    hal::time_duration p_duration
) 
```





**Returns:**

[**steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md) - [**steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/steady_clock.hpp`

