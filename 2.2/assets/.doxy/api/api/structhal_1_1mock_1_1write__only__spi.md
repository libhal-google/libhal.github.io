

# Struct hal::mock::write\_only\_spi



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**mock**](namespacehal_1_1mock.md) **>** [**write\_only\_spi**](structhal_1_1mock_1_1write__only__spi.md)



_Mock spi implementation for use in unit tests and simulations with a spy functions for_ [_**configure()**_](classhal_1_1spi.md#function-configure) _and a record for the_[_**transfer()**_](classhal_1_1spi.md#function-transfer) _out data. The record ignores the in buffer and just stores the data being sent so it can be inspected later._

* `#include <spi.hpp>`



Inherits the following classes: [hal::spi](classhal_1_1spi.md)






















## Public Attributes

| Type | Name |
| ---: | :--- |
|  [**spy\_handler**](classhal_1_1spy__handler.md)&lt; [**settings**](structhal_1_1spi_1_1settings.md) &gt; | [**spy\_configure**](#variable-spy_configure)  <br>_Spy handler for_ [_**hal::spi::configure()**_](classhal_1_1spi.md#function-configure) __ |
|  std::vector&lt; std::vector&lt; hal::byte &gt; &gt; | [**write\_record**](#variable-write_record)  <br>_Record of the out data from_ [_**hal::spi::transfer()**_](classhal_1_1spi.md#function-transfer) __ |






## Public Static Attributes inherited from hal::spi

See [hal::spi](classhal_1_1spi.md)

| Type | Name |
| ---: | :--- |
|  constexpr hal::byte | [**default\_filler**](#variable-default_filler)   = = hal::byte{ 0xFF }<br> |


























## Public Functions

| Type | Name |
| ---: | :--- |
|  void | [**reset**](#function-reset) () <br>_Reset spy information for both_ [_**configure()**_](classhal_1_1spi.md#function-configure) _and_[_**transfer()**_](classhal_1_1spi.md#function-transfer) __ |


## Public Functions inherited from hal::spi

See [hal::spi](classhal_1_1spi.md)

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1spi_1_1settings.md) & p\_settings) <br>_Configure spi to match the settings supplied._  |
|  result&lt; [**transfer\_t**](structhal_1_1spi_1_1transfer__t.md) &gt; | [**transfer**](#function-transfer) (std::span&lt; const hal::byte &gt; p\_data\_out, std::span&lt; hal::byte &gt; p\_data\_in, hal::byte p\_filler=[**default\_filler**](classhal_1_1spi.md#variable-default_filler)) <br>_Send and receive data between a selected device on the spi bus. This function will block until the entire transfer is finished._  |
| virtual  | [**~spi**](#function-spi) () = default<br> |






















































## Public Attributes Documentation




### variable spy\_configure 

```C++
spy_handler<settings> hal::mock::write_only_spi::spy_configure;
```






### variable write\_record 

```C++
std::vector<std::vector<hal::byte> > hal::mock::write_only_spi::write_record;
```



## Public Functions Documentation




### function reset 

```C++
inline void hal::mock::write_only_spi::reset () 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-mock/spi.hpp`

