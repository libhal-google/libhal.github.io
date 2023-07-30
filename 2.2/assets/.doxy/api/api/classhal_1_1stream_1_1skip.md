

# Class hal::stream::skip



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**stream**](namespacehal_1_1stream.md) **>** [**skip**](classhal_1_1stream_1_1skip.md)



_Skip number of bytes in a byte stream._ 

* `#include <streams.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**skip**](#function-skip) (size\_t p\_skip) <br>_Construct a new skip object._  |
|  [**work\_state**](namespacehal.md#enum-work_state) | [**state**](#function-state) () <br> |




























## Public Functions Documentation




### function skip 

```C++
explicit hal::stream::skip::skip (
    size_t p_skip
) 
```






### function state 

```C++
work_state hal::stream::skip::state () 
```


## Friends Documentation





### friend operator\| 

```C++
std::span< const hal::byte > hal::stream::skip::operator| (
    const std::span< const hal::byte > & p_input_data,
    skip & p_self
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/streams.hpp`

