

# Struct hal::mock::input\_pin



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**mock**](namespacehal_1_1mock.md) **>** [**input\_pin**](structhal_1_1mock_1_1input__pin.md)



_mock_ [_**input\_pin**_](structhal_1_1mock_1_1input__pin.md) _implementation for use in unit tests and simulations._

* `#include <input_pin.hpp>`



Inherits the following classes: [hal::input\_pin](classhal_1_1input__pin.md)






















## Public Attributes

| Type | Name |
| ---: | :--- |
|  [**spy\_handler**](classhal_1_1spy__handler.md)&lt; [**settings**](structhal_1_1input__pin_1_1settings.md) &gt; | [**spy\_configure**](#variable-spy_configure)  <br>_Spy handler for embed:input\_pin::_ [_**configure()**_](classhal_1_1input__pin.md#function-configure) __ |
































## Public Functions

| Type | Name |
| ---: | :--- |
|  void | [**reset**](#function-reset) () <br>_Reset spy information for_ [_**configure()**_](classhal_1_1input__pin.md#function-configure) __ |
|  void | [**set**](#function-set) (std::queue&lt; [**level\_t**](structhal_1_1input__pin_1_1level__t.md) &gt; & p\_levels) <br>_Queues the active levels to be returned for levels()_  |


## Public Functions inherited from hal::input_pin

See [hal::input\_pin](classhal_1_1input__pin.md)

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1input__pin_1_1settings.md) & p\_settings) <br>_Configure the input pin to match the settings supplied._  |
|  result&lt; [**level\_t**](structhal_1_1input__pin_1_1level__t.md) &gt; | [**level**](#function-level) () <br>_Read the state of the input pin._  |
| virtual  | [**~input\_pin**](#function-input_pin) () = default<br> |






















































## Public Attributes Documentation




### variable spy\_configure 

```C++
spy_handler<settings> hal::mock::input_pin::spy_configure;
```



## Public Functions Documentation




### function reset 

```C++
inline void hal::mock::input_pin::reset () 
```






### function set 

_Queues the active levels to be returned for levels()_ 
```C++
inline void hal::mock::input_pin::set (
    std::queue< level_t > & p_levels
) 
```





**Parameters:**


* `p_levels` - queue of actives levels 




        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-mock/input_pin.hpp`

