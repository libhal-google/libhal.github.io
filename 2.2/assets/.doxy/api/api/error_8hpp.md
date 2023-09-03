

# File error.hpp



[**FileList**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal**](dir_c21661262b37aa135a14febc024e67d7.md) **>** [**error.hpp**](error_8hpp.md)

[Go to the source code of this file](error_8hpp_source.md)



* `#include <boost/leaf.hpp>`
* `#include <system_error>`













## Namespaces

| Type | Name |
| ---: | :--- |
| namespace | [**hal**](namespacehal.md) <br>_The foundation of libhal containing, interfaces, utilities and soft drivers._  |
| namespace | [**error**](namespacehal_1_1error.md) <br>_Error objects, templates, and constants._  |


## Classes

| Type | Name |
| ---: | :--- |
| struct | [**invalid\_option\_t**](structhal_1_1error_1_1invalid__option__t.md) &lt;options&gt;<br>_Used for defining static\_asserts that should always fail, but only if the static\_assert line is hit via_ `if constexpr` _control block. Prefer to NOT use this directly but to use_`invalid_option` _instead._ |

















































## Macros

| Type | Name |
| ---: | :--- |
| define  | [**HAL\_CHECK**](error_8hpp.md#define-hal_check)  BOOST\_LEAF\_CHECK<br> |

## Macro Definition Documentation





### define HAL\_CHECK 

```C++
#define HAL_CHECK BOOST_LEAF_CHECK
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/error.hpp`

