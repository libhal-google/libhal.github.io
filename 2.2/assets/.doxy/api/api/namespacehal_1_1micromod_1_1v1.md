

# Namespace hal::micromod::v1



[**Namespace List**](namespaces.md) **>** [**hal**](namespacehal.md) **>** [**micromod**](namespacehal_1_1micromod.md) **>** [**v1**](namespacehal_1_1micromod_1_1v1.md)


















## Namespaces

| Type | Name |
| ---: | :--- |
| namespace | [**input**](namespacehal_1_1micromod_1_1v1_1_1input.md) <br> |
| namespace | [**interrupt**](namespacehal_1_1micromod_1_1v1_1_1interrupt.md) <br> |
| namespace | [**output**](namespacehal_1_1micromod_1_1v1_1_1output.md) <br> |
























## Public Functions

| Type | Name |
| ---: | :--- |
|  [**hal::adc**](classhal_1_1adc.md) & | [**a0**](#function-a0) () <br>_Driver for adc pin 0._  |
|  [**hal::adc**](classhal_1_1adc.md) & | [**a1**](#function-a1) () <br>_Driver for adc pin 1._  |
|  [**hal::adc**](classhal_1_1adc.md) & | [**battery**](#function-battery) () <br>_Driver for battery analog signal which is 1/3rd of the VIN voltage._  |
|  [**hal::can**](classhal_1_1can.md) & | [**can**](#function-can) () <br>_Driver for the can bus._  |
|  [**hal::serial**](classhal_1_1serial.md) & | [**console**](#function-console) (std::span&lt; [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_receive\_buffer) <br>_Console serial interface._  |
|  [**hal::dac**](classhal_1_1dac.md) & | [**d0**](#function-d0) () <br>_Driver for dac pin 0._  |
|  [**hal::dac**](classhal_1_1dac.md) & | [**d1**](#function-d1) () <br>_Driver for dac pin 1._  |
|  void | [**enter\_power\_saving\_mode**](#function-enter_power_saving_mode) () <br>_Enter power savings mode for your processor._  |
|  [**hal::i2c**](classhal_1_1i2c.md) & | [**i2c**](#function-i2c) () <br>_Driver for the main_ [_**i2c**_](classhal_1_1i2c.md) _bus._ |
|  [**hal::i2c**](classhal_1_1i2c.md) & | [**i2c1**](#function-i2c1) () <br>_Driver for the alternative_ [_**i2c**_](classhal_1_1i2c.md) _bus 1._ |
|  [**hal::interrupt\_pin**](classhal_1_1interrupt__pin.md) & | [**i2c\_interrupt\_pin**](#function-i2c_interrupt_pin) () <br>_Driver for_ [_**i2c**_](classhal_1_1i2c.md) _interrupt pin._ |
|  void | [**initialize\_platform**](#function-initialize_platform) () <br>_Initialize the system._  |
|  [**hal::output\_pin**](classhal_1_1output__pin.md) & | [**led**](#function-led) () <br>_Driver for the board LED output pin._  |
|  [**hal::pwm**](classhal_1_1pwm.md) & | [**pwm0**](#function-pwm0) () <br>_Driver for pwm pin 0._  |
|  [**hal::pwm**](classhal_1_1pwm.md) & | [**pwm1**](#function-pwm1) () <br>_Driver for pwm pin 1._  |
|  void | [**reset**](#function-reset) () <br>_Resets the microcontroller, restarting the program in the process._  |
|  [**hal::spi**](classhal_1_1spi.md) & | [**spi**](#function-spi) () <br>_Driver for the main spi bus._  |
|  [**hal::spi**](classhal_1_1spi.md) & | [**spi1**](#function-spi1) () <br>_Driver for the alternative spi port 1._  |
|  [**hal::interrupt\_pin**](classhal_1_1interrupt__pin.md) & | [**spi\_interrupt\_pin**](#function-spi_interrupt_pin) () <br>_Driver for spi interrupt pin._  |
|  [**hal::timer**](classhal_1_1timer.md) & | [**system\_timer**](#function-system_timer) () <br>_Get core system timer driver._  |
|  [**hal::serial**](classhal_1_1serial.md) & | [**uart1**](#function-uart1) (std::span&lt; [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_receive\_buffer) <br>_Driver for uart 1 port._  |
|  [**hal::serial**](classhal_1_1serial.md) & | [**uart2**](#function-uart2) (std::span&lt; [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_receive\_buffer) <br>_Driver for uart 0 port._  |
|  [**hal::steady\_clock**](classhal_1_1steady__clock.md) & | [**uptime\_clock**](#function-uptime_clock) () <br>_steady clock to measures the cycles the processor has been up._  |




























## Public Functions Documentation




### function a0 

_Driver for adc pin 0._ 
```C++
hal::adc & hal::micromod::v1::a0 () 
```





**Returns:**

[**hal::adc**](classhal_1_1adc.md)& - Statically allocated analog pin driver. 





        



### function a1 

_Driver for adc pin 1._ 
```C++
hal::adc & hal::micromod::v1::a1 () 
```





**Returns:**

[**hal::adc**](classhal_1_1adc.md)& - Statically allocated analog pin driver. 





        



### function battery 

_Driver for battery analog signal which is 1/3rd of the VIN voltage._ 
```C++
hal::adc & hal::micromod::v1::battery () 
```





**Returns:**

[**hal::adc**](classhal_1_1adc.md)& - Statically allocated battery analog pin driver. 





        



### function can 

_Driver for the can bus._ 
```C++
hal::can & hal::micromod::v1::can () 
```





**Returns:**

[**hal::can**](classhal_1_1can.md)& - statically allocated can driver 





        



### function console 

_Console serial interface._ 
```C++
hal::serial & hal::micromod::v1::console (
    std::span< hal::byte > p_receive_buffer
) 
```



The console does not have to implement an actual serial communication protocol like, uart or rs232. It can be implemented with anything such as usb, [**i2c**](classhal_1_1i2c.md) and spi, or something different. It just needs to follow the [**hal::serial**](classhal_1_1serial.md) interface for writing, reading bytes from the console.




**Parameters:**


* `p_receive_buffer` - The size of the receive buffer for the serial port. Note that subsequent calls to the function will ignore this parameter, thus the first call will set the receive buffer size. Ensure that the lifetime of the buffer is equal to or exceeds the lifetime of the console serial port. 



**Returns:**

[**hal::serial**](classhal_1_1serial.md)& - serial interface to the console 





        



### function d0 

_Driver for dac pin 0._ 
```C++
hal::dac & hal::micromod::v1::d0 () 
```





**Returns:**

[**hal::dac**](classhal_1_1dac.md)& - Statically allocated dac pin driver. 





        



### function d1 

_Driver for dac pin 1._ 
```C++
hal::dac & hal::micromod::v1::d1 () 
```





**Returns:**

[**hal::dac**](classhal_1_1dac.md)& - Statically allocated dac pin driver. 





        



### function enter\_power\_saving\_mode 

_Enter power savings mode for your processor._ 
```C++
void hal::micromod::v1::enter_power_saving_mode () 
```



Generally needs an interrupt to wake up the device from sleep 


        



### function i2c 

_Driver for the main_ [_**i2c**_](classhal_1_1i2c.md) _bus._
```C++
hal::i2c & hal::micromod::v1::i2c () 
```





**Returns:**

[**hal::i2c**](classhal_1_1i2c.md)& - Statically allocated [**i2c**](classhal_1_1i2c.md) driver. 





        



### function i2c1 

_Driver for the alternative_ [_**i2c**_](classhal_1_1i2c.md) _bus 1._
```C++
hal::i2c & hal::micromod::v1::i2c1 () 
```





**Returns:**

[**hal::i2c**](classhal_1_1i2c.md)& - Statically allocated [**i2c**](classhal_1_1i2c.md) driver. 





        



### function i2c\_interrupt\_pin 

_Driver for_ [_**i2c**_](classhal_1_1i2c.md) _interrupt pin._
```C++
hal::interrupt_pin & hal::micromod::v1::i2c_interrupt_pin () 
```



NOTE: that this pin can be used as an interrupt pin for both or either [**i2c**](classhal_1_1i2c.md) buss.




**Returns:**

[**hal::interrupt\_pin**](classhal_1_1interrupt__pin.md)& - Statically allocated interrupt pin driver. 





        



### function initialize\_platform 

_Initialize the system._ 
```C++
void hal::micromod::v1::initialize_platform () 
```



Should be the first API called at the start of main. Typically sets up .data and .bss, heap sections if applicable, interrupt service routine handler and anything else necessary for code to function on the MCU. 


        



### function led 

_Driver for the board LED output pin._ 
```C++
hal::output_pin & hal::micromod::v1::led () 
```





**Returns:**

[**hal::output\_pin**](classhal_1_1output__pin.md)& - Statically allocated output pin driver connected to the LED. 





        



### function pwm0 

_Driver for pwm pin 0._ 
```C++
hal::pwm & hal::micromod::v1::pwm0 () 
```





**Returns:**

[**hal::pwm**](classhal_1_1pwm.md)& - Statically allocated pwm pin driver. 





        



### function pwm1 

_Driver for pwm pin 1._ 
```C++
hal::pwm & hal::micromod::v1::pwm1 () 
```





**Returns:**

[**hal::pwm**](classhal_1_1pwm.md)& - Statically allocated pwm pin driver. 





        



### function reset 

_Resets the microcontroller, restarting the program in the process._ 
```C++
void hal::micromod::v1::reset () 
```



If the application is executed as a program or process on operating system then this function should exit() with the code TBD which will alert the spawner process to rerun the command.


This function must not return. 


        



### function spi 

_Driver for the main spi bus._ 
```C++
hal::spi & hal::micromod::v1::spi () 
```



NOTE: in future iterations of this API, there will exist an sdio port used for talking to SD cards. This port is shared with the future sdio port. Take care to not use this along with the sdio port in the same application as they will conflict with each other resulting in undefined behavior.




**Returns:**

[**hal::spi**](classhal_1_1spi.md)& 





        



### function spi1 

_Driver for the alternative spi port 1._ 
```C++
hal::spi & hal::micromod::v1::spi1 () 
```





**Returns:**

[**hal::spi**](classhal_1_1spi.md)& 





        



### function spi\_interrupt\_pin 

_Driver for spi interrupt pin._ 
```C++
hal::interrupt_pin & hal::micromod::v1::spi_interrupt_pin () 
```



NOTE: that this pin can be used as an interrupt pin for both or either spi ports.




**Returns:**

[**hal::interrupt\_pin**](classhal_1_1interrupt__pin.md)& 





        



### function system\_timer 

_Get core system timer driver._ 
```C++
hal::timer & hal::micromod::v1::system_timer () 
```



Usually used as the system timer for the RTOS




**Returns:**

[**hal::timer**](classhal_1_1timer.md)& - reference to the timer 





        



### function uart1 

_Driver for uart 1 port._ 
```C++
hal::serial & hal::micromod::v1::uart1 (
    std::span< hal::byte > p_receive_buffer
) 
```





**Parameters:**


* `p_receive_buffer` - The size of the receive buffer for the serial port. Note that subsequent calls to the function will ignore this parameter, thus the first call will set the receive buffer size. Ensure that the lifetime of the buffer is equal to or exceeds the lifetime of the uart port. 



**Returns:**

[**hal::serial**](classhal_1_1serial.md)& 





        



### function uart2 

_Driver for uart 0 port._ 
```C++
hal::serial & hal::micromod::v1::uart2 (
    std::span< hal::byte > p_receive_buffer
) 
```





**Parameters:**


* `p_receive_buffer` - The size of the receive buffer for the serial port. Note that subsequent calls to the function will ignore this parameter, thus the first call will set the receive buffer size. Ensure that the lifetime of the buffer is equal to or exceeds the lifetime of the uart port. 



**Returns:**

[**hal::serial**](classhal_1_1serial.md)& 





        



### function uptime\_clock 

_steady clock to measures the cycles the processor has been up._ 
```C++
hal::steady_clock & hal::micromod::v1::uptime_clock () 
```





**Returns:**

[**hal::steady\_clock**](classhal_1_1steady__clock.md)& - system uptime steady clock. 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-micromod/micromod.hpp`

