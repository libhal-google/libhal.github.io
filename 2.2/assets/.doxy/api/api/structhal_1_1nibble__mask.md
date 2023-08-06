

# Struct hal::nibble\_mask

**template &lt;size\_t NibbleIndex&gt;**



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**nibble\_mask**](structhal_1_1nibble__mask.md)



_Helper for generating nibble position masks._ [More...](#detailed-description)

* `#include <bit.hpp>`























## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  constexpr [**hal::bitmask**](structhal_1_1bitmask.md) | [**value**](#variable-value)   = { .position = NibbleIndex, .width = 4 }<br> |










































# Detailed Description




**Template parameters:**


* `NibbleIndex` - the nibble position to make a mask for 




    
## Public Static Attributes Documentation




### variable value 

```C++
constexpr hal::bitmask hal::nibble_mask< NibbleIndex >::value;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/bit.hpp`

