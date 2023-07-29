

# Class hal::inert\_serial



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**inert\_serial**](classhal_1_1inert__serial.md)



_Inert implementation of serial communication protocol hardware._ 

* `#include <inert_serial.hpp>`



Inherits the following classes: [hal::serial](classhal_1_1serial.md)
























































## Public Functions inherited from hal::serial

See [hal::serial](classhal_1_1serial.md)

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1serial_1_1settings.md) & p\_settings) <br>_Configure serial to match the settings supplied._  |
|  result&lt; [**flush\_t**](structhal_1_1serial_1_1flush__t.md) &gt; | [**flush**](#function-flush) () <br>_Flush working buffer._  |
|  result&lt; [**read\_t**](structhal_1_1serial_1_1read__t.md) &gt; | [**read**](#function-read) (std::span&lt; [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_data) <br>_Copy bytes from working buffer into passed buffer._  |
|  result&lt; [**write\_t**](structhal_1_1serial_1_1write__t.md) &gt; | [**write**](#function-write) (std::span&lt; const [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_data) <br>_Write data to the transmitter line of the serial port._  |
| virtual  | [**~serial**](#function-serial) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**inert\_serial**](classhal_1_1inert__serial.md) &gt; | [**create**](#function-create) ([**write\_t**](structhal_1_1serial_1_1write__t.md) p\_write\_data, [**read\_t**](structhal_1_1serial_1_1read__t.md) p\_read\_data) <br>_Factory function to create_ [_**inert\_serial**_](classhal_1_1inert__serial.md) _object._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**inert\_serial**_](classhal_1_1inert__serial.md) _object._
```C++
static inline result< inert_serial > hal::inert_serial::create (
    write_t p_write_data,
    read_t p_read_data
) 
```





**Parameters:**


* `p_write_data` - write\_t object to return when [**write()**](classhal_1_1serial.md#function-write) is called 
* `p_read_data` - read\_t object to return when [**read()**](classhal_1_1serial.md#function-read) is called 



**Returns:**

result&lt;inert\_serial&gt; - Constructed [**inert\_serial**](classhal_1_1inert__serial.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/incomplete_drivers/inert_serial.hpp`

