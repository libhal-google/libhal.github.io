

# Class hal::cortex\_m::systick\_timer



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**cortex\_m**](namespacehal_1_1cortex__m.md) **>** [**systick\_timer**](classhal_1_1cortex__m_1_1systick__timer.md)



_SysTick driver for the ARM Cortex Mx series chips._ [More...](#detailed-description)

* `#include <systick_timer.hpp>`



Inherits the following classes: [hal::timer](classhal_1_1timer.md)














## Public Types

| Type | Name |
| ---: | :--- |
| enum std::uint8\_t | [**clock\_source**](#enum-clock_source)  <br>_Defines the set of clock sources for the SysTick timer._  |








































## Public Functions

| Type | Name |
| ---: | :--- |
|  void | [**register\_cpu\_frequency**](#function-register_cpu_frequency) ([**hertz**](namespacehal.md#typedef-hertz) p\_frequency, [**clock\_source**](classhal_1_1cortex__m_1_1systick__timer.md#enum-clock_source) p\_source=clock\_source::processor) <br>_Inform the driver of the operating frequency of the CPU in order to generate the correct uptime._  |
|   | [**systick\_timer**](#function-systick_timer) ([**hertz**](namespacehal.md#typedef-hertz) p\_frequency, [**clock\_source**](classhal_1_1cortex__m_1_1systick__timer.md#enum-clock_source) p\_source=clock\_source::processor) <br>_Construct a new_ [_**systick\_timer**_](classhal_1_1cortex__m_1_1systick__timer.md) _timer object._ |
|   | [**~systick\_timer**](#function-systick_timer) () <br>_Destroy the system timer object._  |


## Public Functions inherited from hal::timer

See [hal::timer](classhal_1_1timer.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**cancel\_t**](structhal_1_1timer_1_1cancel__t.md) &gt; | [**cancel**](#function-cancel) () <br>_Stops a scheduled event from happening._  |
|  result&lt; [**is\_running\_t**](structhal_1_1timer_1_1is__running__t.md) &gt; | [**is\_running**](#function-is_running) () <br>_Determine if the timer is currently running._  |
|  result&lt; [**schedule\_t**](structhal_1_1timer_1_1schedule__t.md) &gt; | [**schedule**](#function-schedule) ([**hal::callback**](namespacehal.md#typedef-callback)&lt; void(void)&gt; p\_callback, [**hal::time\_duration**](namespacehal.md#typedef-time_duration) p\_delay) <br>_Schedule an callback be be executed after the delay time._  |
| virtual  | [**~timer**](#function-timer) () = default<br> |






















































# Detailed Description


Available in all ARM Cortex M series processors. Provides a generic and simple timer for every platform using these processor. 


    
## Public Types Documentation




### enum clock\_source 

```C++
enum hal::cortex_m::systick_timer::clock_source {
    external = 0,
    processor = 1
};
```



## Public Functions Documentation




### function register\_cpu\_frequency 

_Inform the driver of the operating frequency of the CPU in order to generate the correct uptime._ 
```C++
void hal::cortex_m::systick_timer::register_cpu_frequency (
    hertz p_frequency,
    clock_source p_source=clock_source::processor
) 
```



Use this when the CPU's operating frequency has changed and no longer matches the frequency supplied to the constructor. Care should be taken when expecting this function when there is the potentially other parts of the system that depend on this counter's uptime to operate.


This will clear any ongoing scheduled events as the timing will no longer be valid.




**Parameters:**


* `p_frequency` - the clock source's frequency 
* `p_source` - the source of the clock to the systick timer 




        



### function systick\_timer 

_Construct a new_ [_**systick\_timer**_](classhal_1_1cortex__m_1_1systick__timer.md) _timer object._
```C++
hal::cortex_m::systick_timer::systick_timer (
    hertz p_frequency,
    clock_source p_source=clock_source::processor
) 
```



PRECONDITION: Interrupt vector table must be initialized before creating an instance of this object.




**Parameters:**


* `p_frequency` - the clock source's frequency 
* `p_source` - the source of the clock to the systick timer 




        



### function ~systick\_timer 

_Destroy the system timer object._ 
```C++
hal::cortex_m::systick_timer::~systick_timer () 
```



Stop the timer and disable the interrupt service routine. 


        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-armcortex/systick_timer.hpp`

