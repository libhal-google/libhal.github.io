

# File comparison.hpp



[**FileList**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-util**](dir_5e94bd3e75b6b11eff60149e0bc5664b.md) **>** [**comparison.hpp**](comparison_8hpp.md)

[Go to the source code of this file](comparison_8hpp_source.md)



* `#include <algorithm>`
* `#include <array>`
* `#include <span>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|  constexpr bool | [**operator!=**](#function-operator) (const std::array&lt; T, size &gt; & p\_array, const std::span&lt; T &gt; & p\_span) <br> |
|  constexpr bool | [**operator!=**](#function-operator_1) (const std::span&lt; T &gt; & p\_span, const std::array&lt; T, size &gt; & p\_array) <br> |
|  constexpr bool | [**operator==**](#function-operator_2) (const std::array&lt; T, size &gt; & p\_array, const std::span&lt; T &gt; & p\_span) <br> |
|  constexpr bool | [**operator==**](#function-operator_3) (const std::span&lt; T &gt; & p\_span, const std::array&lt; T, size &gt; & p\_array) <br> |




























## Public Functions Documentation




### function operator!= 

```C++
template<typename T typename T, size_t size>
constexpr bool operator!= (
    const std::array< T, size > & p_array,
    const std::span< T > & p_span
) 
```






### function operator!= 

```C++
template<typename T typename T, size_t size>
constexpr bool operator!= (
    const std::span< T > & p_span,
    const std::array< T, size > & p_array
) 
```






### function operator== 

```C++
template<typename T typename T, size_t size>
constexpr bool operator== (
    const std::array< T, size > & p_array,
    const std::span< T > & p_span
) 
```






### function operator== 

```C++
template<typename T typename T, size_t size>
constexpr bool operator== (
    const std::span< T > & p_span,
    const std::array< T, size > & p_array
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/comparison.hpp`

