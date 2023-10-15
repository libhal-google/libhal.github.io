

# Struct hal::mock::adc



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**mock**](namespacehal_1_1mock.md) **>** [**adc**](structhal_1_1mock_1_1adc.md)



_Mock adc implementation for use in unit tests and simulations._ 

* `#include <adc.hpp>`



Inherits the following classes: [hal::adc](classhal_1_1adc.md)






















































## Public Functions

| Type | Name |
| ---: | :--- |
|  void | [**set**](#function-set) (std::queue&lt; [**read\_t**](structhal_1_1adc_1_1read__t.md) &gt; & p\_adc\_values) <br>_Queues the floats to be returned for_ [_**read()**_](classhal_1_1adc.md#function-read) __ |


## Public Functions inherited from hal::adc

See [hal::adc](classhal_1_1adc.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**read\_t**](structhal_1_1adc_1_1read__t.md) &gt; | [**read**](#function-read) () <br>_Sample the analog to digital converter and return the result._  |
| virtual  | [**~adc**](#function-adc) () = default<br> |






















































## Public Functions Documentation




### function set 

_Queues the floats to be returned for_ [_**read()**_](classhal_1_1adc.md#function-read) __
```C++
inline void hal::mock::adc::set (
    std::queue< read_t > & p_adc_values
) 
```





**Parameters:**


* `p_adc_values` - queue of floats 




        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-mock/adc.hpp`

