

# Struct hal::mock::timer



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**mock**](namespacehal_1_1mock.md) **>** [**timer**](structhal_1_1mock_1_1timer.md)



_Mock timer implementation for use in unit tests and simulations with spy functions for_ [_**schedule()**_](classhal_1_1timer.md#function-schedule) _, clear(), and_[_**is\_running()**_](classhal_1_1timer.md#function-is_running) __

* `#include <timer.hpp>`



Inherits the following classes: [hal::timer](classhal_1_1timer.md)






















## Public Attributes

| Type | Name |
| ---: | :--- |
|  [**spy\_handler**](classhal_1_1spy__handler.md)&lt; bool &gt; | [**spy\_cancel**](#variable-spy_cancel)  <br>_Spy handler for hal::timer::clear()_  |
|  [**spy\_handler**](classhal_1_1spy__handler.md)&lt; bool &gt; | [**spy\_is\_running**](#variable-spy_is_running)  <br>_Spy handler for_ [_**hal::timer::is\_running()**_](classhal_1_1timer.md#function-is_running) __ |
|  [**spy\_handler**](classhal_1_1spy__handler.md)&lt; std::function&lt; void(void)&gt;, std::chrono::nanoseconds &gt; | [**spy\_schedule**](#variable-spy_schedule)  <br>_Spy handler for_ [_**hal::timer::schedule()**_](classhal_1_1timer.md#function-schedule) __ |
































## Public Functions

| Type | Name |
| ---: | :--- |
|  void | [**reset**](#function-reset) () <br>_Reset spy information for_ [_**schedule()**_](classhal_1_1timer.md#function-schedule) _, clear(), and_[_**is\_running()**_](classhal_1_1timer.md#function-is_running) __ |


## Public Functions inherited from hal::timer

See [hal::timer](classhal_1_1timer.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**cancel\_t**](structhal_1_1timer_1_1cancel__t.md) &gt; | [**cancel**](#function-cancel) () <br>_Stops a scheduled event from happening._  |
|  result&lt; [**is\_running\_t**](structhal_1_1timer_1_1is__running__t.md) &gt; | [**is\_running**](#function-is_running) () <br>_Determine if the timer is currently running._  |
|  result&lt; [**schedule\_t**](structhal_1_1timer_1_1schedule__t.md) &gt; | [**schedule**](#function-schedule) (hal::callback&lt; void(void)&gt; p\_callback, hal::time\_duration p\_delay) <br>_Schedule an callback be be executed after the delay time._  |
| virtual  | [**~timer**](#function-timer) () = default<br> |






















































## Public Attributes Documentation




### variable spy\_cancel 

```C++
spy_handler<bool> hal::mock::timer::spy_cancel;
```






### variable spy\_is\_running 

```C++
spy_handler<bool> hal::mock::timer::spy_is_running;
```






### variable spy\_schedule 

```C++
spy_handler<std::function<void(void)>, std::chrono::nanoseconds> hal::mock::timer::spy_schedule;
```



## Public Functions Documentation




### function reset 

```C++
inline void hal::mock::timer::reset () 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-mock/timer.hpp`

