

# Struct hal::mock::servo



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**mock**](namespacehal_1_1mock.md) **>** [**servo**](structhal_1_1mock_1_1servo.md)



_Mock servo implementation for use in unit tests and simulations with a spy function for_ [_**position()**_](classhal_1_1servo.md#function-position) __

* `#include <servo.hpp>`



Inherits the following classes: [hal::servo](classhal_1_1servo.md)






















## Public Attributes

| Type | Name |
| ---: | :--- |
|  [**spy\_handler**](classhal_1_1spy__handler.md)&lt; float &gt; | [**spy\_position**](#variable-spy_position)  <br>_Spy handler for_ [_**hal::servo::position()**_](classhal_1_1servo.md#function-position) __ |
































## Public Functions

| Type | Name |
| ---: | :--- |
|  void | [**reset**](#function-reset) () <br>_Reset spy information for_ [_**position()**_](classhal_1_1servo.md#function-position) __ |


## Public Functions inherited from hal::servo

See [hal::servo](classhal_1_1servo.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**position\_t**](structhal_1_1servo_1_1position__t.md) &gt; | [**position**](#function-position) ([**hal::degrees**](namespacehal.md#typedef-degrees) p\_position) <br>_Set the position of the servo's output shaft._  |
| virtual  | [**~servo**](#function-servo) () = default<br> |






















































## Public Attributes Documentation




### variable spy\_position 

```C++
spy_handler<float> hal::mock::servo::spy_position;
```



## Public Functions Documentation




### function reset 

```C++
inline void hal::mock::servo::reset () 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-mock/servo.hpp`

