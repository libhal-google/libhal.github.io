

# Class hal::lpc40::spi



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**lpc40**](namespacehal_1_1lpc40.md) **>** [**spi**](classhal_1_1lpc40_1_1spi.md)








Inherits the following classes: [hal::spi](classhal_1_1spi.md)












## Classes

| Type | Name |
| ---: | :--- |
| struct | [**bus\_info**](structhal_1_1lpc40_1_1spi_1_1bus__info.md) <br>_Information used to configure the spi bus._  |
















## Public Static Attributes inherited from hal::spi

See [hal::spi](classhal_1_1spi.md)

| Type | Name |
| ---: | :--- |
|  constexpr [**hal::byte**](namespacehal.md#typedef-byte) | [**default\_filler**](#variable-default_filler)   = = [**hal::byte**](namespacehal.md#typedef-byte){ 0xFF }<br> |


























## Public Functions

| Type | Name |
| ---: | :--- |
|  [**spi**](classhal_1_1lpc40_1_1spi.md) & | [**operator=**](#function-operator) ([**spi**](classhal_1_1lpc40_1_1spi.md) & p\_other) = delete<br> |
|  [**spi**](classhal_1_1lpc40_1_1spi.md) & | [**operator=**](#function-operator_1) ([**spi**](classhal_1_1lpc40_1_1spi.md) && p\_other) <br> |
|   | [**spi**](#function-spi-13) ([**spi**](classhal_1_1lpc40_1_1spi.md) & p\_other) = delete<br> |
|   | [**spi**](#function-spi-23) ([**spi**](classhal_1_1lpc40_1_1spi.md) && p\_other) <br> |
| virtual  | [**~spi**](#function-spi) () <br> |


## Public Functions inherited from hal::spi

See [hal::spi](classhal_1_1spi.md)

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1spi_1_1settings.md) & p\_settings) <br>_Configure spi to match the settings supplied._  |
|  result&lt; [**transfer\_t**](structhal_1_1spi_1_1transfer__t.md) &gt; | [**transfer**](#function-transfer) (std::span&lt; const [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_data\_out, std::span&lt; [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_data\_in, [**hal::byte**](namespacehal.md#typedef-byte) p\_filler=[**default\_filler**](classhal_1_1spi.md#variable-default_filler)) <br>_Send and receive data between a selected device on the spi bus. This function will block until the entire transfer is finished._  |
| virtual  | [**~spi**](#function-spi) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**spi**](classhal_1_1lpc40_1_1spi.md) &gt; | [**get**](#function-get) (std::uint8\_t p\_bus, const [**spi::settings**](structhal_1_1spi_1_1settings.md) & p\_settings={}) <br> |




















































## Public Functions Documentation




### function operator= 

```C++
spi & hal::lpc40::spi::operator= (
    spi & p_other
) = delete
```






### function operator= 

```C++
spi & hal::lpc40::spi::operator= (
    spi && p_other
) 
```






### function spi [1/3]

```C++
hal::lpc40::spi::spi (
    spi & p_other
) = delete
```






### function spi [2/3]

```C++
hal::lpc40::spi::spi (
    spi && p_other
) 
```






### function ~spi 

```C++
virtual hal::lpc40::spi::~spi () 
```



Implements [*hal::spi::~spi*](classhal_1_1spi.md#function-spi)

## Public Static Functions Documentation




### function get 

```C++
static result< spi > hal::lpc40::spi::get (
    std::uint8_t p_bus,
    const spi::settings & p_settings={}
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-lpc40/spi.hpp`

