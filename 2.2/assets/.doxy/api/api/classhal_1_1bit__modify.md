

# Class hal::bit\_modify

**template &lt;std::unsigned\_integral T&gt;**



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**bit\_modify**](classhal_1_1bit__modify.md)








Inherits the following classes: [hal::bit\_value](classhal_1_1bit__value.md)




























## Public Static Attributes inherited from hal::bit_value

See [hal::bit\_value](classhal_1_1bit__value.md)

| Type | Name |
| ---: | :--- |
|  constexpr std::uint32\_t | [**width**](#variable-width)   = = sizeof(T) \* 8<br> |


























## Public Functions

| Type | Name |
| ---: | :--- |
|  constexpr | [**bit\_modify**](#function-bit_modify) (volatile T & p\_register\_reference) <br> |
|   | [**~bit\_modify**](#function-bit_modify) () <br> |


## Public Functions inherited from hal::bit_value

See [hal::bit\_value](classhal_1_1bit__value.md)

| Type | Name |
| ---: | :--- |
|  constexpr | [**bit\_value**](#function-bit_value) (T p\_initial\_value=0) <br> |
|  constexpr auto & | [**clear**](#function-clear-12) () <br> |
|  constexpr auto & | [**clear**](#function-clear-22) ([**bit\_mask**](structhal_1_1bit__mask.md) p\_field) <br> |
|  constexpr T | [**get**](#function-get) () <br> |
|  constexpr auto & | [**insert**](#function-insert-12) (std::unsigned\_integral auto p\_value) <br> |
|  constexpr auto & | [**insert**](#function-insert-22) ([**bit\_mask**](structhal_1_1bit__mask.md) p\_field, std::unsigned\_integral auto p\_value) <br> |
|  constexpr auto & | [**set**](#function-set-12) () <br> |
|  constexpr auto & | [**set**](#function-set-22) ([**bit\_mask**](structhal_1_1bit__mask.md) p\_field) <br> |
|  constexpr auto | [**to**](#function-to) () <br> |
|  constexpr auto & | [**toggle**](#function-toggle-12) () <br> |
|  constexpr auto & | [**toggle**](#function-toggle-22) ([**bit\_mask**](structhal_1_1bit__mask.md) p\_field) <br> |
















## Protected Attributes inherited from hal::bit_value

See [hal::bit\_value](classhal_1_1bit__value.md)

| Type | Name |
| ---: | :--- |
|  T | [**m\_value**](#variable-m_value)  <br> |






































## Public Functions Documentation




### function bit\_modify 

```C++
inline constexpr hal::bit_modify::bit_modify (
    volatile T & p_register_reference
) 
```






### function ~bit\_modify 

```C++
inline hal::bit_modify::~bit_modify () 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/bit.hpp`

