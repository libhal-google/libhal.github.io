

# Struct hal::timer::is\_running\_t



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**timer**](classhal_1_1timer.md) **>** [**is\_running\_t**](structhal_1_1timer_1_1is__running__t.md)



_Feedback after checking if the timer is running._ 

* `#include <timer.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  bool | [**is\_running**](#variable-is_running)  <br>_Determines if the timer is currently running._  |












































## Public Attributes Documentation




### variable is\_running 

_Determines if the timer is currently running._ 
```C++
bool hal::timer::is_running_t::is_running;
```



If this value is false, then the timer is not running. If this value is true, then the timer is currently running and a callback is scheduled to be executed at some point in the future. 


        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/timer.hpp`

