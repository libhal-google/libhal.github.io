

# Class hal::adc\_multiplexer



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**adc\_multiplexer**](classhal_1_1adc__multiplexer.md)



_A driver for an ADC multiplexer that manages and reads ADC mux pins. This driver is intended to be used with multiplexers that use digital signals. An ADC multiplexer can be used to expand the number of input channels of an ADC._ 

* `#include <adc_mux.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|  int | [**get\_max\_channel**](#function-get_max_channel) () <br>_Gets the highest capacity channel held by the ADC mux object. This is caluclated based off of how many source pins are available._  |
|  hal::result&lt; [**hal::adc::read\_t**](structhal_1_1adc_1_1read__t.md) &gt; | [**read\_channel**](#function-read_channel) (std::uint16\_t p\_mux\_port) <br>_Reads a channel on the mux._  |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  [**adc\_multiplexer**](classhal_1_1adc__multiplexer.md) | [**create**](#function-create) (std::span&lt; [**hal::output\_pin**](classhal_1_1output__pin.md) \* &gt; p\_signal\_pins, [**hal::adc**](classhal_1_1adc.md) & p\_source\_pin, [**hal::steady\_clock**](classhal_1_1steady__clock.md) & p\_clock) <br>_Constructs a new_ [_**adc\_multiplexer**_](classhal_1_1adc__multiplexer.md) _object._ |


























## Public Functions Documentation




### function get\_max\_channel 

_Gets the highest capacity channel held by the ADC mux object. This is caluclated based off of how many source pins are available._ 
```C++
int hal::adc_multiplexer::get_max_channel () 
```





**Returns:**

The maximum channel number for this mux (2^n states, where n is number of source pins). 





        



### function read\_channel 

_Reads a channel on the mux._ 
```C++
hal::result< hal::adc::read_t > hal::adc_multiplexer::read_channel (
    std::uint16_t p_mux_port
) 
```





**Parameters:**


* `p_mux_port` The port to be read. If an out of bounds port number is passed, an error-typed result is returned. 



**Returns:**

The [**hal::adc::read\_t**](structhal_1_1adc_1_1read__t.md) struct of the read value or an error if an invalid port is given. 





        
## Public Static Functions Documentation




### function create 

_Constructs a new_ [_**adc\_multiplexer**_](classhal_1_1adc__multiplexer.md) _object._
```C++
static adc_multiplexer hal::adc_multiplexer::create (
    std::span< hal::output_pin * > p_signal_pins,
    hal::adc & p_source_pin,
    hal::steady_clock & p_clock
) 
```





**Parameters:**


* `p_signal_pins` A span of the output signal pins used to determine the channel on the mux. 
* `p_source_pin` The output adc pin of the multiplexer. 
* `p_clock` A steady clock used for delaying 500ns to give time to the mux to have an updated signal. 



**Returns:**

The constructed [**adc\_multiplexer**](classhal_1_1adc__multiplexer.md). 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/adc_mux.hpp`

