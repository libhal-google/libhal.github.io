

# Class hal::move\_interceptor

**template &lt;class T class T&gt;**



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**move\_interceptor**](classhal_1_1move__interceptor.md)



_Use this to perform changes on an object its move constructor is executed._ [More...](#detailed-description)

* `#include <move_interceptor.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  friend | [**T**](#variable-t)  <br> |












































# Detailed Description


This can be used to allow type T to use a default move constructor but allow specific operations to occur beforehand. This is used for moveable objects with callbacks that refer back to their object's address such as the following:  The default move constructor does everything correctly for type T. But the address of "this" in the lambda expression refers to the previous object's address which is no longer valid. Rather than a make a whole move constructor just to update this one callback, the [**move\_interceptor**](classhal_1_1move__interceptor.md) can be used to change the previous object's callback to the new object's address before the move occurs. Then the object's default move constructor is executed.




**Template parameters:**


* `T` - object to intercept the move constructor of 




    
## Public Attributes Documentation




### variable T 

```C++
friend hal::move_interceptor< T >::T;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/move_interceptor.hpp`

