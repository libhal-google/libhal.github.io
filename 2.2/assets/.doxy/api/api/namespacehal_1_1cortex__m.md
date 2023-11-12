

# Namespace hal::cortex\_m



[**Namespace List**](namespaces.md) **>** [**hal**](namespacehal.md) **>** [**cortex\_m**](namespacehal_1_1cortex__m.md)



_libhal drivers for the ARM Cortex-M series of processors_ 
















## Classes

| Type | Name |
| ---: | :--- |
| class | [**dwt\_counter**](classhal_1_1cortex__m_1_1dwt__counter.md) <br>_A counter with a frequency fixed to the CPU clock rate._  |
| class | [**interrupt**](classhal_1_1cortex__m_1_1interrupt.md) <br>_Cortex M series interrupt controller._  |
| class | [**systick\_timer**](classhal_1_1cortex__m_1_1systick__timer.md) <br>_SysTick driver for the ARM Cortex Mx series chips._  |


## Public Types

| Type | Name |
| ---: | :--- |
| typedef void(\*)() | [**interrupt\_pointer**](#typedef-interrupt_pointer)  <br>_Used specifically for defining an interrupt vector table of addresses._  |
| enum  | [**irq**](#enum-irq)  <br>_IRQ numbers for core processor interrupts._  |




















## Public Functions

| Type | Name |
| ---: | :--- |
|  void \* | [**get\_interrupt\_vector\_table\_address**](#function-get_interrupt_vector_table_address) () <br>_Get the address of the systems interrupt vector table._  |
|  void | [**initialize\_bss\_section**](#function-initialize_bss_section) () <br>_Initialize the BSS (uninitialized data section) to all zeros._  |
|  void | [**initialize\_data\_section**](#function-initialize_data_section) () <br>_Initialize the data section of RAM. This should be the first thing called in main() before using any global or statically allocated variables. It can also be called in the startup code before main is called. This is not done by crt0.s (C runtime startup code) because with an OS, when the executable is copied to RAM, the data section is also copied and those same locations can be reused for the application, removing the need to copy the data section. This will also happen if one loads an elf file to an MCU using a debugger. Typically the RAM section, but not BSS, is copied over. But in the case of the MCU without a debugger, the MCU will have to manage coping the contents from ROM to RAM itself. Systems should always assume they haven't been loaded by any means and should set the data section at the start of the application._  |
|  void | [**initialize\_floating\_point\_unit**](#function-initialize_floating_point_unit) () <br>_Enable the floating point unit coprocessor._  |
|  void | [**reset**](#function-reset) () <br>_Request reset from CPU._  |
|  void | [**set\_interrupt\_vector\_table\_address**](#function-set_interrupt_vector_table_address) (void \* p\_table\_location) <br>_Set the address of the systems interrupt vector table._  |
|  void | [**wait\_for\_event**](#function-wait_for_event) () <br>_Executes WFE instruction._  |
|  void | [**wait\_for\_interrupt**](#function-wait_for_interrupt) () <br>_Executes WFI instruction._  |




























## Public Types Documentation




### typedef interrupt\_pointer 

```C++
using hal::cortex_m::interrupt_pointer = typedef void (*)();
```






### enum irq 

```C++
enum hal::cortex_m::irq {
    top_of_stack = 0,
    reset = 1,
    nmi = 2,
    hard_fault = 3,
    memory_management_fault = 4,
    bus_fault = 5,
    usage_fault = 6,
    reserve7 = 7,
    reserve8 = 8,
    reserve9 = 9,
    reserve10 = 10,
    sv_call = 11,
    reserve12 = 12,
    reserve13 = 13,
    pend_sv = 14,
    systick = 15
};
```



## Public Functions Documentation




### function get\_interrupt\_vector\_table\_address 

_Get the address of the systems interrupt vector table._ 
```C++
void * hal::cortex_m::get_interrupt_vector_table_address () 
```



On reset the VTOR register is set to 0x0000'0000 or nullptr.




**Returns:**

void\* - address within VTOR the interrupt vector table relocation register. 





        



### function initialize\_bss\_section 

_Initialize the BSS (uninitialized data section) to all zeros._ 
```C++
inline void hal::cortex_m::initialize_bss_section () 
```



Not required if the C Runtime 0 (crt0.s/.a/.o) is used as a startup routine. 


        



### function initialize\_data\_section 

```C++
inline void hal::cortex_m::initialize_data_section () 
```






### function initialize\_floating\_point\_unit 

_Enable the floating point unit coprocessor._ 
```C++
void hal::cortex_m::initialize_floating_point_unit () 
```



WARNING: If the coprocessor does not exist, as it is optional, a UsageFault will occur. Floating point units are only found within Cortex M4 and above processors. 


        



### function reset 

```C++
void hal::cortex_m::reset () 
```






### function set\_interrupt\_vector\_table\_address 

_Set the address of the systems interrupt vector table._ 
```C++
void hal::cortex_m::set_interrupt_vector_table_address (
    void * p_table_location
) 
```



The interrupt vector table (IVT) is held in ROM which means that, either the interrupt service routines (ISR) had to be defined at compile time making them immutable at runtime, or that each ISR calls a mutable function pointer which can be changed at runtime.


The problem with the first option is that it makes writing and using libraries difficult. Usually requiring updates to the IVT manually by the application designer based on what libraries and drivers the application is using.


The second solution has a problem where the additional another layer of indirection increases interrupt latency. A more critical problem of this approach is that many ISRs take advantage of the state of the system when the ISR runs. For example, context switching in an RTOS needs to be able to see the address of where code was when the interrupt occurred and having an additional point of indirection (i.e. calling a function pointer) will change that location from the task to the ISR that called the context switch function. This will usually result in a fault of some sort.


Creating an interrupt vector table in RAM and relocating the ISRs there consumes RAM space, but gives great flexibility over the table at runtime.




**Parameters:**


* `p_table_location` - address of the interrupt vector table. 




        



### function wait\_for\_event 

_Executes WFE instruction._ 
```C++
void hal::cortex_m::wait_for_event () 
```



The WFE instruction stops the CPU, reducing power, and wakes up on event. 


        



### function wait\_for\_interrupt 

_Executes WFI instruction._ 
```C++
void hal::cortex_m::wait_for_interrupt () 
```



The WFI instruction stops the CPU, reducing power, and wakes up on interrupt. 


        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-armcortex/dwt_counter.hpp`

