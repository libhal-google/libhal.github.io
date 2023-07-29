

# Class hal::static\_callable&lt; owner\_class, reference\_designator, return\_t(args\_t... p\_args)&gt;

**template &lt;class owner\_class class owner\_class, int reference\_designator, typename return\_t typename return\_t, typename... args\_t&gt;**



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**static\_callable&lt; owner\_class, reference\_designator, return\_t(args\_t... p\_args)&gt;**](classhal_1_1static__callable_3_01owner__class_00_01reference__designator_00_01return__t_07args__t_8_8_8_01p__args_08_4.md)



_Specialization of_ [_**static\_callable**_](classhal_1_1static__callable.md) _with the return type and arguments split up._[More...](#detailed-description)

* `#include <static_callable.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|  auto \* | [**get\_handler**](#function-get_handler) () <br>_Get the static function's address._  |
|   | [**static\_callable**](#function-static_callable) (hal::callback&lt; return\_t(args\_t... p\_args)&gt; p\_callback) <br>_Construct a new static callable object._  |




























# Detailed Description




**Template parameters:**


* `owner_class` see [**static\_callable**](classhal_1_1static__callable.md) 
* `reference_designator` see [**static\_callable**](classhal_1_1static__callable.md) 
* `return_t` function's return type 
* `args_t` function's set of arguments 




    
## Public Functions Documentation




### function get\_handler 

_Get the static function's address._ 
```C++
inline auto * hal::static_callable< owner_class, reference_designator, return_t(args_t... p_args)>::get_handler () 
```





**Returns:**

auto\* - static function's address 





        



### function static\_callable 

_Construct a new static callable object._ 
```C++
inline explicit hal::static_callable< owner_class, reference_designator, return_t(args_t... p_args)>::static_callable (
    hal::callback< return_t(args_t... p_args)> p_callback
) 
```





**Parameters:**


* `p_callback` - when the static callback function is called, it will call this callback 




        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/static_callable.hpp`

