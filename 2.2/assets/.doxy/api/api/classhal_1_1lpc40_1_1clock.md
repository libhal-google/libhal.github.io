

# Class hal::lpc40::clock



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**lpc40**](namespacehal_1_1lpc40.md) **>** [**clock**](classhal_1_1lpc40_1_1clock.md)



_Allows user code to manipulate and retrieve the various system clocks speeds._ 

* `#include <clock.hpp>`















## Classes

| Type | Name |
| ---: | :--- |
| struct | [**configuration**](structhal_1_1lpc40_1_1clock_1_1configuration.md) <br>_Clock configuration object._  |


## Public Types

| Type | Name |
| ---: | :--- |
| enum uint32\_t | [**flash\_configuration**](#enum-flash_configuration)  <br> |
| enum uint8\_t | [**spifi\_clock\_source**](#enum-spifi_clock_source)  <br>_spifi clock options_  |
| enum uint8\_t | [**usb\_clock\_source**](#enum-usb_clock_source)  <br>_USB oscillator source constants (not used)_  |
| enum uint8\_t | [**usb\_divider**](#enum-usb_divider)  <br>_USB Clock divider constants._  |






## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  constexpr uint32\_t | [**default\_peripheral\_divider**](#variable-default_peripheral_divider)   = = 4<br>_The default clock divider for the peripheral clock._  |
|  constexpr [**hertz**](namespacehal.md#typedef-hertz) | [**irc\_frequency**](#variable-irc_frequency)   = = 12'000'000.0f<br>_The frequency of the internal RC clock and the clock frequency at startup._  |














## Public Functions

| Type | Name |
| ---: | :--- |
|  [**configuration**](structhal_1_1lpc40_1_1clock_1_1configuration.md) & | [**config**](#function-config) () <br>_Get the clock config object._  |
|  [**hertz**](namespacehal.md#typedef-hertz) | [**get\_frequency**](#function-get_frequency) ([**peripheral**](namespacehal_1_1lpc40.md#enum-peripheral) p\_peripheral) <br>_Get the operating frequency of the peripheral._  |
|  status | [**reconfigure\_clocks**](#function-reconfigure_clocks) () <br>_Apply the clock configuration to hardware._  |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  [**clock**](classhal_1_1lpc40_1_1clock.md) & | [**get**](#function-get) () <br>_Get system clock object._  |
|  status | [**maximum**](#function-maximum) ([**hertz**](namespacehal.md#typedef-hertz) p\_external\_crystal\_frequency) <br>_Set the lpc40xx MCU to the maximum clock speed (120MHz) possible._  |


























## Public Types Documentation




### enum flash\_configuration 


```C++
enum hal::lpc40::clock::flash_configuration {
    clock1 = 0b0000 << 12,
    clock2 = 0b0001 << 12,
    clock3 = 0b0010 << 12,
    clock4 = 0b0011 << 12,
    clock5 = 0b0100 << 12,
    clock6 = 0b0101 << 12
};
```



Defines the codes for the flash access clock cycles required based on the CPU clocks speed. 


        



### enum spifi\_clock\_source 

```C++
enum hal::lpc40::clock::spifi_clock_source {
    system_clock = 0b00,
    pll0 = 0b01,
    pll1 = 0b10
};
```






### enum usb\_clock\_source 

```C++
enum hal::lpc40::clock::usb_clock_source {
    system_clock = 0b00,
    pll0 = 0b01,
    pll1 = 0b10
};
```






### enum usb\_divider 

```C++
enum hal::lpc40::clock::usb_divider {
    divide_by1 = 0,
    divide_by2,
    divide_by3,
    divide_by4
};
```



## Public Static Attributes Documentation




### variable default\_peripheral\_divider 

```C++
constexpr uint32_t hal::lpc40::clock::default_peripheral_divider;
```






### variable irc\_frequency 

```C++
constexpr hertz hal::lpc40::clock::irc_frequency;
```



## Public Functions Documentation




### function config 

_Get the clock config object._ 
```C++
configuration & hal::lpc40::clock::config () 
```





**Returns:**

configuration& - reference to configuration object 





        



### function get\_frequency 

_Get the operating frequency of the peripheral._ 
```C++
hertz hal::lpc40::clock::get_frequency (
    peripheral p_peripheral
) 
```





**Parameters:**


* `p_peripheral` - id of the peripheral 



**Returns:**

frequency - operating frequency of the peripheral 





        



### function reconfigure\_clocks 

_Apply the clock configuration to hardware._ 
```C++
status hal::lpc40::clock::reconfigure_clocks () 
```



TODO(#65): explain the set of errors in better detail




**Returns:**

status - success or failure calculations could not be reached. 





        
## Public Static Functions Documentation




### function get 

_Get system clock object._ 
```C++
static clock & hal::lpc40::clock::get () 
```



All peripherals and application code should use this function and clock objects. Additional clock objects should not created outside of unit tests. Doing so will result in multiple objects with shared state.




**Returns:**

clock& - return the system clock object 





        



### function maximum 

_Set the lpc40xx MCU to the maximum clock speed (120MHz) possible._ 
```C++
static status hal::lpc40::clock::maximum (
    hertz p_external_crystal_frequency
) 
```



This function REQUIRES an external crystal to be used.



* CPU clock speed set to 120MHz
* USB clock speed set to 120MHz
* Peripheral clock set to 120MHZ
* SPIFI clock set to 120MHz
* PLL0 is set to 120MHz and used for everything
* PLL1 is disabled and not used






**Parameters:**


* `p_external_crystal_frequency` - frequency of the crystal connected to the XTAL1 & XTAL2 



**Returns:**

status - whether or not the function failed to set the clock speed to the maximum. 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-lpc40/clock.hpp`

