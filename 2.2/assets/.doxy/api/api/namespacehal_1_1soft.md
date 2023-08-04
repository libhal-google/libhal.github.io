

# Namespace hal::soft



[**Namespace List**](namespaces.md) **>** [**hal**](namespacehal.md) **>** [**soft**](namespacehal_1_1soft.md)




















## Classes

| Type | Name |
| ---: | :--- |
| class | [**adc\_multiplexer**](classhal_1_1soft_1_1adc__multiplexer.md) <br>_A driver for an ADC multiplexer that manages and reads ADC mux pins. This driver is intended to be used with multiplexers that use digital signals. An ADC multiplexer can be used to expand the number of input channels of an ADC._  |
| class | [**adc\_mux\_pin**](classhal_1_1soft_1_1adc__mux__pin.md) <br>_A class that represents a multiplexer pin for ADC._  |
| class | [**inert\_accelerometer**](classhal_1_1soft_1_1inert__accelerometer.md) <br>_Inert implementation of acceleration sensing hardware._  |
| class | [**inert\_adc**](classhal_1_1soft_1_1inert__adc.md) <br>_Inert implementation of Analog to Digital Converter (ADC) hardware._  |
| class | [**inert\_dac**](classhal_1_1soft_1_1inert__dac.md) <br>_Inert implementation of Digital to Analog Converter (DAC) hardware._  |
| class | [**inert\_distance\_sensor**](classhal_1_1soft_1_1inert__distance__sensor.md) <br>_Inert implementation of linear distance hardware._  |
| class | [**inert\_gyroscope**](classhal_1_1soft_1_1inert__gyroscope.md) <br>_Inert implementation of angular velocity sensing hardware._  |
| class | [**inert\_input\_pin**](classhal_1_1soft_1_1inert__input__pin.md) <br>_Inert implementation of digital input pin hardware._  |
| class | [**inert\_interrupt\_pin**](classhal_1_1soft_1_1inert__interrupt__pin.md) <br>_Inert implementation of digital interrupt pin hardware._  |
| class | [**inert\_magnetometer**](classhal_1_1soft_1_1inert__magnetometer.md) <br>_Inert implementation of magnetic field strength sensing hardware._  |
| class | [**inert\_motor**](classhal_1_1soft_1_1inert__motor.md) <br>_Inert implementation of open loop motorized actuator hardware._  |
| class | [**inert\_output\_pin**](classhal_1_1soft_1_1inert__output__pin.md) <br>_Inert implementation of digital output pin hardware._  |
| class | [**inert\_pwm**](classhal_1_1soft_1_1inert__pwm.md) <br>_Inert implementation of Pulse Width Modulation (PWM) channel hardware._  |
| class | [**inert\_rotation\_sensor**](classhal_1_1soft_1_1inert__rotation__sensor.md) <br>_Inert implementation of rotation measuring hardware._  |
| class | [**inert\_steady\_clock**](classhal_1_1soft_1_1inert__steady__clock.md) <br>_Inert implementation of steady clock mechanism._  |
| class | [**inert\_temperature\_sensor**](classhal_1_1soft_1_1inert__temperature__sensor.md) <br>_Inert implementation of temperature sensing hardware._  |
| class | [**inert\_timer**](classhal_1_1soft_1_1inert__timer.md) <br>_Inert implementation of timer hardware._  |
| class | [**minimum\_speed\_i2c**](classhal_1_1soft_1_1minimum__speed__i2c.md) <br>_A_ [_**i2c**_](classhal_1_1i2c.md) _wrapper to ensure that the lowest_[_**i2c**_](classhal_1_1i2c.md) _device frequency is used._ |
| class | [**rc\_servo**](classhal_1_1soft_1_1rc__servo.md) <br>_Generic RC servo driver._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**adc\_mux\_pin**](classhal_1_1soft_1_1adc__mux__pin.md) &gt; | [**make\_adc**](#function-make_adc) ([**adc\_multiplexer**](classhal_1_1soft_1_1adc__multiplexer.md) & p\_multiplexer, std::uint8\_t p\_channel) <br>_Returns an ADC pin from the multiplexer._  |




























## Public Functions Documentation




### function make\_adc 

_Returns an ADC pin from the multiplexer._ 
```C++
result< adc_mux_pin > hal::soft::make_adc (
    adc_multiplexer & p_multiplexer,
    std::uint8_t p_channel
) 
```





**Parameters:**


* `p_multiplexer` the adc multiplexer with the desire adc channel pin 
* `p_channel` The channel number of the pin 



**Returns:**

A newly constructed ADC multiplexer pin. 




**Exception:**


* `std::errc::result_out_of_range` if p\_channel greater than the available number of channels in the multiplexer. 




        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/adc_mux.hpp`

