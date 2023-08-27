

# Struct hal::timer::out\_of\_bounds\_error



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**timer**](classhal_1_1timer.md) **>** [**out\_of\_bounds\_error**](structhal_1_1timer_1_1out__of__bounds__error.md)



_Error type indicating that the desired time delay is not achievable with this timer._ [More...](#detailed-description)

* `#include <timer.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  std::chrono::nanoseconds | [**maximum**](#variable-maximum)  <br>_The maximum possible delay allowed._  |
|  std::chrono::nanoseconds | [**tick\_period**](#variable-tick_period)  <br>_The tick period._  |












































# Detailed Description


This occurs if the time delay is too large based on the tick period of the timer. 


    
## Public Attributes Documentation




### variable maximum 

```C++
std::chrono::nanoseconds hal::timer::out_of_bounds_error::maximum;
```






### variable tick\_period 

```C++
std::chrono::nanoseconds hal::timer::out_of_bounds_error::tick_period;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/timer.hpp`

