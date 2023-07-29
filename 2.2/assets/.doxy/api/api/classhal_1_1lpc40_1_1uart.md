

# Class hal::lpc40::uart



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**lpc40**](namespacehal_1_1lpc40.md) **>** [**uart**](classhal_1_1lpc40_1_1uart.md)



_Implementation of the UART peripheral for the LPC40xx family of microcontrollers._ [More...](#detailed-description)

* `#include <uart.hpp>`



Inherits the following classes: [hal::serial](classhal_1_1serial.md)












## Classes

| Type | Name |
| ---: | :--- |
| struct | [**port**](structhal_1_1lpc40_1_1uart_1_1port.md) <br> |










































## Public Functions

| Type | Name |
| ---: | :--- |
|  [**uart**](classhal_1_1lpc40_1_1uart.md) & | [**operator=**](#function-operator) ([**uart**](classhal_1_1lpc40_1_1uart.md) & p\_other) = delete<br> |
|  [**uart**](classhal_1_1lpc40_1_1uart.md) & | [**operator=**](#function-operator_1) ([**uart**](classhal_1_1lpc40_1_1uart.md) && p\_other) <br> |
|   | [**uart**](#function-uart-13) ([**uart**](classhal_1_1lpc40_1_1uart.md) & p\_other) = delete<br> |
|   | [**uart**](#function-uart-23) ([**uart**](classhal_1_1lpc40_1_1uart.md) && p\_other) <br> |


## Public Functions inherited from hal::serial

See [hal::serial](classhal_1_1serial.md)

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1serial_1_1settings.md) & p\_settings) <br>_Configure serial to match the settings supplied._  |
|  result&lt; [**flush\_t**](structhal_1_1serial_1_1flush__t.md) &gt; | [**flush**](#function-flush) () <br>_Flush working buffer._  |
|  result&lt; [**read\_t**](structhal_1_1serial_1_1read__t.md) &gt; | [**read**](#function-read) (std::span&lt; hal::byte &gt; p\_data) <br>_Copy bytes from working buffer into passed buffer._  |
|  result&lt; [**write\_t**](structhal_1_1serial_1_1write__t.md) &gt; | [**write**](#function-write) (std::span&lt; const hal::byte &gt; p\_data) <br>_Write data to the transmitter line of the serial port._  |
| virtual  | [**~serial**](#function-serial) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**uart**](classhal_1_1lpc40_1_1uart.md) &gt; | [**construct\_custom**](#function-construct_custom) ([**uart::port**](structhal_1_1lpc40_1_1uart_1_1port.md) p\_port, std::span&lt; hal::byte &gt; p\_receive\_working\_buffer, [**serial::settings**](structhal_1_1serial_1_1settings.md) p\_settings={}) <br> |
|  result&lt; [**uart**](classhal_1_1lpc40_1_1uart.md) &gt; | [**get**](#function-get) (std::uint8\_t p\_port\_number, std::span&lt; hal::byte &gt; p\_receive\_buffer, [**serial::settings**](structhal_1_1serial_1_1settings.md) p\_settings={}) <br>_Retrieve a UART serial port._  |




















































# Detailed Description




**Note:**

that the baud rates less than or equal to the peripheral clock frequency / 48. Otherwise this peripheral cannot guarantee proper transmission or receive of bytes. 





    
## Public Functions Documentation




### function operator= 

```C++
uart & hal::lpc40::uart::operator= (
    uart & p_other
) = delete
```






### function operator= 

```C++
uart & hal::lpc40::uart::operator= (
    uart && p_other
) 
```






### function uart [1/3]

```C++
hal::lpc40::uart::uart (
    uart & p_other
) = delete
```






### function uart [2/3]

```C++
hal::lpc40::uart::uart (
    uart && p_other
) 
```



## Public Static Functions Documentation




### function construct\_custom 

```C++
static result< uart > hal::lpc40::uart::construct_custom (
    uart::port p_port,
    std::span< hal::byte > p_receive_working_buffer,
    serial::settings p_settings={}
) 
```






### function get 

_Retrieve a UART serial port._ 
```C++
static result< uart > hal::lpc40::uart::get (
    std::uint8_t p_port_number,
    std::span< hal::byte > p_receive_buffer,
    serial::settings p_settings={}
) 
```





**Parameters:**


* `p_port_number` - which uart port number to return 
* `p_receive_buffer` - uart serial receive working buffer 
* `p_settings` - the initial settings for the uart driver 



**Returns:**

result&lt;uart&gt; - uart serial driver 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-lpc40/uart.hpp`

