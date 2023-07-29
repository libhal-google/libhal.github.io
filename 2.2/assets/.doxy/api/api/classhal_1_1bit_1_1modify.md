

# Class hal::bit::modify

**template &lt;std::unsigned\_integral T&gt;**



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**bit**](namespacehal_1_1bit.md) **>** [**modify**](classhal_1_1bit_1_1modify.md)








Inherits the following classes: [hal::bit::value](classhal_1_1bit_1_1value.md)




























## Public Static Attributes inherited from hal::bit::value

See [hal::bit::value](classhal_1_1bit_1_1value.md)

| Type | Name |
| ---: | :--- |
|  constexpr std::uint32\_t | [**width**](#variable-width)   = = sizeof(T) \* 8<br> |


























## Public Functions

| Type | Name |
| ---: | :--- |
|  constexpr | [**modify**](#function-modify) (volatile T & p\_register\_reference) <br> |
|   | [**~modify**](#function-modify) () <br> |


## Public Functions inherited from hal::bit::value

See [hal::bit::value](classhal_1_1bit_1_1value.md)

| Type | Name |
| ---: | :--- |
|  constexpr auto & | [**clear**](#function-clear-12) () <br> |
|  constexpr auto & | [**clear**](#function-clear-22) ([**mask**](structhal_1_1bit_1_1mask.md) p\_field) <br> |
|  constexpr T | [**get**](#function-get) () <br> |
|  constexpr auto & | [**insert**](#function-insert-12) (std::unsigned\_integral auto p\_value) <br> |
|  constexpr auto & | [**insert**](#function-insert-22) ([**mask**](structhal_1_1bit_1_1mask.md) p\_field, std::unsigned\_integral auto p\_value) <br> |
|  constexpr auto & | [**set**](#function-set-12) () <br> |
|  constexpr auto & | [**set**](#function-set-22) ([**mask**](structhal_1_1bit_1_1mask.md) p\_field) <br> |
|  constexpr auto | [**to**](#function-to) () <br> |
|  constexpr auto & | [**toggle**](#function-toggle-12) () <br> |
|  constexpr auto & | [**toggle**](#function-toggle-22) ([**mask**](structhal_1_1bit_1_1mask.md) p\_field) <br> |
|  constexpr | [**value**](#function-value) (T p\_initial\_value=0) <br> |
















## Protected Attributes inherited from hal::bit::value

See [hal::bit::value](classhal_1_1bit_1_1value.md)

| Type | Name |
| ---: | :--- |
|  T | [**m\_value**](#variable-m_value)  <br> |






































## Public Functions Documentation




### function modify 

```C++
inline constexpr hal::bit::modify::modify (
    volatile T & p_register_reference
) 
```






### function ~modify 

```C++
inline hal::bit::modify::~modify () 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/bit.hpp`

