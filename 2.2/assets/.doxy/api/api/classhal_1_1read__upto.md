

# Class hal::read\_upto



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**read\_upto**](classhal_1_1read__upto.md)



_Discard received bytes until the sequence is found._ 

* `#include <serial_coroutines.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**work\_state**](namespacehal.md#enum-work_state) &gt; | [**operator()**](#function-operator()) () <br>_read data into the buffer._  |
|   | [**read\_upto**](#function-read_upto) ([**serial**](classhal_1_1serial.md) & p\_serial, std::span&lt; const [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_sequence, std::span&lt; [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_buffer, size\_t p\_read\_limit=32) <br>_Construct a new skip beyond object._  |




























## Public Functions Documentation




### function operator() 

_read data into the buffer._ 
```C++
inline result< work_state > hal::read_upto::operator() () 
```



This function will return if the read limit is reached or if there are no more bytes in the serial port.


Call this function again to resume reading from the port.




**Returns:**

result&lt;work\_state&gt; - work\_state::in\_progress if the sequence hasn't been met and the buffer still has space. 




**Returns:**

result&lt;work\_state&gt; - work\_state::failed if the sequence wasn't found before the buffer was filled completely. 




**Returns:**

result&lt;work\_state&gt; - work\_state::finished if the sequence was found before the buffer was filled completely. 





        



### function read\_upto 

_Construct a new skip beyond object._ 
```C++
inline hal::read_upto::read_upto (
    serial & p_serial,
    std::span< const hal::byte > p_sequence,
    std::span< hal::byte > p_buffer,
    size_t p_read_limit=32
) 
```





**Parameters:**


* `p_serial` - serial port to skip through 
* `p_sequence` - sequence to search for. The lifetime of this data pointed to by this span must outlive this object, or not be used when the lifetime of that data is no longer available. 
* `p_buffer` - buffer to fill data into 
* `p_read_limit` - the maximum number of bytes to read off from the serial port before returning. A value 0 will result in no reads from the serial port. 




        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/serial_coroutines.hpp`

