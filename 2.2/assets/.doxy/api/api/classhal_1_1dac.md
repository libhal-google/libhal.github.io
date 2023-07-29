

# Class hal::dac



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**dac**](classhal_1_1dac.md)



_Digital to Analog Converter (DAC) hardware abstraction interface._ [More...](#detailed-description)

* `#include <dac.hpp>`





Inherited by the following classes: [hal::inert\_dac](classhal_1_1inert__dac.md),  [hal::mock::dac](structhal_1_1mock_1_1dac.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**write\_t**](structhal_1_1dac_1_1write__t.md) <br>_Feedback from writing a voltage to the dac._  |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**write\_t**](structhal_1_1dac_1_1write__t.md) &gt; | [**write**](#function-write) (float p\_percentage) <br>_Set the output voltage of the DAC._  |
| virtual  | [**~dac**](#function-dac) () = default<br> |




























# Detailed Description


Use this interface for devices and peripherals that can create arbitrary analog voltages between a defined Vss (negative reference) and Vcc (positive reference) voltage. 


    
## Public Functions Documentation




### function write 

_Set the output voltage of the DAC._ 
```C++
inline result< write_t > hal::dac::write (
    float p_percentage
) 
```



The input value `p_percentage` is a 32-bit floating point value from 0.0f to +1.0f.


The floating point value is linearly proportional to the output voltage relative to the Vss and Vcc such that if Vss is 0V (gnd) and Vcc is 5V then 0.0 is 0V, 0.25 is 1.25V, 0.445 is 2.225V and 1.0 is 5V.


This function clamps the input value between 0.0f and 1.0f and thus values passed to driver implementations are guaranteed to be within this range. Callers of this function do not need to clamp their values before passing them into this function as it would be redundant. The rationale for doing this at the interface layer is that it allows callers and driver implementors to omit redundant clamping code, reducing code bloat.




**Parameters:**


* `p_percentage` - value from 0.0f to +1.0f representing the proportion of the output voltage from the Vss to Vcc. 



**Returns:**

result&lt;write\_t&gt; - success or failure 





        



### function ~dac 

```C++
virtual hal::dac::~dac () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/dac.hpp`

