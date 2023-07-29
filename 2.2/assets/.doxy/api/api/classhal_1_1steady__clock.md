

# Class hal::steady\_clock



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**steady\_clock**](classhal_1_1steady__clock.md)



_Hardware abstraction interface for a steady clock mechanism._ [More...](#detailed-description)

* `#include <steady_clock.hpp>`





Inherited by the following classes: [hal::cortex\_m::dwt\_counter](classhal_1_1cortex__m_1_1dwt__counter.md),  [hal::inert\_steady\_clock](classhal_1_1inert__steady__clock.md),  [hal::mock::steady\_clock](structhal_1_1mock_1_1steady__clock.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**frequency\_t**](structhal_1_1steady__clock_1_1frequency__t.md) <br>_Result from requesting the operating frequency of the steady clock._  |
| struct | [**uptime\_t**](structhal_1_1steady__clock_1_1uptime__t.md) <br>_Result from calling uptime._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  [**frequency\_t**](structhal_1_1steady__clock_1_1frequency__t.md) | [**frequency**](#function-frequency) () <br>_Get the operating frequency of the steady clock._  |
|  [**uptime\_t**](structhal_1_1steady__clock_1_1uptime__t.md) | [**uptime**](#function-uptime) () <br>_Get the current value of the steady clock._  |
| virtual  | [**~steady\_clock**](#function-steady_clock) () = default<br> |




























# Detailed Description


Implementations of this interface must follow the same requirements as a std::chrono::steady\_clock, in that the clock is monotonic & steady. An additional requirement is added to ensure that the clock is reliable. Meaning calls to the interface functions do not return errors because this clock should be infallible. To ensure this, this clock should be driven by the platform's peripheral drivers or some other mechanism that is unlikely to go offline while the platform is in a normal operating state.


This clock is steady meaning that subsequent calls to get the uptime of this clock cannot decrease as physical time moves forward and the time between ticks of this clock are constant and defined by the clock's frequency.


This can be used to get the time since the boot up, or to be more accurate, the time when the steady clock object is created. This clock is most suitable for measuring time intervals.


After creation of this clock, the operating frequency shall not change. 


    
## Public Functions Documentation




### function frequency 

_Get the operating frequency of the steady clock._ 
```C++
inline frequency_t hal::steady_clock::frequency () 
```





**Returns:**

result&lt;frequency\_t&gt; - operating frequency of the steady clock. Guaranteed to be a positive value by the implementing driver. 





        



### function uptime 

_Get the current value of the steady clock._ 
```C++
inline uptime_t hal::steady_clock::uptime () 
```





**Returns:**

[**uptime\_t**](structhal_1_1steady__clock_1_1uptime__t.md) - uptime information 





        



### function ~steady\_clock 

```C++
virtual hal::steady_clock::~steady_clock () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/steady_clock.hpp`

