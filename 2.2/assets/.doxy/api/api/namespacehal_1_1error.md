

# Namespace hal::error



[**Namespace List**](namespaces.md) **>** [**hal**](namespacehal.md) **>** [**error**](namespacehal_1_1error.md)




















## Classes

| Type | Name |
| ---: | :--- |
| struct | [**invalid\_option\_t**](structhal_1_1error_1_1invalid__option__t.md) &lt;options&gt;<br>_Used for defining static\_asserts that should always fail, but only if the static\_assert line is hit via_ `if constexpr` _control block. Prefer to NOT use this directly but to use_`invalid_option` _instead._ |






## Public Attributes

| Type | Name |
| ---: | :--- |
|  constexpr bool | [**invalid\_option**](#variable-invalid_option)   = = [**invalid\_option\_t**](structhal_1_1error_1_1invalid__option__t.md)&lt;options...&gt;::value<br>_Helper definition to simplify the usage of_ [_**invalid\_option\_t**_](structhal_1_1error_1_1invalid__option__t.md) _._ |












































## Public Attributes Documentation




### variable invalid\_option 

_Helper definition to simplify the usage of_ [_**invalid\_option\_t**_](structhal_1_1error_1_1invalid__option__t.md) _._
```C++
constexpr bool hal::error::invalid_option;
```





**Template parameters:**


* `options` ignored by the application but needed to create a non-trivial specialization of this class which allows its usage in static\_assert. 




        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/error.hpp`

