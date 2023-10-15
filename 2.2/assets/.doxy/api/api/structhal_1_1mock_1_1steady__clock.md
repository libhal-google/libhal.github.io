

# Struct hal::mock::steady\_clock



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**mock**](namespacehal_1_1mock.md) **>** [**steady\_clock**](structhal_1_1mock_1_1steady__clock.md)



_mock_ [_**steady\_clock**_](structhal_1_1mock_1_1steady__clock.md) _implementation for use in unit tests and simulations._

* `#include <steady_clock.hpp>`



Inherits the following classes: [hal::steady\_clock](classhal_1_1steady__clock.md)






















































## Public Functions

| Type | Name |
| ---: | :--- |
|  void | [**set\_frequency**](#function-set_frequency) ([**frequency\_t**](structhal_1_1steady__clock_1_1frequency__t.md) p\_frequency) <br>_Set the frequency to be returned from_ [_**frequency()**_](classhal_1_1steady__clock.md#function-frequency) __ |
|  void | [**set\_uptimes**](#function-set_uptimes) (std::queue&lt; [**uptime\_t**](structhal_1_1steady__clock_1_1uptime__t.md) &gt; & p\_uptime\_values) <br>_Queues the uptimes to be returned from uptimes()_  |


## Public Functions inherited from hal::steady_clock

See [hal::steady\_clock](classhal_1_1steady__clock.md)

| Type | Name |
| ---: | :--- |
|  [**frequency\_t**](structhal_1_1steady__clock_1_1frequency__t.md) | [**frequency**](#function-frequency) () <br>_Get the operating frequency of the steady clock._  |
|  [**uptime\_t**](structhal_1_1steady__clock_1_1uptime__t.md) | [**uptime**](#function-uptime) () <br>_Get the current value of the steady clock._  |
| virtual  | [**~steady\_clock**](#function-steady_clock) () = default<br> |






















































## Public Functions Documentation




### function set\_frequency 

_Set the frequency to be returned from_ [_**frequency()**_](classhal_1_1steady__clock.md#function-frequency) __
```C++
inline void hal::mock::steady_clock::set_frequency (
    frequency_t p_frequency
) 
```





**Parameters:**


* `p_frequency` - Frequency to return 




        



### function set\_uptimes 

_Queues the uptimes to be returned from uptimes()_ 
```C++
inline void hal::mock::steady_clock::set_uptimes (
    std::queue< uptime_t > & p_uptime_values
) 
```





**Parameters:**


* `p_uptime_values` - Queue of uptimes 




        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-mock/steady_clock.hpp`

