

# Class hal::stream::fill



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**stream**](namespacehal_1_1stream.md) **>** [**fill**](classhal_1_1stream_1_1fill.md)



_Non-blocking callable for reading serial data into a buffer._ 

* `#include <streams.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**fill**](#function-fill-12) (std::span&lt; hal::byte &gt; p\_buffer) <br>_Construct a new fill object._  |
|   | [**fill**](#function-fill-22) (std::span&lt; hal::byte &gt; p\_buffer, const size\_t & p\_fill\_amount) <br>_Construct a new fill object._  |
|  [**work\_state**](namespacehal.md#enum-work_state) | [**state**](#function-state) () <br> |




























## Public Functions Documentation




### function fill [1/2]

_Construct a new fill object._ 
```C++
explicit hal::stream::fill::fill (
    std::span< hal::byte > p_buffer
) 
```





**Parameters:**


* `p_buffer` - buffer to read data into 




        



### function fill [2/2]

_Construct a new fill object._ 
```C++
hal::stream::fill::fill (
    std::span< hal::byte > p_buffer,
    const size_t & p_fill_amount
) 
```





**Parameters:**


* `p_buffer` - buffer to read data into 
* `p_fill_amount` - reference to a size value to limit the fill amount by. 




        



### function state 

```C++
work_state hal::stream::fill::state () 
```


## Friends Documentation





### friend operator\| 

```C++
std::span< const hal::byte > hal::stream::fill::operator| (
    const std::span< const hal::byte > & p_input_data,
    fill & p_self
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/streams.hpp`

