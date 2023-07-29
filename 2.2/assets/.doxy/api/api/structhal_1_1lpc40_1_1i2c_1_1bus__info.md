

# Struct hal::lpc40::i2c::bus\_info



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**lpc40**](namespacehal_1_1lpc40.md) **>** [**i2c**](classhal_1_1lpc40_1_1i2c.md) **>** [**bus\_info**](structhal_1_1lpc40_1_1i2c_1_1bus__info.md)



[More...](#detailed-description)

* `#include <i2c.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  float | [**duty\_cycle**](#variable-duty_cycle)   = = 0.5f<br>_Clock rate duty cycle._  |
|  irq | [**irq\_number**](#variable-irq_number)  <br>_IRQ number for this_ [_**i2c**_](classhal_1_1lpc40_1_1i2c.md) _port._ |
|  peripheral | [**peripheral\_id**](#variable-peripheral_id)  <br>_peripheral id used to power on the_ [_**i2c**_](classhal_1_1lpc40_1_1i2c.md) _peripheral at creation_ |
|  [**pin**](classhal_1_1lpc40_1_1pin.md) | [**scl**](#variable-scl)  <br>[_**i2c**_](classhal_1_1lpc40_1_1i2c.md) _clock pin_ |
|  std::uint8\_t | [**scl\_function**](#variable-scl_function)  <br>_scl pin function code_  |
|  [**pin**](classhal_1_1lpc40_1_1pin.md) | [**sda**](#variable-sda)  <br>[_**i2c**_](classhal_1_1lpc40_1_1i2c.md) _data pin_ |
|  std::uint8\_t | [**sda\_function**](#variable-sda_function)  <br>_sda pin function code_  |












































# Detailed Description


port holds all of the information for an [**i2c**](classhal_1_1lpc40_1_1i2c.md) bus on the LPC40xx platform. 


    
## Public Attributes Documentation




### variable duty\_cycle 

```C++
float hal::lpc40::i2c::bus_info::duty_cycle;
```






### variable irq\_number 

```C++
irq hal::lpc40::i2c::bus_info::irq_number;
```






### variable peripheral\_id 

```C++
peripheral hal::lpc40::i2c::bus_info::peripheral_id;
```






### variable scl 

```C++
pin hal::lpc40::i2c::bus_info::scl;
```






### variable scl\_function 

```C++
std::uint8_t hal::lpc40::i2c::bus_info::scl_function;
```






### variable sda 

```C++
pin hal::lpc40::i2c::bus_info::sda;
```






### variable sda\_function 

```C++
std::uint8_t hal::lpc40::i2c::bus_info::sda_function;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-lpc40/i2c.hpp`

