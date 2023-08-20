

# Struct hal::adc::read\_t



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**adc**](classhal_1_1adc.md) **>** [**read\_t**](structhal_1_1adc_1_1read__t.md)



_Result from reading the adc._ 

* `#include <adc.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  float | [**sample**](#variable-sample)  <br>_Sample value of the adc._  |












































## Public Attributes Documentation




### variable sample 

_Sample value of the adc._ 
```C++
float hal::adc::read_t::sample;
```



Is guaranteed by the implementing driver to be between 0.0f and +1.0f. The value representing the voltage measured by the ADC from Vss (negative reference) to Vcc (positive reference). For example, if Vss is 0V (gnd) and Vcc is 5V and this value is 0.5f, then the voltage measured is 2.5V. 


        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/adc.hpp`

