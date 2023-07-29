

# Class hal::adc



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**adc**](classhal_1_1adc.md)



_Analog to Digital Converter (ADC) hardware abstraction interface._ [More...](#detailed-description)

* `#include <adc.hpp>`





Inherited by the following classes: [hal::adc\_mux\_pin](classhal_1_1adc__mux__pin.md),  [hal::inert\_adc](classhal_1_1inert__adc.md),  [hal::lpc40::adc](classhal_1_1lpc40_1_1adc.md),  [hal::mock::adc](structhal_1_1mock_1_1adc.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**read\_t**](structhal_1_1adc_1_1read__t.md) <br>_Result from reading the adc._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**read\_t**](structhal_1_1adc_1_1read__t.md) &gt; | [**read**](#function-read) () <br>_Sample the analog to digital converter and return the result._  |
| virtual  | [**~adc**](#function-adc) () = default<br> |




























# Detailed Description


Use this interface for devices and peripherals that can convert analog voltage signals into a digital number.


ADC peripheral only know the proportion of a voltage signal relative to a Vss (negative reference) and a Vcc (positive reference) and thus cannot describe the voltage directly. 


    
## Public Functions Documentation




### function read 

_Sample the analog to digital converter and return the result._ 
```C++
inline result< read_t > hal::adc::read () 
```





**Returns:**

result&lt;read\_t&gt; - the sampled adc value 





        



### function ~adc 

```C++
virtual hal::adc::~adc () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/adc.hpp`

