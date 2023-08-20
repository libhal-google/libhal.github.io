

# Struct hal::bit\_mask



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**bit\_mask**](structhal_1_1bit__mask.md)



_Represents a bit mask of contiguous bits._ 

* `#include <bit.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  std::uint32\_t | [**position**](#variable-position)  <br>_Where the bit mask starts._  |
|  std::uint32\_t | [**width**](#variable-width)  <br>_The number of bits after position contained in the mask._  |
















## Public Functions

| Type | Name |
| ---: | :--- |
|  constexpr bool | [**operator==**](#function-operator) (const [**bit\_mask**](structhal_1_1bit__mask.md) & other) <br>_Comparison operator between this mask and another._  |
|  constexpr auto | [**origin**](#function-origin) () const<br>_Convert_ [_**bit\_mask**_](structhal_1_1bit__mask.md) _to a integral representation but with bit position at 0._ |
|  constexpr auto | [**value**](#function-value) () const<br>_Convert mask to a integral representation._  |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  consteval [**bit\_mask**](structhal_1_1bit__mask.md) | [**from**](#function-from-14) () <br>_Generate, at compile time, a_ [_**bit\_mask**_](structhal_1_1bit__mask.md) _that spans the from position1 to position2._ |
|  constexpr [**bit\_mask**](structhal_1_1bit__mask.md) | [**from**](#function-from-24) () <br>_Generate, at compile time, a single bit width_ [_**bit\_mask**_](structhal_1_1bit__mask.md) _at position._ |
|  consteval [**bit\_mask**](structhal_1_1bit__mask.md) | [**from**](#function-from-34) (std::uint32\_t position1, std::uint32\_t position2) <br>_Generate, at compile time, a_ [_**bit\_mask**_](structhal_1_1bit__mask.md) _that spans the from position1 to position2._ |
|  constexpr [**bit\_mask**](structhal_1_1bit__mask.md) | [**from**](#function-from-44) (std::uint32\_t position) <br>_Generate, at runtime, a single bit width_ [_**bit\_mask**_](structhal_1_1bit__mask.md) _at position._ |


























## Public Attributes Documentation




### variable position 

```C++
std::uint32_t hal::bit_mask::position;
```






### variable width 

```C++
std::uint32_t hal::bit_mask::width;
```



## Public Functions Documentation




### function operator== 

_Comparison operator between this mask and another._ 
```C++
inline constexpr bool hal::bit_mask::operator== (
    const bit_mask & other
) 
```





**Parameters:**


* `other` - the other mask to compare against 



**Returns:**

true - the masks are the same 




**Returns:**

false - the masks are not the same 





        



### function origin 

_Convert_ [_**bit\_mask**_](structhal_1_1bit__mask.md) _to a integral representation but with bit position at 0._
```C++
template<std::unsigned_integral T>
inline constexpr auto hal::bit_mask::origin () const
```



The integral presentation will have 1 bits starting from the position bit up to bit position + width. All other bits will be 0s.


For example:  

**Template parameters:**


* `T` - unsigned integral type to hold the [**bit\_mask**](structhal_1_1bit__mask.md) 



**Returns:**

constexpr auto - [**bit\_mask**](structhal_1_1bit__mask.md) value as an unsigned integer 





        



### function value 

_Convert mask to a integral representation._ 
```C++
template<std::unsigned_integral T>
inline constexpr auto hal::bit_mask::value () const
```



The integral presentation will have 1 bits starting from the position bit up to bit position + width. All other bits will be 0s.


For example:  

**Template parameters:**


* `T` - unsigned integral type to hold the mask 



**Returns:**

constexpr auto - mask value as an unsigned integer 





        
## Public Static Functions Documentation




### function from [1/4]

_Generate, at compile time, a_ [_**bit\_mask**_](structhal_1_1bit__mask.md) _that spans the from position1 to position2._
```C++
template<std::uint32_t position1, std::uint32_t position2>
static inline consteval bit_mask hal::bit_mask::from () 
```



If position1 is the same position2 then the [**bit\_mask**](structhal_1_1bit__mask.md) will have length of 1 and the bit position will be the value of position1.


position1 and position2 can be in any order so long as they span the distance from the start and end of the [**bit\_mask**](structhal_1_1bit__mask.md) range.




**Template parameters:**


* `position1` - bit position 1 
* `position2` - bit position 2 



**Returns:**

consteval [**bit\_mask**](structhal_1_1bit__mask.md) - bit [**bit\_mask**](structhal_1_1bit__mask.md) represented by the two bit positions 





        



### function from [2/4]

_Generate, at compile time, a single bit width_ [_**bit\_mask**_](structhal_1_1bit__mask.md) _at position._
```C++
template<std::uint32_t position>
static inline constexpr bit_mask hal::bit_mask::from () 
```





**Template parameters:**


* `position` - the bit to make the [**bit\_mask**](structhal_1_1bit__mask.md) for 



**Returns:**

constexpr [**bit\_mask**](structhal_1_1bit__mask.md) - bit [**bit\_mask**](structhal_1_1bit__mask.md) with the position bit set to position 





        



### function from [3/4]

_Generate, at compile time, a_ [_**bit\_mask**_](structhal_1_1bit__mask.md) _that spans the from position1 to position2._
```C++
static inline consteval bit_mask hal::bit_mask::from (
    std::uint32_t position1,
    std::uint32_t position2
) 
```



If position1 is the same position2 then the [**bit\_mask**](structhal_1_1bit__mask.md) will have length of 1 and the bit position will be the value of position1.


position1 and position2 can be in any order so long as they span the distance from the start and end of the [**bit\_mask**](structhal_1_1bit__mask.md) range.




**Parameters:**


* `position1` - bit position 1 
* `position2` - bit position 2 



**Returns:**

consteval [**bit\_mask**](structhal_1_1bit__mask.md) - bit [**bit\_mask**](structhal_1_1bit__mask.md) represented by the two bit positions 





        



### function from [4/4]

_Generate, at runtime, a single bit width_ [_**bit\_mask**_](structhal_1_1bit__mask.md) _at position._
```C++
static inline constexpr bit_mask hal::bit_mask::from (
    std::uint32_t position
) 
```





**Parameters:**


* `position` - the bit to make the [**bit\_mask**](structhal_1_1bit__mask.md) for 



**Returns:**

constexpr [**bit\_mask**](structhal_1_1bit__mask.md) - bit [**bit\_mask**](structhal_1_1bit__mask.md) with the position bit set to position 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/bit.hpp`

