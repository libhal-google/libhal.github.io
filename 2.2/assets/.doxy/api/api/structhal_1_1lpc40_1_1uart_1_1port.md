

# Struct hal::lpc40::uart::port



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**lpc40**](namespacehal_1_1lpc40.md) **>** [**uart**](classhal_1_1lpc40_1_1uart.md) **>** [**port**](structhal_1_1lpc40_1_1uart_1_1port.md)



[More...](#detailed-description)

* `#include <uart.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  peripheral | [**id**](#variable-id)  <br>_Resource ID of the UART peripheral to power on at initialization._  |
|  irq | [**irq\_number**](#variable-irq_number)  <br>_Interrupt request number._  |
|  [**pin**](classhal_1_1lpc40_1_1pin.md) | [**rx**](#variable-rx)  <br>_Reference to a uart receiver pin._  |
|  std::uint8\_t | [**rx\_function**](#variable-rx_function)  <br>_Function code to set the receive pin to uart receiver._  |
|  [**pin**](classhal_1_1lpc40_1_1pin.md) | [**tx**](#variable-tx)  <br>_Reference to a uart transmitter pin._  |
|  std::uint8\_t | [**tx\_function**](#variable-tx_function)  <br>_Function code to set the transmit pin to uart transmitter._  |












































# Detailed Description


Port contains all of the information that the lpc40 uart port needs to operate. 


    
## Public Attributes Documentation




### variable id 

```C++
peripheral hal::lpc40::uart::port::id;
```






### variable irq\_number 

```C++
irq hal::lpc40::uart::port::irq_number;
```






### variable rx 

```C++
pin hal::lpc40::uart::port::rx;
```






### variable rx\_function 

```C++
std::uint8_t hal::lpc40::uart::port::rx_function;
```






### variable tx 

```C++
pin hal::lpc40::uart::port::tx;
```






### variable tx\_function 

```C++
std::uint8_t hal::lpc40::uart::port::tx_function;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-lpc40/uart.hpp`

