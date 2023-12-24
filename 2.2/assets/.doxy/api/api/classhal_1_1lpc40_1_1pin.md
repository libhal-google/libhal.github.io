

# Class hal::lpc40::pin



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**lpc40**](namespacehal_1_1lpc40.md) **>** [**pin**](classhal_1_1lpc40_1_1pin.md)



_lpc40xx pin multiplexing and control driver used drivers and apps seeking to tune the pins._ 

* `#include <pin.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|  const [**pin**](classhal_1_1lpc40_1_1pin.md) & | [**analog**](#function-analog) (bool p\_enable) const<br>_enable analog mode for this pin (required for dac and adc drivers)_  |
|  const [**pin**](classhal_1_1lpc40_1_1pin.md) & | [**dac**](#function-dac) (bool p\_enable=true) const<br>_Enable dac mode (required for the dac driver)_  |
|  const [**pin**](classhal_1_1lpc40_1_1pin.md) & | [**digital\_filter**](#function-digital_filter) (bool p\_enable) const<br>_enable digital filtering (filter out noise on input lines)_  |
|  const [**pin**](classhal_1_1lpc40_1_1pin.md) & | [**function**](#function-function) (uint8\_t p\_function\_code) const<br>_Change the function of the pin (mux the pins function)_  |
|  const [**pin**](classhal_1_1lpc40_1_1pin.md) & | [**high\_slew\_rate**](#function-high_slew_rate) (bool p\_enable=true) const<br>_enable high slew rate for pin_  |
|  const [**pin**](classhal_1_1lpc40_1_1pin.md) & | [**highspeed\_i2c**](#function-highspeed_i2c) (bool p\_enable=true) const<br>_Enable high speed mode for_ [_**i2c**_](classhal_1_1lpc40_1_1i2c.md) _pins._ |
|  const [**pin**](classhal_1_1lpc40_1_1pin.md) & | [**hysteresis**](#function-hysteresis) (bool p\_enable) const<br>_Disable or enable hysteresis mode for this pin._  |
|  const [**pin**](classhal_1_1lpc40_1_1pin.md) & | [**i2c\_high\_current**](#function-i2c_high_current) (bool p\_enable=true) const<br>_enable high current drain for_ [_**i2c**_](classhal_1_1lpc40_1_1i2c.md) _lines_ |
|  const [**pin**](classhal_1_1lpc40_1_1pin.md) & | [**input\_invert**](#function-input_invert) (bool p\_enable) const<br>_invert the logic for this pin in input mode_  |
|  const [**pin**](classhal_1_1lpc40_1_1pin.md) & | [**open\_drain**](#function-open_drain) (bool p\_enable=true) const<br>_Make the pin open drain (required for the_ [_**i2c**_](classhal_1_1lpc40_1_1i2c.md) _driver)_ |
|  constexpr | [**pin**](#function-pin-12) (std::uint8\_t p\_port, std::uint8\_t p\_pin) <br>_Construct a new pin mux and configuration driver._  |
|  constexpr | [**pin**](#function-pin-22) () = default<br>_Default constructor._  |
|  const [**pin**](classhal_1_1lpc40_1_1pin.md) & | [**resistor**](#function-resistor) ([**hal::pin\_resistor**](namespacehal.md#enum-pin_resistor) p\_resistor) const<br>_Set the internal resistor connection for this pin._  |




























## Public Functions Documentation




### function analog 

_enable analog mode for this pin (required for dac and adc drivers)_ 
```C++
const pin & hal::lpc40::pin::analog (
    bool p_enable
) const
```





**Parameters:**


* `p_enable` - enable this mode, set to false to disable this mode 



**Returns:**

pin& - reference to this pin for chaining 





        



### function dac 

_Enable dac mode (required for the dac driver)_ 
```C++
const pin & hal::lpc40::pin::dac (
    bool p_enable=true
) const
```





**Parameters:**


* `p_enable` - enable this mode, set to false to disable this mode 



**Returns:**

pin& - reference to this pin for chaining 





        



### function digital\_filter 

_enable digital filtering (filter out noise on input lines)_ 
```C++
const pin & hal::lpc40::pin::digital_filter (
    bool p_enable
) const
```





**Parameters:**


* `p_enable` - enable this mode, set to false to disable this mode 



**Returns:**

pin& - reference to this pin for chaining 





        



### function function 

_Change the function of the pin (mux the pins function)_ 
```C++
const pin & hal::lpc40::pin::function (
    uint8_t p_function_code
) const
```





**Parameters:**


* `p_function_code` - the pin function code 



**Returns:**

pin& - reference to this pin for chaining 





        



### function high\_slew\_rate 

_enable high slew rate for pin_ 
```C++
const pin & hal::lpc40::pin::high_slew_rate (
    bool p_enable=true
) const
```





**Parameters:**


* `p_enable` - enable this mode, set to false to disable this mode 



**Returns:**

pin& - reference to this pin for chaining 





        



### function highspeed\_i2c 

_Enable high speed mode for_ [_**i2c**_](classhal_1_1lpc40_1_1i2c.md) _pins._
```C++
const pin & hal::lpc40::pin::highspeed_i2c (
    bool p_enable=true
) const
```





**Parameters:**


* `p_enable` - enable this mode, set to false to disable this mode 



**Returns:**

pin& - reference to this pin for chaining 





        



### function hysteresis 

_Disable or enable hysteresis mode for this pin._ 
```C++
const pin & hal::lpc40::pin::hysteresis (
    bool p_enable
) const
```





**Parameters:**


* `p_enable` - enable this mode, set to false to disable this mode 



**Returns:**

pin& - reference to this pin for chaining 





        



### function i2c\_high\_current 

_enable high current drain for_ [_**i2c**_](classhal_1_1lpc40_1_1i2c.md) _lines_
```C++
const pin & hal::lpc40::pin::i2c_high_current (
    bool p_enable=true
) const
```





**Parameters:**


* `p_enable` - enable this mode, set to false to disable this mode 



**Returns:**

pin& - reference to this pin for chaining 





        



### function input\_invert 

_invert the logic for this pin in input mode_ 
```C++
const pin & hal::lpc40::pin::input_invert (
    bool p_enable
) const
```





**Parameters:**


* `p_enable` - enable this mode, set to false to disable this mode 



**Returns:**

pin& - reference to this pin for chaining 





        



### function open\_drain 

_Make the pin open drain (required for the_ [_**i2c**_](classhal_1_1lpc40_1_1i2c.md) _driver)_
```C++
const pin & hal::lpc40::pin::open_drain (
    bool p_enable=true
) const
```





**Parameters:**


* `p_enable` - enable this mode, set to false to disable this mode 



**Returns:**

pin& - reference to this pin for chaining 





        



### function pin [1/2]

_Construct a new pin mux and configuration driver._ 
```C++
inline constexpr hal::lpc40::pin::pin (
    std::uint8_t p_port,
    std::uint8_t p_pin
) 
```



See UM10562 page 99 for more details on which pins can be what function.




**Parameters:**


* `p_port` - selects pin port to use 
* `p_pin` - selects pin within the port to use 




        



### function pin [2/2]

```C++
constexpr hal::lpc40::pin::pin () = default
```






### function resistor 

_Set the internal resistor connection for this pin._ 
```C++
const pin & hal::lpc40::pin::resistor (
    hal::pin_resistor p_resistor
) const
```





**Parameters:**


* `p_resistor` - resistor type 



**Returns:**

pin& - reference to this pin for chaining 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-lpc40/pin.hpp`

