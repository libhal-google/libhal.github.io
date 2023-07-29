

# File can.hpp



[**FileList**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-mock**](dir_24679974995b72317f1fb09ac5dd2fb9.md) **>** [**can.hpp**](libhal-mock_2can_8hpp.md)

[Go to the source code of this file](libhal-mock_2can_8hpp_source.md)



* `#include "testing.hpp"`
* `#include <libhal/can.hpp>`
* `#include <libhal/functional.hpp>`













## Namespaces

| Type | Name |
| ---: | :--- |
| namespace | [**hal**](namespacehal.md) <br> |
| namespace | [**mock**](namespacehal_1_1mock.md) <br> |


## Classes

| Type | Name |
| ---: | :--- |
| struct | [**can**](structhal_1_1mock_1_1can.md) <br>_Mock can implementation for use in unit tests and simulations._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  std::basic\_ostream&lt; CharT, Traits &gt; & | [**operator&lt;&lt;**](#function-operator) (std::basic\_ostream&lt; CharT, Traits &gt; & p\_ostream, const [**hal::can::message\_t**](structhal_1_1can_1_1message__t.md) & p\_message) <br>_print can::message\_t type using ostreams_  |




























## Public Functions Documentation




### function operator&lt;&lt; 

_print can::message\_t type using ostreams_ 
```C++
template<class CharT class CharT, class Traits class Traits>
std::basic_ostream< CharT, Traits > & operator<< (
    std::basic_ostream< CharT, Traits > & p_ostream,
    const hal::can::message_t & p_message
) 
```



Meant for unit testing, testing and simulation purposes C++ streams, in general, should not be used for any embedded project that will ever have to be used on an MCU due to its memory cost.




**Template parameters:**


* `CharT` - character type 
* `Traits` - ostream traits type 



**Parameters:**


* `p_ostream` - the ostream 
* `p_message` - object to convert to a string 



**Returns:**

std::basic\_ostream&lt;CharT, Traits&gt;& - reference to the ostream 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-mock/can.hpp`

