

# Class hal::bit\_value

**template &lt;std::unsigned\_integral T&gt;**



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**bit\_value**](classhal_1_1bit__value.md)










Inherited by the following classes: [hal::bit\_modify](classhal_1_1bit__modify.md)


















## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  constexpr std::uint32\_t | [**width**](#variable-width)   = = sizeof(T) \* 8<br> |














## Public Functions

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








## Protected Attributes

| Type | Name |
| ---: | :--- |
|  T | [**m\_value**](#variable-m_value)  <br> |




















## Public Static Attributes Documentation




### variable width 

```C++
constexpr std::uint32_t hal::bit_value< T >::width;
```



## Public Functions Documentation




### function bit\_value 

```C++
inline constexpr hal::bit_value::bit_value (
    T p_initial_value=0
) 
```






### function clear [1/2]

```C++
template<bit_mask field>
inline constexpr auto & hal::bit_value::clear () 
```






### function clear [2/2]

```C++
inline constexpr auto & hal::bit_value::clear (
    bit_mask p_field
) 
```






### function get 

```C++
inline constexpr T hal::bit_value::get () 
```






### function insert [1/2]

```C++
template<bit_mask field>
inline constexpr auto & hal::bit_value::insert (
    std::unsigned_integral auto p_value
) 
```






### function insert [2/2]

```C++
inline constexpr auto & hal::bit_value::insert (
    bit_mask p_field,
    std::unsigned_integral auto p_value
) 
```






### function set [1/2]

```C++
template<bit_mask field>
inline constexpr auto & hal::bit_value::set () 
```






### function set [2/2]

```C++
inline constexpr auto & hal::bit_value::set (
    bit_mask p_field
) 
```






### function to 

```C++
template<std::integral U>
inline constexpr auto hal::bit_value::to () 
```






### function toggle [1/2]

```C++
template<bit_mask field>
inline constexpr auto & hal::bit_value::toggle () 
```






### function toggle [2/2]

```C++
inline constexpr auto & hal::bit_value::toggle (
    bit_mask p_field
) 
```



## Protected Attributes Documentation




### variable m\_value 

```C++
T hal::bit_value< T >::m_value;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/bit.hpp`

