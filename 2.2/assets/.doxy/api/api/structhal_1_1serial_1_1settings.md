

# Struct hal::serial::settings



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**serial**](classhal_1_1serial.md) **>** [**settings**](structhal_1_1serial_1_1settings.md)



_Generic settings for a standard serial device._ 

* `#include <serial.hpp>`

















## Public Types

| Type | Name |
| ---: | :--- |
| enum uint8\_t | [**parity**](#enum-parity-12)  <br>_Set of parity bit options._  |
| enum uint8\_t | [**stop\_bits**](#enum-stop_bits)  <br>_Set of available stop bits options._  |




## Public Attributes

| Type | Name |
| ---: | :--- |
|  [**hertz**](namespacehal.md#typedef-hertz) | [**baud\_rate**](#variable-baud_rate)   = = 115200.0f<br>_The operating speed of the baud rate (in units of bits per second)_  |
|  [**parity**](structhal_1_1serial_1_1settings.md#enum-parity-12) | [**parity**](#variable-parity-22)   = = parity::none<br>_Parity bit type for each frame._  |
|  [**stop\_bits**](structhal_1_1serial_1_1settings.md#enum-stop_bits) | [**stop**](#variable-stop)   = = stop\_bits::one<br>_Number of stop bits for each frame._  |












































## Public Types Documentation




### enum parity [1/2]

```C++
enum hal::serial::settings::parity {
    none = 0,
    odd,
    even,
    forced1,
    forced0
};
```






### enum stop\_bits 

```C++
enum hal::serial::settings::stop_bits {
    one = 0,
    two
};
```



## Public Attributes Documentation




### variable baud\_rate 

```C++
hertz hal::serial::settings::baud_rate;
```






### variable parity [2/2]

```C++
parity hal::serial::settings::parity;
```






### variable stop 

```C++
stop_bits hal::serial::settings::stop;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/serial.hpp`

