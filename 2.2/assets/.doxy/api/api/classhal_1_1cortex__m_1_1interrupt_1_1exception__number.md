

# Class hal::cortex\_m::interrupt::exception\_number



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**cortex\_m**](namespacehal_1_1cortex__m.md) **>** [**interrupt**](classhal_1_1cortex__m_1_1interrupt.md) **>** [**exception\_number**](classhal_1_1cortex__m_1_1interrupt_1_1exception__number.md)



_represents an interrupt request number along with helper functions for setting up the interrupt controller registers._ 

* `#include <interrupt.hpp>`























## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  constexpr uint32\_t | [**enable\_mask\_code**](#variable-enable_mask_code)   = = 0x1F<br>_Lower 5 bits indicate which bit within the 32-bit word is the enable bit._  |
|  constexpr uint32\_t | [**index\_position**](#variable-index_position)   = = 5<br>_Bits 5 and above represent which 32-bit word in the iser and icer arrays IRQs enable bit resides._  |














## Public Functions

| Type | Name |
| ---: | :--- |
|  constexpr bool | [**default\_enabled**](#function-default_enabled) () const<br>_Determines if the irq is within the range of ARM._  |
|  constexpr std::uint32\_t | [**enable\_mask**](#function-enable_mask) () const<br>_return a mask with a 1 bit in the enable position for this_ [_**exception\_number**_](classhal_1_1cortex__m_1_1interrupt_1_1exception__number.md) _._ |
|  constexpr | [**exception\_number**](#function-exception_number-12) (std::uint16\_t p\_id) <br>_construct an_ [_**exception\_number**_](classhal_1_1cortex__m_1_1interrupt_1_1exception__number.md) _from an int_ |
|  constexpr | [**exception\_number**](#function-exception_number-22) ([**exception\_number**](classhal_1_1cortex__m_1_1interrupt_1_1exception__number.md) & p\_id) = default<br> |
|  constexpr std::uint16\_t | [**get\_event\_number**](#function-get_event_number) () <br> |
|  bool | [**is\_valid**](#function-is_valid) () const<br>_determines if the irq is within bounds of the interrupt vector table._  |
|  constexpr [**exception\_number**](classhal_1_1cortex__m_1_1interrupt_1_1exception__number.md) & | [**operator=**](#function-operator) ([**exception\_number**](classhal_1_1cortex__m_1_1interrupt_1_1exception__number.md) & p\_id) = default<br> |
|  constexpr std::uint32\_t | [**register\_index**](#function-register_index) () const<br>_the enable bit for this interrupt resides within one of the 32-bit registers within the "iser" and "icer" arrays. This function will return the index of which 32-bit register contains the enable bit._  |
|  constexpr std::uint32\_t | [**to\_irq\_number**](#function-to_irq_number) () const<br> |
|  constexpr size\_t | [**vector\_index**](#function-vector_index) () const<br>_Provides the index within the IVT._  |




























## Public Static Attributes Documentation




### variable enable\_mask\_code 

```C++
constexpr uint32_t hal::cortex_m::interrupt::exception_number::enable_mask_code;
```






### variable index\_position 

```C++
constexpr uint32_t hal::cortex_m::interrupt::exception_number::index_position;
```



## Public Functions Documentation




### function default\_enabled 

_Determines if the irq is within the range of ARM._ 
```C++
inline constexpr bool hal::cortex_m::interrupt::exception_number::default_enabled () const
```





**Returns:**

true - irq is enabled by default 




**Returns:**

false - irq must be enabled to work 





        



### function enable\_mask 

_return a mask with a 1 bit in the enable position for this_ [_**exception\_number**_](classhal_1_1cortex__m_1_1interrupt_1_1exception__number.md) _._
```C++
inline constexpr std::uint32_t hal::cortex_m::interrupt::exception_number::enable_mask () const
```





**Returns:**

constexpr std::uint32\_t - enable mask 





        



### function exception\_number [1/2]

_construct an_ [_**exception\_number**_](classhal_1_1cortex__m_1_1interrupt_1_1exception__number.md) _from an int_
```C++
inline constexpr hal::cortex_m::interrupt::exception_number::exception_number (
    std::uint16_t p_id
) 
```





**Parameters:**


* `p_id` - interrupt request number. If this value is beyond the bounds of the interrupt vector table, meaning it is an invalid exception number, then all operations will do nothing. 




        



### function exception\_number [2/2]

```C++
constexpr hal::cortex_m::interrupt::exception_number::exception_number (
    exception_number & p_id
) = default
```






### function get\_event\_number 


```C++
inline constexpr std::uint16_t hal::cortex_m::interrupt::exception_number::get_event_number () 
```





**Returns:**

constexpr std::uint16\_t - the interrupt request number 





        



### function is\_valid 

_determines if the irq is within bounds of the interrupt vector table._ 
```C++
inline bool hal::cortex_m::interrupt::exception_number::is_valid () const
```





**Returns:**

true - is a valid interrupt for this system 




**Returns:**

false - this interrupt is beyond the range of valid interrupts 





        



### function operator= 

```C++
constexpr exception_number & hal::cortex_m::interrupt::exception_number::operator= (
    exception_number & p_id
) = default
```






### function register\_index 

_the enable bit for this interrupt resides within one of the 32-bit registers within the "iser" and "icer" arrays. This function will return the index of which 32-bit register contains the enable bit._ 
```C++
inline constexpr std::uint32_t hal::cortex_m::interrupt::exception_number::register_index () const
```





**Returns:**

constexpr std::uint32\_t - array index 





        



### function to\_irq\_number 

```C++
inline constexpr std::uint32_t hal::cortex_m::interrupt::exception_number::to_irq_number () const
```






### function vector\_index 

_Provides the index within the IVT._ 
```C++
inline constexpr size_t hal::cortex_m::interrupt::exception_number::vector_index () const
```





**Returns:**

constexpr size\_t - the index position 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-armcortex/interrupt.hpp`

