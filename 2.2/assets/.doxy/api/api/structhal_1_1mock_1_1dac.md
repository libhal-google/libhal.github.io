

# Struct hal::mock::dac



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**mock**](namespacehal_1_1mock.md) **>** [**dac**](structhal_1_1mock_1_1dac.md)



_Mock dac implementation for use in unit tests and simulations with a spy function for_ [_**write()**_](classhal_1_1dac.md#function-write) __

* `#include <dac.hpp>`



Inherits the following classes: [hal::dac](classhal_1_1dac.md)






















## Public Attributes

| Type | Name |
| ---: | :--- |
|  [**spy\_handler**](classhal_1_1spy__handler.md)&lt; float &gt; | [**spy\_write**](#variable-spy_write)  <br>_Spy handler for_ [_**hal::dac::write()**_](classhal_1_1dac.md#function-write) __ |
































## Public Functions

| Type | Name |
| ---: | :--- |
|  void | [**reset**](#function-reset) () <br>_Reset spy information for_ [_**write()**_](classhal_1_1dac.md#function-write) __ |


## Public Functions inherited from hal::dac

See [hal::dac](classhal_1_1dac.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**write\_t**](structhal_1_1dac_1_1write__t.md) &gt; | [**write**](#function-write) (float p\_percentage) <br>_Set the output voltage of the DAC._  |
| virtual  | [**~dac**](#function-dac) () = default<br> |






















































## Public Attributes Documentation




### variable spy\_write 

```C++
spy_handler<float> hal::mock::dac::spy_write;
```



## Public Functions Documentation




### function reset 

```C++
inline void hal::mock::dac::reset () 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-mock/dac.hpp`

