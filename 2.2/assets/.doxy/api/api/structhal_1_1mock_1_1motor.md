

# Struct hal::mock::motor



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**mock**](namespacehal_1_1mock.md) **>** [**motor**](structhal_1_1mock_1_1motor.md)



_Mock motor implementation for use in unit tests and simulations with a spy function for_ [_**power()**_](classhal_1_1motor.md#function-power) __

* `#include <motor.hpp>`



Inherits the following classes: [hal::motor](classhal_1_1motor.md)






















## Public Attributes

| Type | Name |
| ---: | :--- |
|  [**spy\_handler**](classhal_1_1spy__handler.md)&lt; float &gt; | [**spy\_power**](#variable-spy_power)  <br>_Spy handler for hal::motor::write()_  |
































## Public Functions

| Type | Name |
| ---: | :--- |
|  void | [**reset**](#function-reset) () <br>_Reset spy information for_ [_**power()**_](classhal_1_1motor.md#function-power) __ |


## Public Functions inherited from hal::motor

See [hal::motor](classhal_1_1motor.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**power\_t**](structhal_1_1motor_1_1power__t.md) &gt; | [**power**](#function-power) (float p\_power) <br>_Apply power to the motor._  |
| virtual  | [**~motor**](#function-motor) () = default<br> |






















































## Public Attributes Documentation




### variable spy\_power 

```C++
spy_handler<float> hal::mock::motor::spy_power;
```



## Public Functions Documentation




### function reset 

```C++
inline void hal::mock::motor::reset () 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-mock/motor.hpp`

