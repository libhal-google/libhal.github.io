

# Class hal::stream\_parse

**template &lt;std::unsigned\_integral T&gt;**



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**stream\_parse**](classhal_1_1stream__parse.md)



_Read bytes from stream and convert to integer._ 

* `#include <streams.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|  [**work\_state**](namespacehal.md#enum-work_state) | [**state**](#function-state) () <br> |
|   | [**stream\_parse**](#function-stream_parse) () = default<br>_Construct a new parse object._  |
|  const T & | [**value**](#function-value) () <br> |




























## Public Functions Documentation




### function state 

```C++
inline work_state hal::stream_parse::state () 
```






### function stream\_parse 

```C++
explicit hal::stream_parse::stream_parse () = default
```






### function value 


```C++
inline const T & hal::stream_parse::value () 
```





**Returns:**

T& - return an immutable reference to the value 





        ## Friends Documentation





### friend operator\| 

```C++
inline std::span< const hal::byte > hal::stream_parse::operator| (
    const std::span< const hal::byte > & p_input_data,
    stream_parse & p_self
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/streams.hpp`

