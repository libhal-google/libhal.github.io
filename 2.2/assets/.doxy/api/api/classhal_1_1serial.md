

# Class hal::serial



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**serial**](classhal_1_1serial.md)



_Hardware abstract interface for the serial communication protocol._ [More...](#detailed-description)

* `#include <serial.hpp>`





Inherited by the following classes: [hal::inert\_serial](classhal_1_1inert__serial.md),  [hal::lpc40::uart](classhal_1_1lpc40_1_1uart.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**flush\_t**](structhal_1_1serial_1_1flush__t.md) <br>_Feedback from performing a flush operation._  |
| struct | [**read\_t**](structhal_1_1serial_1_1read__t.md) <br>_Return type for serial read operations._  |
| struct | [**settings**](structhal_1_1serial_1_1settings.md) <br>_Generic settings for a standard serial device._  |
| struct | [**write\_t**](structhal_1_1serial_1_1write__t.md) <br>_Return type for serial write operations._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1serial_1_1settings.md) & p\_settings) <br>_Configure serial to match the settings supplied._  |
|  result&lt; [**flush\_t**](structhal_1_1serial_1_1flush__t.md) &gt; | [**flush**](#function-flush) () <br>_Flush working buffer._  |
|  result&lt; [**read\_t**](structhal_1_1serial_1_1read__t.md) &gt; | [**read**](#function-read) (std::span&lt; hal::byte &gt; p\_data) <br>_Copy bytes from working buffer into passed buffer._  |
|  result&lt; [**write\_t**](structhal_1_1serial_1_1write__t.md) &gt; | [**write**](#function-write) (std::span&lt; const hal::byte &gt; p\_data) <br>_Write data to the transmitter line of the serial port._  |
| virtual  | [**~serial**](#function-serial) () = default<br> |




























# Detailed Description


Use this interface for hardware that implements a serial protocol like UART, RS232, RS485 and others that use a similar communication protocol but may use different voltage schemes.


This interface only works 8-bit serial data frames.


Due to the asynchronous and unformatted nature of serial communication protocols, all implementations of serial devices must be buffered. Buffered, in this case, is defined as automatic storage of received bytes without direct application intervention.


All implementations MUST allow the user to supply their own buffer of arbitrary size up to the limits of what hardware can support. This allows a developer the ability to tailored the buffer size to the needs of the application.


Examples of buffering schemes are:



* Using DMA to copy data from a serial peripheral to a region of memory
* Using interrupts when a serial peripheral's queue has filled to a point 




    
## Public Functions Documentation




### function configure 

_Configure serial to match the settings supplied._ 
```C++
inline status hal::serial::configure (
    const settings & p_settings
) 
```



Implementing drivers must verify if the settings can be applied to hardware before modifying the hardware. This will ensure that if this operation fails, the state of the serial device has not changed.




**Parameters:**


* `p_settings` - settings to apply to serial driver 



**Returns:**

status - success or failure 




**Exception:**


* `std::errc::invalid_argument` if the settings could not be achieved 




        



### function flush 

_Flush working buffer._ 
```C++
inline result< flush_t > hal::serial::flush () 
```



The behavior of flushing the internal working buffer is this:



* Sets the serial port's internal working buffer to an "empty" state.
* Clear any received data stored in hardware registers.
* Use the fastest available option to perform these operations, meaning that the contents of the internal working buffer will not be zeroed out.






**Returns:**

result&lt;flush\_t&gt; - success or failure 





        



### function read 

_Copy bytes from working buffer into passed buffer._ 
```C++
inline result< read_t > hal::serial::read (
    std::span< hal::byte > p_data
) 
```



This operation copies the bytes from the serial driver's internal working buffer to the buffer supplied.


The buffer will be filled up either to the end of the buffer or until there are no more bytes left in the working buffer. The remaining portion of the input buffer is returned in `read_t::remaining`.


If a frame error has occurred at any point during serial reception, this function will throw a `std::errc::io_error` value. The contents of the internal working buffer will stay the same. No information from the internal working buffer will be copied into the supplied buffer and no data will be removed from the internal working buffer. The frame error status will be internally cleared after its occurrence. Subsequent calls of this function will read out the contents of the buffer although the data inside may be corrupt.


When an error occurs the options available are to flush the buffer and attempt reception again or read out the potentially corrupted data and parse it as needed. The choice of operation is application/driver specific.




**Parameters:**


* `p_data` - Buffer to read bytes in to 



**Returns:**

result&lt;read\_t&gt; - serial read response data 




**Exception:**


* `std::errc::io_error` - a frame error occurred at some point during reception. 




        



### function write 

_Write data to the transmitter line of the serial port._ 
```C++
inline result< write_t > hal::serial::write (
    std::span< const hal::byte > p_data
) 
```





**Parameters:**


* `p_data` - data to be transmitted over the serial port 



**Returns:**

result&lt;write\_t&gt; - serial write response 





        



### function ~serial 

```C++
virtual hal::serial::~serial () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/serial.hpp`

