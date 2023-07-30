

# Class hal::stream::fill\_upto



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**stream**](namespacehal_1_1stream.md) **>** [**fill\_upto**](classhal_1_1stream_1_1fill__upto.md)



_Discard received bytes until the sequence is found._ 

* `#include <streams.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**fill\_upto**](#function-fill_upto) (std::span&lt; const [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_sequence, std::span&lt; [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_buffer) <br>_Construct a new fill upto object._  |
|  std::span&lt; [**hal::byte**](namespacehal.md#typedef-byte) &gt; | [**span**](#function-span) () <br> |
|  [**work\_state**](namespacehal.md#enum-work_state) | [**state**](#function-state) () <br> |
|  std::span&lt; [**hal::byte**](namespacehal.md#typedef-byte) &gt; | [**unfilled**](#function-unfilled) () <br> |




























## Public Functions Documentation




### function fill\_upto 

_Construct a new fill upto object._ 
```C++
hal::stream::fill_upto::fill_upto (
    std::span< const hal::byte > p_sequence,
    std::span< hal::byte > p_buffer
) 
```





**Parameters:**


* `p_sequence` - sequence to search for. The lifetime of this data pointed to by this span must outlive this object, or not be used when the lifetime of that data is no longer available. 
* `p_buffer` - buffer to fill data into 




        



### function span 

```C++
std::span< hal::byte > hal::stream::fill_upto::span () 
```






### function state 

```C++
work_state hal::stream::fill_upto::state () 
```






### function unfilled 

```C++
std::span< hal::byte > hal::stream::fill_upto::unfilled () 
```


## Friends Documentation





### friend operator\| 

```C++
std::span< const hal::byte > hal::stream::fill_upto::operator| (
    const std::span< const hal::byte > & p_input_data,
    fill_upto & p_self
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/streams.hpp`

