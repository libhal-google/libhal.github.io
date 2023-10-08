

# Class hal::static\_list::item\_iterator



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**static\_list**](classhal_1_1static__list.md) **>** [**item\_iterator**](classhal_1_1static__list_1_1item__iterator.md)



_Iterator for the static list._ [More...](#detailed-description)

* `#include <static_list.hpp>`

















## Public Types

| Type | Name |
| ---: | :--- |
| typedef std::ptrdiff\_t | [**difference\_type**](#typedef-difference_type)  <br> |
| typedef std::bidirectional\_iterator\_tag | [**iterator\_category**](#typedef-iterator_category)  <br> |
| typedef value\_type \* | [**pointer**](#typedef-pointer)  <br> |
| typedef value\_type & | [**reference**](#typedef-reference)  <br> |
| typedef Object | [**value\_type**](#typedef-value_type)  <br> |




















## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**item\_iterator**](#function-item_iterator) ([**item**](classhal_1_1static__list_1_1item.md) \* p\_item, const [**static\_list**](classhal_1_1static__list.md) \* p\_list=nullptr) <br> |
|  bool | [**operator!=**](#function-operator) (const [**item\_iterator**](classhal_1_1static__list_1_1item__iterator.md) & p\_other) const<br> |
|  reference | [**operator\***](#function-operator_1) () <br> |
|  reference | [**operator\***](#function-operator_2) () const<br> |
|  [**item\_iterator**](classhal_1_1static__list_1_1item__iterator.md) | [**operator++**](#function-operator_3) () <br> |
|  [**item\_iterator**](classhal_1_1static__list_1_1item__iterator.md) | [**operator++**](#function-operator_4) (] int p\_other) <br> |
|  [**item\_iterator**](classhal_1_1static__list_1_1item__iterator.md) | [**operator--**](#function-operator_5) () <br> |
|  [**item\_iterator**](classhal_1_1static__list_1_1item__iterator.md) | [**operator--**](#function-operator_6) (] int p\_other) <br> |
|  pointer | [**operator-&gt;**](#function-operator_7) () <br> |
|  pointer | [**operator-&gt;**](#function-operator_8) () const<br> |
|  bool | [**operator==**](#function-operator_9) (const [**item\_iterator**](classhal_1_1static__list_1_1item__iterator.md) & p\_other) const<br> |




























# Detailed Description


Implements the C++ named requirement of "LegacyBidirectionalIterator". 


    
## Public Types Documentation




### typedef difference\_type 

```C++
using hal::static_list< Object >::item_iterator::difference_type =  std::ptrdiff_t;
```






### typedef iterator\_category 

```C++
using hal::static_list< Object >::item_iterator::iterator_category =  std::bidirectional_iterator_tag;
```






### typedef pointer 

```C++
using hal::static_list< Object >::item_iterator::pointer =  value_type*;
```






### typedef reference 

```C++
using hal::static_list< Object >::item_iterator::reference =  value_type&;
```






### typedef value\_type 

```C++
using hal::static_list< Object >::item_iterator::value_type =  Object;
```



## Public Functions Documentation




### function item\_iterator 

```C++
inline explicit hal::static_list::item_iterator::item_iterator (
    item * p_item,
    const static_list * p_list=nullptr
) 
```






### function operator!= 

```C++
inline bool hal::static_list::item_iterator::operator!= (
    const item_iterator & p_other
) const
```






### function operator\* 

```C++
inline reference hal::static_list::item_iterator::operator* () 
```






### function operator\* 

```C++
inline reference hal::static_list::item_iterator::operator* () const
```






### function operator++ 

```C++
inline item_iterator hal::static_list::item_iterator::operator++ () 
```






### function operator++ 

```C++
inline item_iterator hal::static_list::item_iterator::operator++ (
    ] int p_other
) 
```






### function operator-- 

```C++
inline item_iterator hal::static_list::item_iterator::operator-- () 
```






### function operator-- 

```C++
inline item_iterator hal::static_list::item_iterator::operator-- (
    ] int p_other
) 
```






### function operator-&gt; 

```C++
inline pointer hal::static_list::item_iterator::operator-> () 
```






### function operator-&gt; 

```C++
inline pointer hal::static_list::item_iterator::operator-> () const
```






### function operator== 

```C++
inline bool hal::static_list::item_iterator::operator== (
    const item_iterator & p_other
) const
```


## Friends Documentation





### friend static\_list 

```C++
class hal::static_list::item_iterator::static_list (
    static_list
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/static_list.hpp`

