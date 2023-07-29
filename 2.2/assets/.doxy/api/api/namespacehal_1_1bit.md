

# Namespace hal::bit



[**Namespace List**](namespaces.md) **>** [**hal**](namespacehal.md) **>** [**bit**](namespacehal_1_1bit.md)




















## Classes

| Type | Name |
| ---: | :--- |
| struct | [**byte\_mask**](structhal_1_1bit_1_1byte__mask.md) &lt;ByteIndex&gt;<br>_Helper for generating byte position masks._  |
| struct | [**mask**](structhal_1_1bit_1_1mask.md) <br> |
| class | [**modify**](classhal_1_1bit_1_1modify.md) &lt;T&gt;<br> |
| struct | [**nibble\_mask**](structhal_1_1bit_1_1nibble__mask.md) &lt;NibbleIndex&gt;<br>_Helper for generating nibble position masks._  |
| class | [**value**](classhal_1_1bit_1_1value.md) &lt;T&gt;<br> |






## Public Attributes

| Type | Name |
| ---: | :--- |
|  constexpr [**hal::bit::mask**](structhal_1_1bit_1_1mask.md) | [**byte\_m**](#variable-byte_m)   = = [**byte\_mask**](structhal_1_1bit_1_1byte__mask.md)&lt;ByteIndex&gt;::[**value**](classhal_1_1bit_1_1value.md)<br>_Shorthand for using_ [_**hal::bit::byte\_mask&lt;N&gt;::value**_](structhal_1_1bit_1_1byte__mask.md#variable-value) _._ |
|  constexpr [**hal::bit::mask**](structhal_1_1bit_1_1mask.md) | [**nibble\_m**](#variable-nibble_m)   = = [**nibble\_mask**](structhal_1_1bit_1_1nibble__mask.md)&lt;NibbleIndex&gt;::[**value**](classhal_1_1bit_1_1value.md)<br>_Shorthand for using hal::bit::nibble\_mask&lt;N&gt;::value._  |
















## Public Functions

| Type | Name |
| ---: | :--- |
|  constexpr auto | [**extract**](#function-extract) (std::unsigned\_integral auto p\_value) <br> |
|  constexpr auto | [**extract**](#function-extract) ([**mask**](structhal_1_1bit_1_1mask.md) p\_field, std::unsigned\_integral auto p\_value) <br> |




























## Public Attributes Documentation




### variable byte\_m 

_Shorthand for using_ [_**hal::bit::byte\_mask&lt;N&gt;::value**_](structhal_1_1bit_1_1byte__mask.md#variable-value) _._
```C++
constexpr hal::bit::mask hal::bit::byte_m;
```





**Template parameters:**


* `ByteIndex` - the byte position to make a mask for 




        



### variable nibble\_m 

_Shorthand for using hal::bit::nibble\_mask&lt;N&gt;::value._ 
```C++
constexpr hal::bit::mask hal::bit::nibble_m;
```





**Template parameters:**


* `NibbleIndex` - the nibble position to make a mask for 




        
## Public Functions Documentation




### function extract 

```C++
template<mask field>
constexpr auto hal::bit::extract (
    std::unsigned_integral auto p_value
) 
```






### function extract 

```C++
constexpr auto hal::bit::extract (
    mask p_field,
    std::unsigned_integral auto p_value
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/bit.hpp`

