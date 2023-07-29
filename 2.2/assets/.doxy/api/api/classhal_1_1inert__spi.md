

# Class hal::inert\_spi



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**inert\_spi**](classhal_1_1inert__spi.md)



_Inert implementation of Serial peripheral interface (SPI) communication protocol hardware._ 

* `#include <inert_spi.hpp>`



Inherits the following classes: [hal::spi](classhal_1_1spi.md)




























## Public Static Attributes inherited from hal::spi

See [hal::spi](classhal_1_1spi.md)

| Type | Name |
| ---: | :--- |
|  constexpr hal::byte | [**default\_filler**](#variable-default_filler)   = = hal::byte{ 0xFF }<br> |




























## Public Functions inherited from hal::spi

See [hal::spi](classhal_1_1spi.md)

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1spi_1_1settings.md) & p\_settings) <br>_Configure spi to match the settings supplied._  |
|  result&lt; [**transfer\_t**](structhal_1_1spi_1_1transfer__t.md) &gt; | [**transfer**](#function-transfer) (std::span&lt; const hal::byte &gt; p\_data\_out, std::span&lt; hal::byte &gt; p\_data\_in, hal::byte p\_filler=[**default\_filler**](classhal_1_1spi.md#variable-default_filler)) <br>_Send and receive data between a selected device on the spi bus. This function will block until the entire transfer is finished._  |
| virtual  | [**~spi**](#function-spi) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**inert\_spi**](classhal_1_1inert__spi.md) &gt; | [**create**](#function-create) () <br>_Factory function to create_ [_**inert\_spi**_](classhal_1_1inert__spi.md) _object._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**inert\_spi**_](classhal_1_1inert__spi.md) _object._
```C++
static inline result< inert_spi > hal::inert_spi::create () 
```





**Returns:**

result&lt;inert\_spi&gt; - Constructed [**inert\_spi**](classhal_1_1inert__spi.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/incomplete_drivers/inert_spi.hpp`

