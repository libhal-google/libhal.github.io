

# File testing.hpp



[**FileList**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-mock**](dir_24679974995b72317f1fb09ac5dd2fb9.md) **>** [**testing.hpp**](testing_8hpp.md)

[Go to the source code of this file](testing_8hpp_source.md)



* `#include <algorithm>`
* `#include <array>`
* `#include <chrono>`
* `#include <ios>`
* `#include <span>`
* `#include <tuple>`
* `#include <vector>`
* `#include <libhal/error.hpp>`













## Namespaces

| Type | Name |
| ---: | :--- |
| namespace | [**hal**](namespacehal.md) <br> |


## Classes

| Type | Name |
| ---: | :--- |
| class | [**spy\_handler**](classhal_1_1spy__handler.md) &lt;args\_t&gt;<br>_Helper utility for making mocks for class functions that return status._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  std::ostream & | [**operator&lt;&lt;**](#function-operator) (std::ostream & p\_os, const std::chrono::duration&lt; Rep, Period &gt; & p\_duration) <br> |
|  std::ostream & | [**operator&lt;&lt;**](#function-operator_1) (std::ostream & p\_os, const std::array&lt; T, size &gt; & p\_array) <br> |
|  std::ostream & | [**operator&lt;&lt;**](#function-operator_2) (std::ostream & p\_os, const std::span&lt; T &gt; & p\_array) <br> |




























## Public Functions Documentation




### function operator&lt;&lt; 

```C++
template<typename Rep typename Rep, typename Period typename Period>
inline std::ostream & operator<< (
    std::ostream & p_os,
    const std::chrono::duration< Rep, Period > & p_duration
) 
```






### function operator&lt;&lt; 

```C++
template<typename T typename T, size_t size>
inline std::ostream & operator<< (
    std::ostream & p_os,
    const std::array< T, size > & p_array
) 
```






### function operator&lt;&lt; 

```C++
template<typename T typename T>
inline std::ostream & operator<< (
    std::ostream & p_os,
    const std::span< T > & p_array
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-mock/testing.hpp`

