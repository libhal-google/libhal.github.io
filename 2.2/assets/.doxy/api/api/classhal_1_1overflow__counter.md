

# Class hal::overflow\_counter

**template &lt;size\_t CountBitWidth&gt;**



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**overflow\_counter**](classhal_1_1overflow__counter.md)



_Extend a counter's count from an arbitrary bit width to 64-bits by detecting overflows in the count. Each detected overflow is added to an overflow counter which is combined with the current count in order create a count up to 64-bits in length._ [More...](#detailed-description)

* `#include <overflow_counter.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|  constexpr void | [**reset**](#function-reset) () <br>_Reset the overflow count back to zero._  |
|  constexpr uint64\_t | [**update**](#function-update) (uint32\_t p\_new\_count) <br>_update the overflow counter, detect if an overflow has occurred, and return the combined_  |




























# Detailed Description




**Template parameters:**


* `CountBitWidth` - the bit width of the counter before the count value overflows. 




    
## Public Functions Documentation




### function reset 

```C++
inline constexpr void hal::overflow_counter::reset () 
```






### function update 

_update the overflow counter, detect if an overflow has occurred, and return the combined_ 
```C++
inline constexpr uint64_t hal::overflow_counter::update (
    uint32_t p_new_count
) 
```





**Parameters:**


* `p_new_count` - must be an increasing value and should only decrease when an overflow event occurs. 



**Returns:**

constexpr uint64\_t - 64-bit count combining the new count value and the overflow count value. 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/overflow_counter.hpp`

