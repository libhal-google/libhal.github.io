

# File spi.hpp



[**FileList**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-mock**](dir_24679974995b72317f1fb09ac5dd2fb9.md) **>** [**spi.hpp**](libhal-mock_2spi_8hpp.md)

[Go to the source code of this file](libhal-mock_2spi_8hpp_source.md)



* `#include "testing.hpp"`
* `#include <libhal/spi.hpp>`
* `#include <libhal/units.hpp>`













## Namespaces

| Type | Name |
| ---: | :--- |
| namespace | [**hal**](namespacehal.md) <br>_The foundation of libhal containing, interfaces, utilities and soft drivers._  |
| namespace | [**mock**](namespacehal_1_1mock.md) <br> |


## Classes

| Type | Name |
| ---: | :--- |
| struct | [**write\_only\_spi**](structhal_1_1mock_1_1write__only__spi.md) <br>_Mock spi implementation for use in unit tests and simulations with a spy functions for_ [_**configure()**_](classhal_1_1spi.md#function-configure) _and a record for the_[_**transfer()**_](classhal_1_1spi.md#function-transfer) _out data. The record ignores the in buffer and just stores the data being sent so it can be inspected later._ |



















































------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-mock/spi.hpp`

