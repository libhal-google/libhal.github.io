

# Class hal::static\_list

**template &lt;class Object class Object&gt;**



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**static\_list**](classhal_1_1static__list.md)



[_**static\_list**_](classhal_1_1static__list.md) _is a non-owning non-allocating doubly linked list container with O(1) memory utilization._[More...](#detailed-description)

* `#include <static_list.hpp>`















## Classes

| Type | Name |
| ---: | :--- |
| class | [**item**](classhal_1_1static__list_1_1item.md) <br>_Item/node within the static linked list._  |
| class | [**item\_iterator**](classhal_1_1static__list_1_1item__iterator.md) <br>_Iterator for the static list._  |


## Public Types

| Type | Name |
| ---: | :--- |
| typedef const [**item\_iterator**](classhal_1_1static__list_1_1item__iterator.md) | [**const\_iterator**](#typedef-const_iterator)  <br> |
| typedef const value\_type \* | [**const\_pointer**](#typedef-const_pointer)  <br> |
| typedef const Object & | [**const\_reference**](#typedef-const_reference)  <br> |
| typedef std::ptrdiff\_t | [**difference\_type**](#typedef-difference_type)  <br> |
| typedef [**item\_iterator**](classhal_1_1static__list_1_1item__iterator.md) | [**iterator**](#typedef-iterator)  <br> |
| typedef value\_type \* | [**pointer**](#typedef-pointer)  <br> |
| typedef Object & | [**reference**](#typedef-reference)  <br> |
| typedef std::size\_t | [**size\_type**](#typedef-size_type)  <br> |
| typedef Object | [**value\_type**](#typedef-value_type)  <br> |




















## Public Functions

| Type | Name |
| ---: | :--- |
|  constexpr auto | [**begin**](#function-begin-12) () <br> |
|  constexpr auto | [**begin**](#function-begin-22) () const<br> |
|  constexpr auto | [**cbegin**](#function-cbegin) () const<br> |
|  constexpr auto | [**cend**](#function-cend) () const<br> |
|  constexpr bool | [**empty**](#function-empty) () <br> |
|  constexpr auto | [**end**](#function-end-12) () <br> |
|  constexpr auto | [**end**](#function-end-22) () const<br> |
|  constexpr [**static\_list**](classhal_1_1static__list.md) & | [**operator=**](#function-operator) ([**static\_list**](classhal_1_1static__list.md) & p\_other) = delete<br> |
|  constexpr [**static\_list**](classhal_1_1static__list.md) & | [**operator=**](#function-operator_1) ([**static\_list**](classhal_1_1static__list.md) && p\_other) <br> |
|  constexpr [**item**](classhal_1_1static__list_1_1item.md) | [**push\_back**](#function-push_back-13) () <br>_Add default constructed item to the end of the list._  |
|  constexpr [**item**](classhal_1_1static__list_1_1item.md) | [**push\_back**](#function-push_back-23) (const Object & p\_value) <br>_Append item to the end of the static list._  |
|  constexpr [**item**](classhal_1_1static__list_1_1item.md) | [**push\_back**](#function-push_back-33) (Object && p\_value) <br>_Append item to the end of the static list._  |
|  constexpr std::size\_t | [**size**](#function-size) () const<br> |
|  constexpr | [**static\_list**](#function-static_list-13) () <br> |
|  constexpr | [**static\_list**](#function-static_list-23) ([**static\_list**](classhal_1_1static__list.md) & p\_other) = delete<br> |
|  constexpr | [**static\_list**](#function-static_list-33) ([**static\_list**](classhal_1_1static__list.md) && p\_other) <br> |
|   | [**~static\_list**](#function-static_list) () <br> |




























# Detailed Description


Items in the list cannot be destroyed by




**Template parameters:**


* `Object` - The type of the elements. Object must be "MoveAssignable" and "MoveConstructible". 




    
## Public Types Documentation




### typedef const\_iterator 

```C++
using hal::static_list< Object >::const_iterator =  const item_iterator;
```






### typedef const\_pointer 

```C++
using hal::static_list< Object >::const_pointer =  const value_type*;
```






### typedef const\_reference 

```C++
using hal::static_list< Object >::const_reference =  const Object&;
```






### typedef difference\_type 

```C++
using hal::static_list< Object >::difference_type =  std::ptrdiff_t;
```






### typedef iterator 

```C++
using hal::static_list< Object >::iterator =  item_iterator;
```






### typedef pointer 

```C++
using hal::static_list< Object >::pointer =  value_type*;
```






### typedef reference 

```C++
using hal::static_list< Object >::reference =  Object&;
```






### typedef size\_type 

```C++
using hal::static_list< Object >::size_type =  std::size_t;
```






### typedef value\_type 

```C++
using hal::static_list< Object >::value_type =  Object;
```



## Public Functions Documentation




### function begin [1/2]

```C++
inline constexpr auto hal::static_list::begin () 
```






### function begin [2/2]

```C++
inline constexpr auto hal::static_list::begin () const
```






### function cbegin 

```C++
inline constexpr auto hal::static_list::cbegin () const
```






### function cend 

```C++
inline constexpr auto hal::static_list::cend () const
```






### function empty 

```C++
inline constexpr bool hal::static_list::empty () 
```






### function end [1/2]

```C++
inline constexpr auto hal::static_list::end () 
```






### function end [2/2]

```C++
inline constexpr auto hal::static_list::end () const
```






### function operator= 

```C++
constexpr static_list & hal::static_list::operator= (
    static_list & p_other
) = delete
```






### function operator= 

```C++
inline constexpr static_list & hal::static_list::operator= (
    static_list && p_other
) 
```






### function push\_back [1/3]

_Add default constructed item to the end of the list._ 
```C++
inline constexpr item hal::static_list::push_back () 
```



Only works for Object's that support default construction.




**Returns:**

constexpr item - item with default constructed value 





        



### function push\_back [2/3]

_Append item to the end of the static list._ 
```C++
inline constexpr item hal::static_list::push_back (
    const Object & p_value
) 
```





**Parameters:**


* `p_value` - value of node 



**Returns:**

constexpr item - item with constructed value based on the input 





        



### function push\_back [3/3]

_Append item to the end of the static list._ 
```C++
inline constexpr item hal::static_list::push_back (
    Object && p_value
) 
```





**Parameters:**


* `p_value` - value of node 



**Returns:**

constexpr item - item with constructed value based on the input 





        



### function size 

```C++
inline constexpr std::size_t hal::static_list::size () const
```






### function static\_list [1/3]

```C++
inline constexpr hal::static_list::static_list () 
```






### function static\_list [2/3]

```C++
constexpr hal::static_list::static_list (
    static_list & p_other
) = delete
```






### function static\_list [3/3]

```C++
inline constexpr hal::static_list::static_list (
    static_list && p_other
) 
```






### function ~static\_list 

```C++
inline hal::static_list::~static_list () 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/static_list.hpp`

