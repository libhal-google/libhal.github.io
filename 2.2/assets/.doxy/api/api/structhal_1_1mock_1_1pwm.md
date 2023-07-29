

# Struct hal::mock::pwm



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**mock**](namespacehal_1_1mock.md) **>** [**pwm**](structhal_1_1mock_1_1pwm.md)



_Mock pwm implementation for use in unit tests and simulations with spy functions for_ [_**frequency()**_](classhal_1_1pwm.md#function-frequency) _and_[_**duty\_cycle()**_](classhal_1_1pwm.md#function-duty_cycle) _._

* `#include <pwm.hpp>`



Inherits the following classes: [hal::pwm](classhal_1_1pwm.md)






















## Public Attributes

| Type | Name |
| ---: | :--- |
|  [**spy\_handler**](classhal_1_1spy__handler.md)&lt; float &gt; | [**spy\_duty\_cycle**](#variable-spy_duty_cycle)  <br>_Spy handler for_ [_**hal::pwm::duty\_cycle()**_](classhal_1_1pwm.md#function-duty_cycle) __ |
|  [**spy\_handler**](classhal_1_1spy__handler.md)&lt; hertz &gt; | [**spy\_frequency**](#variable-spy_frequency)  <br>_Spy handler for_ [_**hal::pwm::frequency()**_](classhal_1_1pwm.md#function-frequency) __ |
































## Public Functions

| Type | Name |
| ---: | :--- |
|  void | [**reset**](#function-reset) () <br>_Reset spy information for both_ [_**frequency()**_](classhal_1_1pwm.md#function-frequency) _and_[_**duty\_cycle()**_](classhal_1_1pwm.md#function-duty_cycle) __ |


## Public Functions inherited from hal::pwm

See [hal::pwm](classhal_1_1pwm.md)

| Type | Name |
| ---: | :--- |
|  result&lt; [**duty\_cycle\_t**](structhal_1_1pwm_1_1duty__cycle__t.md) &gt; | [**duty\_cycle**](#function-duty_cycle) (float p\_duty\_cycle) <br>_Set the pwm waveform duty cycle._  |
|  result&lt; [**frequency\_t**](structhal_1_1pwm_1_1frequency__t.md) &gt; | [**frequency**](#function-frequency) (hertz p\_frequency) <br>_Set the pwm waveform frequency._  |
| virtual  | [**~pwm**](#function-pwm) () = default<br> |






















































## Public Attributes Documentation




### variable spy\_duty\_cycle 

```C++
spy_handler<float> hal::mock::pwm::spy_duty_cycle;
```






### variable spy\_frequency 

```C++
spy_handler<hertz> hal::mock::pwm::spy_frequency;
```



## Public Functions Documentation




### function reset 

```C++
inline void hal::mock::pwm::reset () 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-mock/pwm.hpp`

