

# Class hal::bit::value

**template &lt;std::unsigned\_integral T&gt;**



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**bit**](namespacehal_1_1bit.md) **>** [**value**](classhal_1_1bit_1_1value.md)










Inherited by the following classes: [hal::bit::modify](classhal_1_1bit_1_1modify.md)


















## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  constexpr std::uint32\_t | [**width**](#variable-width)   = = sizeof(T) \* 8<br> |














## Public Functions

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








## Protected Attributes

| Type | Name |
| ---: | :--- |
|  T | [**m\_value**](#variable-m_value)  <br> |




















## Public Static Attributes Documentation




### variable width 

```C++
constexpr std::uint32_t hal::bit::value< T >::width;
```



## Public Functions Documentation




### function clear [1/2]

```C++
template<mask field>
inline constexpr auto & hal::bit::value::clear () 
```






### function clear [2/2]

```C++
inline constexpr auto & hal::bit::value::clear (
    mask p_field
) 
```






### function get 

```C++
inline constexpr T hal::bit::value::get () 
```






### function insert [1/2]

```C++
template<mask field>
inline constexpr auto & hal::bit::value::insert (
    std::unsigned_integral auto p_value
) 
```






### function insert [2/2]

```C++
inline constexpr auto & hal::bit::value::insert (
    mask p_field,
    std::unsigned_integral auto p_value
) 
```






### function set [1/2]

```C++
template<mask field>
inline constexpr auto & hal::bit::value::set () 
```






### function set [2/2]

```C++
inline constexpr auto & hal::bit::value::set (
    mask p_field
) 
```






### function to 

```C++
template<std::integral U>
inline constexpr auto hal::bit::value::to () 
```






### function toggle [1/2]

```C++
template<mask field>
inline constexpr auto & hal::bit::value::toggle () 
```






### function toggle [2/2]

```C++
inline constexpr auto & hal::bit::value::toggle (
    mask p_field
) 
```






### function value 

```C++
inline constexpr hal::bit::value::value (
    T p_initial_value=0
) 
```



## Protected Attributes Documentation




### variable m\_value 

```C++
T hal::bit::value< T >::m_value;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/bit.hpp`

