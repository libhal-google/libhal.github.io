

# Class hal::static\_list::item



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**static\_list**](classhal_1_1static__list.md) **>** [**item**](classhal_1_1static__list_1_1item.md)



_Item/node within the static linked list._ [More...](#detailed-description)

* `#include <static_list.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|  auto & | [**get**](#function-get-12) () <br> |
|  const auto & | [**get**](#function-get-22) () const<br> |
|  constexpr | [**item**](#function-item-14) ([**static\_list**](classhal_1_1static__list.md) \* p\_list, const Object & p\_object) <br> |
|  constexpr | [**item**](#function-item-24) ([**static\_list**](classhal_1_1static__list.md) \* p\_list, Object && p\_object) <br> |
|  constexpr | [**item**](#function-item-34) ([**item**](classhal_1_1static__list_1_1item.md) & p\_other) = delete<br> |
|  constexpr | [**item**](#function-item-44) ([**item**](classhal_1_1static__list_1_1item.md) && p\_other) <br> |
|  const auto \* | [**list**](#function-list) () const<br> |
|  auto & | [**operator\***](#function-operator) () <br> |
|  const auto & | [**operator\***](#function-operator_1) () const<br> |
|  constexpr [**item**](classhal_1_1static__list_1_1item.md) & | [**operator=**](#function-operator_2) ([**item**](classhal_1_1static__list_1_1item.md) & p\_other) = delete<br> |
|  constexpr [**item**](classhal_1_1static__list_1_1item.md) & | [**operator=**](#function-operator_3) ([**item**](classhal_1_1static__list_1_1item.md) && p\_other) <br> |
|   | [**~item**](#function-item) () <br> |




























# Detailed Description


This object does not allow copies. When moved, the object will determine its new location in memory, and will update the linked list to the new location and invalidate the old location. This ensures that this item's position in memory, if whether returned from a function or relocated in some other way, is always tracked by the list.


An item can only be removed from the list if it is no longer accessible (goes out of scope) or is destructed explicitly (DO NOT DO THIS).


The return value of push\_back MUST be saved to a variable. Failing to do so will result in the object being destructed and removed from the list due to it being inaccessible.  


    
## Public Functions Documentation




### function get [1/2]

```C++
inline auto & hal::static_list::item::get () 
```






### function get [2/2]

```C++
inline const auto & hal::static_list::item::get () const
```






### function item [1/4]

```C++
inline constexpr hal::static_list::item::item (
    static_list * p_list,
    const Object & p_object
) 
```






### function item [2/4]

```C++
inline constexpr hal::static_list::item::item (
    static_list * p_list,
    Object && p_object
) 
```






### function item [3/4]

```C++
constexpr hal::static_list::item::item (
    item & p_other
) = delete
```






### function item [4/4]

```C++
inline constexpr hal::static_list::item::item (
    item && p_other
) 
```






### function list 

```C++
inline const auto * hal::static_list::item::list () const
```






### function operator\* 

```C++
inline auto & hal::static_list::item::operator* () 
```






### function operator\* 

```C++
inline const auto & hal::static_list::item::operator* () const
```






### function operator= 

```C++
constexpr item & hal::static_list::item::operator= (
    item & p_other
) = delete
```






### function operator= 

```C++
inline constexpr item & hal::static_list::item::operator= (
    item && p_other
) 
```






### function ~item 

```C++
inline hal::static_list::item::~item () 
```


## Friends Documentation





### friend item\_iterator 

```C++
class hal::static_list::item::item_iterator (
    item_iterator
) 
```






### friend static\_list 

```C++
class hal::static_list::item::static_list (
    static_list
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/static_list.hpp`

