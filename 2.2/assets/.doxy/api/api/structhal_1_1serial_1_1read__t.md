

# Struct hal::serial::read\_t



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**serial**](classhal_1_1serial.md) **>** [**read\_t**](structhal_1_1serial_1_1read__t.md)



_Return type for serial read operations._ 

* `#include <serial.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  size\_t | [**available**](#variable-available)  <br>_Number of enqueued and available to be read out bytes._  |
|  size\_t | [**capacity**](#variable-capacity)  <br>_The maximum number of bytes that the serial port can queue up._  |
|  std::span&lt; hal::byte &gt; | [**data**](#variable-data)  <br>_The filled portion of the input buffer from the serial port._  |












































## Public Attributes Documentation




### variable available 

_Number of enqueued and available to be read out bytes._ 
```C++
size_t hal::serial::read_t::available;
```



This value can be equal to or exceed the value of capacity. In this situation, the number of bytes above the capacity are bytes that have been dropped. Not all drivers will indicate the number of bytes lost. It is up to the driver or application to decide what to do in this situation. 


        



### variable capacity 

```C++
size_t hal::serial::read_t::capacity;
```






### variable data 

_The filled portion of the input buffer from the serial port._ 
```C++
std::span<hal::byte> hal::serial::read_t::data;
```



The size of this buffer indicates the number of bytes read The address points to the start of the buffer passed into the [**read()**](classhal_1_1serial.md#function-read) function. 


        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/serial.hpp`

