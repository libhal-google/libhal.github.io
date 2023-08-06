

# Struct hal::byte\_mask

**template &lt;size\_t ByteIndex&gt;**



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**byte\_mask**](structhal_1_1byte__mask.md)



_Helper for generating byte position masks._ [More...](#detailed-description)

* `#include <bit.hpp>`























## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  constexpr [**hal::bitmask**](structhal_1_1bitmask.md) | [**value**](#variable-value)   = { .position = ByteIndex, .width = 8 }<br>_Mask value defined at compile time._  |










































# Detailed Description




**Template parameters:**


* `ByteIndex` - the byte position to make a mask for 




    
## Public Static Attributes Documentation




### variable value 

```C++
constexpr hal::bitmask hal::byte_mask< ByteIndex >::value;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/bit.hpp`

