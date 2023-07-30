

# Namespace hal::make



[**Namespace List**](namespaces.md) **>** [**hal**](namespacehal.md) **>** [**make**](namespacehal_1_1make.md)










































## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**hal::soft::adc\_mux\_pin**](classhal_1_1soft_1_1adc__mux__pin.md) &gt; | [**adc**](#function-adc) ([**hal::soft::adc\_multiplexer**](classhal_1_1soft_1_1adc__multiplexer.md) & p\_multiplexer, std::uint8\_t p\_channel) <br>_Returns an ADC pin from the multiplexer._  |




























## Public Functions Documentation




### function adc 

_Returns an ADC pin from the multiplexer._ 
```C++
result< hal::soft::adc_mux_pin > hal::make::adc (
    hal::soft::adc_multiplexer & p_multiplexer,
    std::uint8_t p_channel
) 
```





**Parameters:**


* `p_multiplexer` the adc multiplexer with the desire adc channel pin 
* `p_channel` The channel number of the pin 



**Returns:**

A newly constructed ADC multiplexer pin. 




**Exception:**


* `std::errc` 




        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/adc_mux.hpp`

