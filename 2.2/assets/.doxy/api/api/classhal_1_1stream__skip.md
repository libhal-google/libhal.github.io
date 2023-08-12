

# Class hal::stream\_skip



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**stream\_skip**](classhal_1_1stream__skip.md)



_Skip number of bytes in a byte stream._ 

* `#include <streams.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|  [**work\_state**](namespacehal.md#enum-work_state) | [**state**](#function-state) () <br> |
|   | [**stream\_skip**](#function-stream_skip) (size\_t p\_skip) <br>_Construct a new skip object._  |




























## Public Functions Documentation




### function state 

```C++
work_state hal::stream_skip::state () 
```






### function stream\_skip 

```C++
explicit hal::stream_skip::stream_skip (
    size_t p_skip
) 
```


## Friends Documentation





### friend operator\| 

```C++
std::span< const hal::byte > hal::stream_skip::operator| (
    const std::span< const hal::byte > & p_input_data,
    stream_skip & p_self
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/streams.hpp`

