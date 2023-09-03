

# Struct hal::lpc40::spi::bus\_info



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**lpc40**](namespacehal_1_1lpc40.md) **>** [**spi**](classhal_1_1lpc40_1_1spi.md) **>** [**bus\_info**](structhal_1_1lpc40_1_1spi_1_1bus__info.md)



_Information used to configure the spi bus._ 

* `#include <spi.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  [**pin**](classhal_1_1lpc40_1_1pin.md) | [**clock**](#variable-clock)  <br>_spi data pin_  |
|  std::uint8\_t | [**clock\_function**](#variable-clock_function)  <br>_clock function code_  |
|  [**pin**](classhal_1_1lpc40_1_1pin.md) | [**data\_in**](#variable-data_in)  <br>_spi clock pin_  |
|  std::uint8\_t | [**data\_in\_function**](#variable-data_in_function)  <br>_scl pin function code_  |
|  [**pin**](classhal_1_1lpc40_1_1pin.md) | [**data\_out**](#variable-data_out)  <br>_spi clock pin_  |
|  std::uint8\_t | [**data\_out\_function**](#variable-data_out_function)  <br>_scl pin function code_  |
|  [**peripheral**](namespacehal_1_1lpc40.md#enum-peripheral) | [**peripheral\_id**](#variable-peripheral_id)  <br>_peripheral id used to power on the spi peripheral at creation_  |












































## Public Attributes Documentation




### variable clock 

```C++
pin hal::lpc40::spi::bus_info::clock;
```






### variable clock\_function 

```C++
std::uint8_t hal::lpc40::spi::bus_info::clock_function;
```






### variable data\_in 

```C++
pin hal::lpc40::spi::bus_info::data_in;
```






### variable data\_in\_function 

```C++
std::uint8_t hal::lpc40::spi::bus_info::data_in_function;
```






### variable data\_out 

```C++
pin hal::lpc40::spi::bus_info::data_out;
```






### variable data\_out\_function 

```C++
std::uint8_t hal::lpc40::spi::bus_info::data_out_function;
```






### variable peripheral\_id 

```C++
peripheral hal::lpc40::spi::bus_info::peripheral_id;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-lpc40/spi.hpp`

