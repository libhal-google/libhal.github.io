

# Class hal::stream\_find



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**stream\_find**](classhal_1_1stream__find.md)



_Discard received bytes until the sequence is found._ 

* `#include <streams.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|  [**work\_state**](namespacehal.md#enum-work_state) | [**state**](#function-state) () <br> |
|   | [**stream\_find**](#function-stream_find) (std::span&lt; const [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_sequence) <br>_Construct a new find object._  |




























## Public Functions Documentation




### function state 

```C++
work_state hal::stream_find::state () 
```






### function stream\_find 

_Construct a new find object._ 
```C++
explicit hal::stream_find::stream_find (
    std::span< const hal::byte > p_sequence
) 
```





**Parameters:**


* `p_sequence` - sequence to search for. The lifetime of this data pointed to by this span must outlive this object, or not be used when the lifetime of that data is no longer available. 




        ## Friends Documentation





### friend operator\| 

```C++
std::span< const hal::byte > hal::stream_find::operator| (
    const std::span< const hal::byte > & p_input_data,
    stream_find & p_self
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/streams.hpp`

