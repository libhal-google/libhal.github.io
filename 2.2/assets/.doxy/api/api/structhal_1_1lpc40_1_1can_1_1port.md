

# Struct hal::lpc40::can::port



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**lpc40**](namespacehal_1_1lpc40.md) **>** [**can**](classhal_1_1lpc40_1_1can.md) **>** [**port**](structhal_1_1lpc40_1_1can_1_1port.md)



[More...](#detailed-description)

* `#include <can.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  peripheral | [**id**](#variable-id)  <br>_Peripheral's ID._  |
|  irq | [**irq\_number**](#variable-irq_number)  <br>_IRQ._  |
|  [**pin**](classhal_1_1lpc40_1_1pin.md) | [**rd**](#variable-rd)  <br>_Reference to read pin object._  |
|  std::uint8\_t | [**rd\_function\_code**](#variable-rd_function_code)  <br>_Pin function code for receive._  |
|  std::uint8\_t | [**sync\_jump**](#variable-sync_jump)   = = 0<br>_Number of time quanta for sync bits - 1._  |
|  [**pin**](classhal_1_1lpc40_1_1pin.md) | [**td**](#variable-td)  <br>_Reference to transmit pin object._  |
|  std::uint8\_t | [**td\_function\_code**](#variable-td_function_code)  <br>_Pin function code for transmit._  |
|  std::uint8\_t | [**tseg1**](#variable-tseg1)   = = 6<br>_Number of time quanta for tseg1 - 1._  |
|  std::uint8\_t | [**tseg2**](#variable-tseg2)   = = 1<br>_Number of time quanta for tseg2 - 1._  |












































# Detailed Description


Contains all of the information for to control and configure a CAN BUS bus on the LPC40xx platform. 


    
## Public Attributes Documentation




### variable id 

```C++
peripheral hal::lpc40::can::port::id;
```






### variable irq\_number 

```C++
irq hal::lpc40::can::port::irq_number;
```






### variable rd 

```C++
pin hal::lpc40::can::port::rd;
```






### variable rd\_function\_code 

```C++
std::uint8_t hal::lpc40::can::port::rd_function_code;
```






### variable sync\_jump 

```C++
std::uint8_t hal::lpc40::can::port::sync_jump;
```






### variable td 

```C++
pin hal::lpc40::can::port::td;
```






### variable td\_function\_code 

```C++
std::uint8_t hal::lpc40::can::port::td_function_code;
```






### variable tseg1 

```C++
std::uint8_t hal::lpc40::can::port::tseg1;
```






### variable tseg2 

```C++
std::uint8_t hal::lpc40::can::port::tseg2;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-lpc40/can.hpp`

