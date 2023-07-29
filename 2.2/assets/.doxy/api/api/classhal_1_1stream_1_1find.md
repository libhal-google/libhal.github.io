

# Class hal::stream::find



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**stream**](namespacehal_1_1stream.md) **>** [**find**](classhal_1_1stream_1_1find.md)



_Discard received bytes until the sequence is found._ 

* `#include <streams.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**find**](#function-find) (std::span&lt; const hal::byte &gt; p\_sequence) <br>_Construct a new find object._  |
|  [**work\_state**](namespacehal.md#enum-work_state) | [**state**](#function-state) () <br> |




























## Public Functions Documentation




### function find 

_Construct a new find object._ 
```C++
explicit hal::stream::find::find (
    std::span< const hal::byte > p_sequence
) 
```





**Parameters:**


* `p_sequence` - sequence to search for. The lifetime of this data pointed to by this span must outlive this object, or not be used when the lifetime of that data is no longer available. 




        



### function state 

```C++
work_state hal::stream::find::state () 
```


## Friends Documentation





### friend operator\| 

```C++
std::span< const hal::byte > hal::stream::find::operator| (
    const std::span< const hal::byte > & p_input_data,
    find & p_self
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/streams.hpp`

