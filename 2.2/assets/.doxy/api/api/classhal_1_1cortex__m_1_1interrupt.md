

# Class hal::cortex\_m::interrupt



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**cortex\_m**](namespacehal_1_1cortex__m.md) **>** [**interrupt**](classhal_1_1cortex__m_1_1interrupt.md)



_Cortex M series interrupt controller._ 

* `#include <interrupt.hpp>`















## Classes

| Type | Name |
| ---: | :--- |
| class | [**exception\_number**](classhal_1_1cortex__m_1_1interrupt_1_1exception__number.md) <br>_represents an interrupt request number along with helper functions for setting up the interrupt controller registers._  |








## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  constexpr size\_t | [**core\_interrupts**](#variable-core_interrupts)   = = 16<br>_The core interrupts that all cortex m3, m4, m7 processors have._  |














## Public Functions

| Type | Name |
| ---: | :--- |
|  void | [**disable**](#function-disable) () <br>_disable interrupt and set the service routine handler to "nop"._  |
|  void | [**enable**](#function-enable) (interrupt\_pointer p\_handler) <br>_enable interrupt and set the service routine handler._  |
|   | [**interrupt**](#function-interrupt) ([**exception\_number**](classhal_1_1cortex__m_1_1interrupt_1_1exception__number.md) p\_id) <br>_Construct a new interrupt object._  |
|  bool | [**verify\_vector\_enabled**](#function-verify_vector_enabled) (interrupt\_pointer p\_handler) <br>_determine if a particular handler has been put into the interrupt vector table._  |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  void | [**disable\_interrupts**](#function-disable_interrupts) () <br> |
|  void | [**enable\_interrupts**](#function-enable_interrupts) () <br> |
|  const std::span&lt; interrupt\_pointer &gt; | [**get\_vector\_table**](#function-get_vector_table) () <br>_Get a reference to interrupt vector table object._  |
|  void | [**initialize**](#function-initialize) () <br>_Initializes the interrupt vector table._  |
|  void | [**nop**](#function-nop) () <br>_Place holder interrupt that performs no work._  |
|  void | [**reinitialize**](#function-reinitialize) () <br>_Reinitialize vector table._  |


























## Public Static Attributes Documentation




### variable core\_interrupts 

```C++
constexpr size_t hal::cortex_m::interrupt::core_interrupts;
```



## Public Functions Documentation




### function disable 

_disable interrupt and set the service routine handler to "nop"._ 
```C++
void hal::cortex_m::interrupt::disable () 
```



If the IRQ is invalid, then nothing happens. 


        



### function enable 

_enable interrupt and set the service routine handler._ 
```C++
void hal::cortex_m::interrupt::enable (
    interrupt_pointer p_handler
) 
```





**Parameters:**


* `p_handler` - the interrupt service routine handler to be executed when the hardware interrupt is fired. 




        



### function interrupt 

_Construct a new interrupt object._ 
```C++
explicit hal::cortex_m::interrupt::interrupt (
    exception_number p_id
) 
```





**Parameters:**


* `p_id` - interrupt to configure 




        



### function verify\_vector\_enabled 

_determine if a particular handler has been put into the interrupt vector table._ 
```C++
bool hal::cortex_m::interrupt::verify_vector_enabled (
    interrupt_pointer p_handler
) 
```



Generally used by unit testing code.




**Parameters:**


* `p_handler` - the handler to check against 



**Returns:**

true - the handler is equal to the handler in the table 




**Returns:**

false - the handler is not at this index in the table 





        
## Public Static Functions Documentation




### function disable\_interrupts 

```C++
static void hal::cortex_m::interrupt::disable_interrupts () 
```






### function enable\_interrupts 

```C++
static void hal::cortex_m::interrupt::enable_interrupts () 
```






### function get\_vector\_table 

_Get a reference to interrupt vector table object._ 
```C++
static const std::span< interrupt_pointer > hal::cortex_m::interrupt::get_vector_table () 
```





**Returns:**

const std::span&lt;interrupt\_pointer&gt; - interrupt vector table 





        



### function initialize 

_Initializes the interrupt vector table._ 
```C++
template<size_t VectorCount>
static inline void hal::cortex_m::interrupt::initialize () 
```



This template function does the following:
* Statically allocates a 512-byte aligned an interrupt vector table the size of VectorCount.
* Set the default handlers for all interrupt vectors to the "nop" function which does nothing
* Set vector\_table span to the statically allocated vector table.
* Finally it relocates the system's interrupt vector table away from the hard coded vector table in ROM/Flash memory to the statically allocated table in RAM.




Internally, this function checks if it has been called before and will simply return early if so. Making this function safe to call multiple times so long as the VectorCount template parameter is the same with each invocation.


Calling this function with differing VectorCount values will result in multiple statically allocated interrupt vector tables, which will simply waste space in RAM. Only the first call is used as the IVT.




**Template parameters:**


* `VectorCount` - the number of interrupts available for this system 




        



### function nop 

```C++
static void hal::cortex_m::interrupt::nop () 
```






### function reinitialize 

_Reinitialize vector table._ 
```C++
template<size_t VectorCount>
static inline void hal::cortex_m::interrupt::reinitialize () 
```



Will reset the entries of the vector table. Careful to not use this after any drivers have already put entries on to the vector table. This will also disable all interrupts currently enabled on the system.




**Template parameters:**


* `VectorCount` - the number of interrupts available for this system 




        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-armcortex/interrupt.hpp`

