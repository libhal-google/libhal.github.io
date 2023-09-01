

# Class hal::read\_uint32



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**read\_uint32**](classhal_1_1read__uint32.md)



_Read bytes from serial port and convert to integer._ 

* `#include <serial_coroutines.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|  std::optional&lt; uint32\_t &gt; | [**get**](#function-get) () <br> |
|  result&lt; [**work\_state**](namespacehal.md#enum-work_state) &gt; | [**operator()**](#function-operator()) () <br>_parse serial data and convert to an integer_  |
|   | [**read\_uint32**](#function-read_uint32) ([**serial**](classhal_1_1serial.md) & p\_serial, size\_t p\_read\_limit=32) <br>_Construct a new_ [_**read\_uint32**_](classhal_1_1read__uint32.md) _object._ |




























## Public Functions Documentation




### function get 


```C++
inline std::optional< uint32_t > hal::read_uint32::get () 
```





**Returns:**

std::optional&lt;uint32\_t&gt; - integer if the parsing is finished or std::nullopt 





        



### function operator() 

_parse serial data and convert to an integer_ 
```C++
inline result< work_state > hal::read_uint32::operator() () 
```



This function will return if an integer ws found or no more bytes in the serial port.


Call this function again to resume reading from the port.




**Returns:**

result&lt;work\_state&gt; - work\_state::in\_progress - if an integer hasn't been found 




**Returns:**

result&lt;work\_state&gt; - work\_state::finished - integer has been found and a non-integer byte has also been found. 





        



### function read\_uint32 

_Construct a new_ [_**read\_uint32**_](classhal_1_1read__uint32.md) _object._
```C++
inline hal::read_uint32::read_uint32 (
    serial & p_serial,
    size_t p_read_limit=32
) 
```





**Parameters:**


* `p_serial` - serial port to skip through 
* `p_read_limit` - the maximum number read attempts from the port before returning. A value 0 will result in no reads from the serial port. 




        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/serial_coroutines.hpp`

