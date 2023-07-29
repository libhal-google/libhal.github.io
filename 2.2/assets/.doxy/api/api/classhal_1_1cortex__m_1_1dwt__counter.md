

# Class hal::cortex\_m::dwt\_counter



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**cortex\_m**](namespacehal_1_1cortex__m.md) **>** [**dwt\_counter**](classhal_1_1cortex__m_1_1dwt__counter.md)



_A counter with a frequency fixed to the CPU clock rate._ [More...](#detailed-description)

* `#include <dwt_counter.hpp>`



Inherits the following classes: [hal::steady\_clock](classhal_1_1steady__clock.md)






















































## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**dwt\_counter**](#function-dwt_counter) (hertz p\_cpu\_frequency) <br>_Construct a new dwt counter object._  |
|  void | [**register\_cpu\_frequency**](#function-register_cpu_frequency) (hertz p\_cpu\_frequency) <br>_Inform the driver of the operating frequency of the CPU in order to generate the correct uptime._  |


## Public Functions inherited from hal::steady_clock

See [hal::steady\_clock](classhal_1_1steady__clock.md)

| Type | Name |
| ---: | :--- |
|  [**frequency\_t**](structhal_1_1steady__clock_1_1frequency__t.md) | [**frequency**](#function-frequency) () <br>_Get the operating frequency of the steady clock._  |
|  [**uptime\_t**](structhal_1_1steady__clock_1_1uptime__t.md) | [**uptime**](#function-uptime) () <br>_Get the current value of the steady clock._  |
| virtual  | [**~steady\_clock**](#function-steady_clock) () = default<br> |






















































# Detailed Description


This driver is supported for Cortex M3 devices and above. 


    
## Public Functions Documentation




### function dwt\_counter 

_Construct a new dwt counter object._ 
```C++
hal::cortex_m::dwt_counter::dwt_counter (
    hertz p_cpu_frequency
) 
```





**Parameters:**


* `p_cpu_frequency` - the operating frequency of the CPU 




        



### function register\_cpu\_frequency 

_Inform the driver of the operating frequency of the CPU in order to generate the correct uptime._ 
```C++
void hal::cortex_m::dwt_counter::register_cpu_frequency (
    hertz p_cpu_frequency
) 
```



Use this when the CPU's operating frequency has changed and no longer matches the frequency supplied to the constructor. Care should be taken when expecting this function when there is the potentially other parts of the system that depend on this counter's uptime to operate.




**Parameters:**


* `p_cpu_frequency` - the operating frequency of the CPU 




        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-armcortex/dwt_counter.hpp`

