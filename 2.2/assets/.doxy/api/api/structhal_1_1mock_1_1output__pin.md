

# Struct hal::mock::output\_pin



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**mock**](namespacehal_1_1mock.md) **>** [**output\_pin**](structhal_1_1mock_1_1output__pin.md)



_mock output pin for use in unit tests and simulations_ 

* `#include <output_pin.hpp>`



Inherits the following classes: [hal::output\_pin](classhal_1_1output__pin.md)






















## Public Attributes

| Type | Name |
| ---: | :--- |
|  [**spy\_handler**](classhal_1_1spy__handler.md)&lt; [**settings**](structhal_1_1output__pin_1_1settings.md) &gt; | [**spy\_configure**](#variable-spy_configure)  <br>_Spy handler for_ [_**hal::output\_pin::configure()**_](classhal_1_1output__pin.md#function-configure) __ |
|  [**spy\_handler**](classhal_1_1spy__handler.md)&lt; [**level\_t**](structhal_1_1output__pin_1_1level__t.md) &gt; | [**spy\_level**](#variable-spy_level)  <br>_Spy handler for_ [_**hal::output\_pin::level()**_](classhal_1_1output__pin.md#function-level-22) __ |
































## Public Functions

| Type | Name |
| ---: | :--- |
|  void | [**reset**](#function-reset) () <br>_Reset spy information for_ [_**configure()**_](classhal_1_1output__pin.md#function-configure) _and_[_**level()**_](classhal_1_1output__pin.md#function-level-22) __ |


## Public Functions inherited from hal::output_pin

See [hal::output\_pin](classhal_1_1output__pin.md)

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1output__pin_1_1settings.md) & p\_settings) <br>_Configure the output pin to match the settings supplied._  |
|  result&lt; [**set\_level\_t**](structhal_1_1output__pin_1_1set__level__t.md) &gt; | [**level**](#function-level-12) (bool p\_high) <br>_Set the state of the pin._  |
|  result&lt; [**level\_t**](structhal_1_1output__pin_1_1level__t.md) &gt; | [**level**](#function-level-22) () <br>_Read the current state of the output pin._  |
| virtual  | [**~output\_pin**](#function-output_pin) () = default<br> |






















































## Public Attributes Documentation




### variable spy\_configure 

```C++
spy_handler<settings> hal::mock::output_pin::spy_configure;
```






### variable spy\_level 

```C++
spy_handler<level_t> hal::mock::output_pin::spy_level;
```



## Public Functions Documentation




### function reset 

```C++
inline void hal::mock::output_pin::reset () 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-mock/output_pin.hpp`

