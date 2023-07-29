

# Class hal::lpc40::adc



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**lpc40**](namespacehal_1_1lpc40.md) **>** [**adc**](classhal_1_1lpc40_1_1adc.md)



_Analog to digital converter._ 

* `#include <adc.hpp>`



Inherits the following classes: [hal::adc](classhal_1_1adc.md)












## Classes

| Type | Name |
| ---: | :--- |
| struct | [**channel**](structhal_1_1lpc40_1_1adc_1_1channel.md) <br>_Channel specific information._  |










































## Public Functions

| Type | Name |
| ---: | :--- |
| virtual  | [**~adc**](#function-adc) () = default<br> |


## Public Functions inherited from hal::adc

See [hal::adc](classhal_1_1adc.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**read\_t**](structhal_1_1adc_1_1read__t.md) &gt; | [**read**](#function-read) () <br>_Sample the analog to digital converter and return the result._  |
| virtual  | [**~adc**](#function-adc) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**adc**](classhal_1_1lpc40_1_1adc.md) &gt; | [**construct\_custom\_channel**](#function-construct_custom_channel) (const [**channel**](structhal_1_1lpc40_1_1adc_1_1channel.md) & p\_channel) <br>_Construct a custom adc object based on the passed in channel information._  |
|  result&lt; [**adc**](classhal_1_1lpc40_1_1adc.md) &gt; | [**get**](#function-get) (size\_t p\_channel) <br>_Get a predefined adc channel._  |




















































## Public Functions Documentation




### function ~adc 

```C++
virtual hal::lpc40::adc::~adc () = default
```



Implements [*hal::adc::~adc*](classhal_1_1adc.md#function-adc)

## Public Static Functions Documentation




### function construct\_custom\_channel 

_Construct a custom adc object based on the passed in channel information._ 
```C++
static result< adc > hal::lpc40::adc::construct_custom_channel (
    const channel & p_channel
) 
```



Care should be taken to ensure that the adc's operating frequency does not go above 1MHz and that the the channel index is within the bounds of 0 to 7. Exceeding these bounds will result in a call to std::abort.


Care should also be taken to ensure that two adc's constructed via this method do not overlap in index.


The operating frequency is shared across all adc channels, which means that the last adc to be constructed will set sampling frequency for all channels.




**Parameters:**


* `p_channel` - Which adc channel to return 



**Returns:**

result&lt;adc&gt; - adc driver object 





        



### function get 

_Get a predefined adc channel._ 
```C++
static result< adc > hal::lpc40::adc::get (
    size_t p_channel
) 
```




* ADC channel 0 is pin(0, 23)
* ADC channel 1 is pin(0, 24)
* ADC channel 2 is pin(0, 25)
* ADC channel 3 is pin(0, 26)
* ADC channel 4 is pin(1, 30)
* ADC channel 5 is pin(1, 31)
* ADC channel 6 is pin(0, 12)
* ADC channel 7 is pin(0, 13)






**Parameters:**


* `p_channel` - Which adc channel to return 



**Returns:**

result&lt;adc&gt; - adc driver object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-lpc40/adc.hpp`

