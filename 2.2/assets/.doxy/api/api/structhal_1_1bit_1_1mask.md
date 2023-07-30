

# Struct hal::bit::mask



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**bit**](namespacehal_1_1bit.md) **>** [**mask**](structhal_1_1bit_1_1mask.md)


























## Public Attributes

| Type | Name |
| ---: | :--- |
|  std::uint32\_t | [**position**](#variable-position)  <br>_Where the bit mask starts._  |
|  std::uint32\_t | [**width**](#variable-width)  <br>_The number of bits after position contained in the mask._  |
















## Public Functions

| Type | Name |
| ---: | :--- |
|  constexpr bool | [**operator==**](#function-operator) (const [**mask**](structhal_1_1bit_1_1mask.md) & other) <br>_Comparison operator between this mask and another._  |
|  constexpr auto | [**origin**](#function-origin) () const<br>_Convert mask to a integral representation but with bit position at 0._  |
|  constexpr auto | [**value**](#function-value) () const<br>_Convert mask to a integral representation._  |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  consteval [**mask**](structhal_1_1bit_1_1mask.md) | [**from**](#function-from-14) () <br>_Generate, at compile time, a mask that spans the from position1 to position2._  |
|  constexpr [**mask**](structhal_1_1bit_1_1mask.md) | [**from**](#function-from-24) () <br>_Generate, at compile time, a single bit width mask at position._  |
|  consteval [**mask**](structhal_1_1bit_1_1mask.md) | [**from**](#function-from-34) (std::uint32\_t position1, std::uint32\_t position2) <br>_Generate, at compile time, a mask that spans the from position1 to position2._  |
|  constexpr [**mask**](structhal_1_1bit_1_1mask.md) | [**from**](#function-from-44) (std::uint32\_t position) <br>_Generate, at runtime, a single bit width mask at position._  |


























## Public Attributes Documentation




### variable position 

```C++
std::uint32_t hal::bit::mask::position;
```






### variable width 

```C++
std::uint32_t hal::bit::mask::width;
```



## Public Functions Documentation




### function operator== 

_Comparison operator between this mask and another._ 
```C++
inline constexpr bool hal::bit::mask::operator== (
    const mask & other
) 
```





**Parameters:**


* `other` - the other mask to compare against 



**Returns:**

true - the masks are the same 




**Returns:**

false - the masks are not the same 





        



### function origin 

_Convert mask to a integral representation but with bit position at 0._ 
```C++
template<std::unsigned_integral T>
inline constexpr auto hal::bit::mask::origin () const
```



The integral presentation will have 1 bits starting from the position bit up to bit position + width. All other bits will be 0s.


For example:  

**Template parameters:**


* `T` - unsigned integral type to hold the mask 



**Returns:**

constexpr auto - mask value as an unsigned integer 





        



### function value 

_Convert mask to a integral representation._ 
```C++
template<std::unsigned_integral T>
inline constexpr auto hal::bit::mask::value () const
```



The integral presentation will have 1 bits starting from the position bit up to bit position + width. All other bits will be 0s.


For example:  

**Template parameters:**


* `T` - unsigned integral type to hold the mask 



**Returns:**

constexpr auto - mask value as an unsigned integer 





        
## Public Static Functions Documentation




### function from [1/4]

_Generate, at compile time, a mask that spans the from position1 to position2._ 
```C++
template<std::uint32_t position1, std::uint32_t position2>
static inline consteval mask hal::bit::mask::from () 
```



If position1 is the same position2 then the mask will have length of 1 and the bit position will be the value of position1.


position1 and position2 can be in any order so long as they span the distance from the start and end of the masked range.




**Template parameters:**


* `position1` - bit position 1 
* `position2` - bit position 2 



**Returns:**

consteval mask - bit mask represented by the two bit positions 





        



### function from [2/4]

_Generate, at compile time, a single bit width mask at position._ 
```C++
template<std::uint32_t position>
static inline constexpr mask hal::bit::mask::from () 
```





**Template parameters:**


* `position` - the bit to make the mask for 



**Returns:**

constexpr mask - bit mask with the position bit set to position 





        



### function from [3/4]

_Generate, at compile time, a mask that spans the from position1 to position2._ 
```C++
static inline consteval mask hal::bit::mask::from (
    std::uint32_t position1,
    std::uint32_t position2
) 
```



If position1 is the same position2 then the mask will have length of 1 and the bit position will be the value of position1.


position1 and position2 can be in any order so long as they span the distance from the start and end of the masked range.




**Parameters:**


* `position1` - bit position 1 
* `position2` - bit position 2 



**Returns:**

consteval mask - bit mask represented by the two bit positions 





        



### function from [4/4]

_Generate, at runtime, a single bit width mask at position._ 
```C++
static inline constexpr mask hal::bit::mask::from (
    std::uint32_t position
) 
```





**Parameters:**


* `position` - the bit to make the mask for 



**Returns:**

constexpr mask - bit mask with the position bit set to position 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/bit.hpp`

