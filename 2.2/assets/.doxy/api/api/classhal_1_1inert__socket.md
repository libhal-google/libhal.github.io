

# Class hal::inert\_socket



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**inert\_socket**](classhal_1_1inert__socket.md)



_Inert implementation of generic network sockets._ 

* `#include <inert_socket.hpp>`



Inherits the following classes: hal::socket




































## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**inert\_socket**](classhal_1_1inert__socket.md) &gt; | [**create**](#function-create) (write\_t p\_write\_data, read\_t p\_read\_data) <br>_Factory function to create_ [_**inert\_socket**_](classhal_1_1inert__socket.md) _object._ |


























## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**inert\_socket**_](classhal_1_1inert__socket.md) _object._
```C++
static inline result< inert_socket > hal::inert_socket::create (
    write_t p_write_data,
    read_t p_read_data
) 
```





**Parameters:**


* `p_write_data` - write\_t object to return when write() is called 
* `p_read_data` - read\_t object to return when read() is called 



**Returns:**

result&lt;inert\_socket&gt; - Constructed [**inert\_socket**](classhal_1_1inert__socket.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/incomplete_drivers/inert_socket.hpp`

