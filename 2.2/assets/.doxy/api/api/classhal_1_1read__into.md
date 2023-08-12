

# Class hal::read\_into



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**read\_into**](classhal_1_1read__into.md)



_Non-blocking callable for reading serial data into a buffer._ 

* `#include <serial_coroutines.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**work\_state**](namespacehal.md#enum-work_state) &gt; | [**operator()**](#function-operator()) () <br>_read data into the buffer._  |
|   | [**read\_into**](#function-read_into) ([**serial**](classhal_1_1serial.md) & p\_serial, std::span&lt; [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_buffer, size\_t p\_read\_limit=32) <br>_Construct a new_ [_**read\_into**_](classhal_1_1read__into.md) _object._ |




























## Public Functions Documentation




### function operator() 

_read data into the buffer._ 
```C++
inline result< work_state > hal::read_into::operator() () 
```



This function will return if the read limit is reached or if there are no more bytes in the serial port.


Call this function again to resume reading from the port.




**Returns:**

result&lt;work\_state&gt; - work\_state::in\_progress if the sequence hasn't been met and the buffer still has space. 




**Returns:**

result&lt;work\_state&gt; - work\_state::finished if the sequence was found before the buffer was filled completely. 





        



### function read\_into 

_Construct a new_ [_**read\_into**_](classhal_1_1read__into.md) _object._
```C++
inline hal::read_into::read_into (
    serial & p_serial,
    std::span< hal::byte > p_buffer,
    size_t p_read_limit=32
) 
```





**Parameters:**


* `p_serial` - serial port to skip through 
* `p_buffer` - buffer to read data into 
* `p_read_limit` - the maximum number read attempts from the port before returning. A value 0 will result in no reads from the serial port. 




        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/serial_coroutines.hpp`

