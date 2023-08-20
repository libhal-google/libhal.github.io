

# Struct hal::bit\_limits

**template &lt;size\_t BitWidth, std::integral int\_t&gt;**



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**bit\_limits**](structhal_1_1bit__limits.md)



_Similar to std::numeric\_limits&lt;T&gt; except that this object can give properties of integral types of arbitrary bit widths._ [More...](#detailed-description)

* `#include <bit_limits.hpp>`







































## Public Static Functions

| Type | Name |
| ---: | :--- |
|  constexpr int\_t | [**max**](#function-max) () <br>_Get the maximum value available for an integer of_ `BitWidth` _size and that can be stored within_`int_t` _._ |
|  constexpr int\_t | [**min**](#function-min) () <br>_Get the minimum value available for an integer of_ `BitWidth` _size and that can be stored within_`int_t` _._ |


























# Detailed Description




**Template parameters:**


* `BitWidth` - bit width of the value 
* `int_t` - the containing type. Will generate a compile error if the containing type's bit width is smaller than the BitWidth value. 




    
## Public Static Functions Documentation




### function max 

_Get the maximum value available for an integer of_ `BitWidth` _size and that can be stored within_`int_t` _._
```C++
static inline constexpr int_t hal::bit_limits::max () 
```



The final value of the function depends also on the sign of the int type.




**Returns:**

constexpr int\_t maximum value 





        



### function min 

_Get the minimum value available for an integer of_ `BitWidth` _size and that can be stored within_`int_t` _._
```C++
static inline constexpr int_t hal::bit_limits::min () 
```



The final value of the function depends also on the sign of the int type. Unsigned ints simply return zero.




**Returns:**

constexpr int\_t minimum value 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/bit_limits.hpp`

