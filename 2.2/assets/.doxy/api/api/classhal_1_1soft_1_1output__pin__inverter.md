

# Class hal::soft::output\_pin\_inverter



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**soft**](namespacehal_1_1soft.md) **>** [**output\_pin\_inverter**](classhal_1_1soft_1_1output__pin__inverter.md)








Inherits the following classes: [hal::output\_pin](classhal_1_1output__pin.md)






















































## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**output\_pin\_inverter**](#function-output_pin_inverter) ([**hal::output\_pin**](classhal_1_1output__pin.md) & p\_output\_pin) <br> |


## Public Functions inherited from hal::output_pin

See [hal::output\_pin](classhal_1_1output__pin.md)

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1output__pin_1_1settings.md) & p\_settings) <br>_Configure the output pin to match the settings supplied._  |
|  result&lt; [**set\_level\_t**](structhal_1_1output__pin_1_1set__level__t.md) &gt; | [**level**](#function-level-12) (bool p\_high) <br>_Set the state of the pin._  |
|  result&lt; [**level\_t**](structhal_1_1output__pin_1_1level__t.md) &gt; | [**level**](#function-level-22) () <br>_Read the current state of the output pin._  |
| virtual  | [**~output\_pin**](#function-output_pin) () = default<br> |






















































## Public Functions Documentation




### function output\_pin\_inverter 

```C++
hal::soft::output_pin_inverter::output_pin_inverter (
    hal::output_pin & p_output_pin
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/inverter.hpp`

