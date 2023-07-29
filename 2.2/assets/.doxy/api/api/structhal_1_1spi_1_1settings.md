

# Struct hal::spi::settings



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**spi**](classhal_1_1spi.md) **>** [**settings**](structhal_1_1spi_1_1settings.md)



_Generic settings for a standard SPI device._ 

* `#include <spi.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  bool | [**clock\_idles\_high**](#variable-clock_idles_high)   = = false<br>_The polarity of the pins when the signal is idle._  |
|  hertz | [**clock\_rate**](#variable-clock_rate)   = = 100.0\_kHz<br>_Serial clock frequency in hertz._  |
|  bool | [**data\_valid\_on\_trailing\_edge**](#variable-data_valid_on_trailing_edge)   = = false<br>_The phase of the clock signal when communicating._  |












































## Public Attributes Documentation




### variable clock\_idles\_high 

```C++
bool hal::spi::settings::clock_idles_high;
```






### variable clock\_rate 

```C++
hertz hal::spi::settings::clock_rate;
```






### variable data\_valid\_on\_trailing\_edge 

```C++
bool hal::spi::settings::data_valid_on_trailing_edge;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/spi.hpp`

