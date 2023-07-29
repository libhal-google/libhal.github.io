

# Struct hal::lpc40::adc::channel



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**lpc40**](namespacehal_1_1lpc40.md) **>** [**adc**](classhal_1_1lpc40_1_1adc.md) **>** [**channel**](structhal_1_1lpc40_1_1adc_1_1channel.md)



_Channel specific information._ 

* `#include <adc.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  [**pin**](classhal_1_1lpc40_1_1pin.md) | [**adc\_pin**](#variable-adc_pin)  <br>_ADC pin._  |
|  hertz | [**clock\_rate**](#variable-clock_rate)   = = 1'000'000.0f<br> |
|  uint8\_t | [**index**](#variable-index)  <br>_Channel data index._  |
|  uint8\_t | [**pin\_function**](#variable-pin_function)  <br>_Pin mux function code._  |












































## Public Attributes Documentation




### variable adc\_pin 

```C++
pin hal::lpc40::adc::channel::adc_pin;
```






### variable clock\_rate 


```C++
hertz hal::lpc40::adc::channel::clock_rate;
```



Default and highest sampling rate is 1 MHz. Careful as changing this for one channel changes this for all channels on the lpc40xx mcu. 


        



### variable index 

```C++
uint8_t hal::lpc40::adc::channel::index;
```






### variable pin\_function 

```C++
uint8_t hal::lpc40::adc::channel::pin_function;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-lpc40/adc.hpp`

