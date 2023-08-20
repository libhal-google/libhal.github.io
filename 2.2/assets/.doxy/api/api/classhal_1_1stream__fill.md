

# Class hal::stream\_fill



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**stream\_fill**](classhal_1_1stream__fill.md)



_Non-blocking callable for reading serial data into a buffer._ 

* `#include <streams.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|  [**work\_state**](namespacehal.md#enum-work_state) | [**state**](#function-state) () <br> |
|   | [**stream\_fill**](#function-stream_fill-12) (std::span&lt; [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_buffer) <br>_Construct a new fill object._  |
|   | [**stream\_fill**](#function-stream_fill-22) (std::span&lt; [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_buffer, const size\_t & p\_fill\_amount) <br>_Construct a new fill object._  |




























## Public Functions Documentation




### function state 

```C++
work_state hal::stream_fill::state () 
```






### function stream\_fill [1/2]

_Construct a new fill object._ 
```C++
explicit hal::stream_fill::stream_fill (
    std::span< hal::byte > p_buffer
) 
```





**Parameters:**


* `p_buffer` - buffer to read data into 




        



### function stream\_fill [2/2]

_Construct a new fill object._ 
```C++
hal::stream_fill::stream_fill (
    std::span< hal::byte > p_buffer,
    const size_t & p_fill_amount
) 
```





**Parameters:**


* `p_buffer` - buffer to read data into 
* `p_fill_amount` - reference to a size value to limit the fill amount by. 




        ## Friends Documentation





### friend operator\| 

```C++
std::span< const hal::byte > hal::stream_fill::operator| (
    const std::span< const hal::byte > & p_input_data,
    stream_fill & p_self
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/streams.hpp`

