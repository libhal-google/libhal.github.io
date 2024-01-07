

# Struct hal::error::invalid\_option\_t

**template &lt;auto... options&gt;**



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**error**](namespacehal_1_1error.md) **>** [**invalid\_option\_t**](structhal_1_1error_1_1invalid__option__t.md)



_Used for defining static\_asserts that should always fail, but only if the static\_assert line is hit via_ `if constexpr` _control block. Prefer to NOT use this directly but to use_`invalid_option` _instead._[More...](#detailed-description)

* `#include <error.hpp>`



Inherits the following classes: std::false_type






























































# Detailed Description




**Template parameters:**


* `options` ignored by the application but needed to create a non-trivial specialization of this class which allows its usage in static\_assert. 




    

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/error.hpp`

