

# Class hal::timer



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**timer**](classhal_1_1timer.md)



_Timer hardware abstraction interface._ [More...](#detailed-description)

* `#include <timer.hpp>`





Inherited by the following classes: [hal::cortex\_m::systick\_timer](classhal_1_1cortex__m_1_1systick__timer.md),  [hal::inert\_timer](classhal_1_1inert__timer.md),  [hal::mock::timer](structhal_1_1mock_1_1timer.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**cancel\_t**](structhal_1_1timer_1_1cancel__t.md) <br>_Feedback from cancelling a timer._  |
| struct | [**is\_running\_t**](structhal_1_1timer_1_1is__running__t.md) <br>_Feedback after checking if the timer is running._  |
| struct | [**out\_of\_bounds\_error**](structhal_1_1timer_1_1out__of__bounds__error.md) <br>_Error type indicating that the desired time delay is not achievable with this timer._  |
| struct | [**schedule\_t**](structhal_1_1timer_1_1schedule__t.md) <br>_Feedback from scheduling a timer._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**cancel\_t**](structhal_1_1timer_1_1cancel__t.md) &gt; | [**cancel**](#function-cancel) () <br>_Stops a scheduled event from happening._  |
|  result&lt; [**is\_running\_t**](structhal_1_1timer_1_1is__running__t.md) &gt; | [**is\_running**](#function-is_running) () <br>_Determine if the timer is currently running._  |
|  result&lt; [**schedule\_t**](structhal_1_1timer_1_1schedule__t.md) &gt; | [**schedule**](#function-schedule) ([**hal::callback**](namespacehal.md#typedef-callback)&lt; void(void)&gt; p\_callback, [**hal::time\_duration**](namespacehal.md#typedef-time_duration) p\_delay) <br>_Schedule an callback be be executed after the delay time._  |
| virtual  | [**~timer**](#function-timer) () = default<br> |




























# Detailed Description


Use this interface for devices and peripherals that have timer like capabilities, such that, when a timer's time has expired, an event, interrupt, or signal is generated.


Timer drivers tick period must be an integer multiple of 1 nanosecond, meaning that the only tick period allowed are 1ns, 2ns, up to the maximum holdable in a std::chrono::nanosecond type. sub-nanosecond tick periods are not allowed. 


    
## Public Functions Documentation




### function cancel 

_Stops a scheduled event from happening._ 
```C++
inline result< cancel_t > hal::timer::cancel () 
```



Does nothing if the timer is not currently running.


Note that there must be sufficient time between the this call finishing and the scheduled event's termination. If this call is too close to when the schedule event expires, this function may not complete before the hardware calls the callback.




**Returns:**

result&lt;cancel\_t&gt; - success or failure 





        



### function is\_running 

_Determine if the timer is currently running._ 
```C++
inline result< is_running_t > hal::timer::is_running () 
```





**Returns:**

result&lt;is\_running\_t&gt; - information about the timer 





        



### function schedule 

_Schedule an callback be be executed after the delay time._ 
```C++
inline result< schedule_t > hal::timer::schedule (
    hal::callback < void(void)> p_callback,
    hal::time_duration p_delay
) 
```



If this is called and the timer has already scheduled an event (in other words, `is_running()` returns true), then the previous scheduled event will be canceled and the new scheduled event will be started.


If the delay time result in a tick period of 0, then the timer will execute after 1 tick period. For example, if the tick period is 1ms and the requested time delay is 500us, then the event will be scheduled for 1ms.


If the tick period is 1ms and the requested time is 2.5ms then the event will be scheduled after 2 tick periods or in 2ms.




**Parameters:**


* `p_callback` - callback function to be called when the timer expires 
* `p_delay` - the amount of time until the timer expires 



**Returns:**

result&lt;schedule\_t&gt; - success or failure 




**Exception:**


* [**out\_of\_bounds\_error**](structhal_1_1timer_1_1out__of__bounds__error.md) - if p\_interval is greater than what can be cannot be achieved 




        



### function ~timer 

```C++
virtual hal::timer::~timer () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/timer.hpp`

