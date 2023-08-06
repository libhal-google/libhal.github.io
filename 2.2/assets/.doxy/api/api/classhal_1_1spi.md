

# Class hal::spi



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**spi**](classhal_1_1spi.md)



_Serial peripheral interface (SPI) communication protocol hardware abstract interface._ 

* `#include <spi.hpp>`





Inherited by the following classes: [hal::mock::write\_only\_spi](structhal_1_1mock_1_1write__only__spi.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**settings**](structhal_1_1spi_1_1settings.md) <br>_Generic settings for a standard SPI device._  |
| struct | [**transfer\_t**](structhal_1_1spi_1_1transfer__t.md) <br>_Feedback from performing a transfer on the spi bus._  |








## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  constexpr [**hal::byte**](namespacehal.md#typedef-byte) | [**default\_filler**](#variable-default_filler)   = = [**hal::byte**](namespacehal.md#typedef-byte){ 0xFF }<br> |














## Public Functions

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1spi_1_1settings.md) & p\_settings) <br>_Configure spi to match the settings supplied._  |
|  result&lt; [**transfer\_t**](structhal_1_1spi_1_1transfer__t.md) &gt; | [**transfer**](#function-transfer) (std::span&lt; const [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_data\_out, std::span&lt; [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_data\_in, [**hal::byte**](namespacehal.md#typedef-byte) p\_filler=[**default\_filler**](classhal_1_1spi.md#variable-default_filler)) <br>_Send and receive data between a selected device on the spi bus. This function will block until the entire transfer is finished._  |
| virtual  | [**~spi**](#function-spi) () = default<br> |




























## Public Static Attributes Documentation




### variable default\_filler 


```C++
constexpr hal::byte hal::spi::default_filler;
```



Default filler data placed on the bus in place of actual write data when the write buffer has been exhausted. 


        
## Public Functions Documentation




### function configure 

_Configure spi to match the settings supplied._ 
```C++
inline status hal::spi::configure (
    const settings & p_settings
) 
```





**Parameters:**


* `p_settings` - settings to apply to spi 



**Returns:**

status - success or failure 




**Exception:**


* `std::errc::invalid_argument` if the settings could not be achieved. 




        



### function transfer 

_Send and receive data between a selected device on the spi bus. This function will block until the entire transfer is finished._ 
```C++
inline result< transfer_t > hal::spi::transfer (
    std::span< const hal::byte > p_data_out,
    std::span< hal::byte > p_data_in,
    hal::byte p_filler=default_filler
) 
```





**Parameters:**


* `p_data_out` - buffer to write data to the bus. If this is set to null/empty then writing is ignored and the p\_filler will be written to the bus. If the length is less than p\_data\_in, then p\_filler will be written to the bus after this buffer has been sent. 
* `p_data_in` - buffer to read the data off of the bus. If this is null/empty, then the transfer will be write only and the incoming data will be ignored. If the length of this buffer is less than p\_data\_out, once this buffer has been filled, the rest of the received bytes on the bus will be dropped. 
* `p_filler` - filler data placed on the bus in place of actual write data when p\_data\_out has been exhausted. 



**Returns:**

result&lt;transfer\_t&gt; - success or failure 





        



### function ~spi 

```C++
virtual hal::spi::~spi () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/spi.hpp`

