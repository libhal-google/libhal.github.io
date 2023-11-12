

# Class hal::skip\_past



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**skip\_past**](classhal_1_1skip__past.md)



_Discard received bytes until the sequence is found._ 

* `#include <serial_coroutines.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**work\_state**](namespacehal.md#enum-work_state) &gt; | [**operator()**](#function-operator()) () <br>_skip data from the serial port until the sequence is reached._  |
|   | [**skip\_past**](#function-skip_past) ([**serial**](classhal_1_1serial.md) & p\_serial, std::span&lt; const [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_sequence, size\_t p\_read\_limit=32) <br>_Construct a new skip beyond object._  |




























## Public Functions Documentation




### function operator() 

_skip data from the serial port until the sequence is reached._ 
```C++
inline result< work_state > hal::skip_past::operator() () 
```



This function will return if the sequence is found or if there are no more bytes in the serial port.


Call this function again to resume reading from the port.




**Returns:**

result&lt;work\_state&gt; - work\_state::in\_progress if the sequence hasn't been met and the buffer still has space. 




**Returns:**

result&lt;work\_state&gt; - work\_state::finished if the sequence was found before the buffer was filled completely. 





        



### function skip\_past 

_Construct a new skip beyond object._ 
```C++
inline hal::skip_past::skip_past (
    serial & p_serial,
    std::span< const hal::byte > p_sequence,
    size_t p_read_limit=32
) 
```





**Parameters:**


* `p_serial` - serial port to skip through 
* `p_sequence` - sequence to search for. The lifetime of this data pointed to by this span must outlive this object, or not be used when the lifetime of that data is no longer available. 
* `p_read_limit` - the maximum number read attempts from the port before returning. A value 0 will result in no reads from the serial port. 




        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/serial_coroutines.hpp`

