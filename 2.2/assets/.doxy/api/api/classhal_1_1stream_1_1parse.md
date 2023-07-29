

# Class hal::stream::parse

**template &lt;std::unsigned\_integral T&gt;**



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**stream**](namespacehal_1_1stream.md) **>** [**parse**](classhal_1_1stream_1_1parse.md)



_Read bytes from stream and convert to integer._ 

* `#include <streams.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**parse**](#function-parse) () = default<br>_Construct a new parse object._  |
|  [**work\_state**](namespacehal.md#enum-work_state) | [**state**](#function-state) () <br> |
|  const T & | [**value**](#function-value) () <br> |




























## Public Functions Documentation




### function parse 

```C++
explicit hal::stream::parse::parse () = default
```






### function state 

```C++
inline work_state hal::stream::parse::state () 
```






### function value 


```C++
inline const T & hal::stream::parse::value () 
```





**Returns:**

T& - return an immutable reference to the value 





        ## Friends Documentation





### friend operator\| 

```C++
inline std::span< const hal::byte > hal::stream::parse::operator| (
    const std::span< const hal::byte > & p_input_data,
    parse & p_self
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/streams.hpp`

