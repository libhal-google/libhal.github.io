

# File startup.hpp



[**FileList**](files.md) **>** [**include**](dir_cba0faac6e93618a6e2539705915bd70.md) **>** [**libhal-armcortex**](dir_b3459571a2adf19d50d3ad84e10dbc87.md) **>** [**startup.hpp**](startup_8hpp.md)

[Go to the source code of this file](startup_8hpp_source.md)



* `#include <cstdint>`
* `#include <cstring>`













## Namespaces

| Type | Name |
| ---: | :--- |
| namespace | [**hal**](namespacehal.md) <br>_The foundation of libhal containing, interfaces, utilities and soft drivers._  |
| namespace | [**cortex\_m**](namespacehal_1_1cortex__m.md) <br>_libhal drivers for the ARM Cortex-M series of processors_  |








## Public Attributes

| Type | Name |
| ---: | :--- |
|  uint32\_t | [**\_\_bss\_size**](#variable-__bss_size)  <br>_This is the length of the bss section to write zeros to._  |
|  uint32\_t | [**\_\_bss\_start**](#variable-__bss_start)  <br>_this symbol is placed at the start of the bss section in RAM._  |
|  uint32\_t | [**\_\_data\_size**](#variable-__data_size)  <br>_This is the length of the data to be copied from ROM to RAM._  |
|  uint32\_t | [**\_\_data\_source**](#variable-__data_source)  <br>_this symbol is place at the start of the data contents in ROM. This is where the globally defined values for each statically allocated variable is saved._  |
|  uint32\_t | [**\_\_data\_start**](#variable-__data_start)  <br>_this symbol is placed at the start of the data section in RAM._  |












































## Public Attributes Documentation




### variable \_\_bss\_size 

```C++
uint32_t __bss_size;
```






### variable \_\_bss\_start 

```C++
uint32_t __bss_start;
```






### variable \_\_data\_size 

```C++
uint32_t __data_size;
```






### variable \_\_data\_source 

```C++
uint32_t __data_source;
```






### variable \_\_data\_start 

```C++
uint32_t __data_start;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-armcortex/startup.hpp`

