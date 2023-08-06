

# Class hal::i2c



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**i2c**](classhal_1_1i2c.md)



_Inter-integrated Circuit (I2C) hardware abstract interface._ [More...](#detailed-description)

* `#include <i2c.hpp>`





Inherited by the following classes: [hal::lpc40::i2c](classhal_1_1lpc40_1_1i2c.md),  [hal::soft::minimum\_speed\_i2c](classhal_1_1soft_1_1minimum__speed__i2c.md)










## Classes

| Type | Name |
| ---: | :--- |
| struct | [**settings**](structhal_1_1i2c_1_1settings.md) <br>_Generic settings for a standard I2C device._  |
| struct | [**transaction\_t**](structhal_1_1i2c_1_1transaction__t.md) <br>_Feedback from performing a transaction on the_ [_**i2c**_](classhal_1_1i2c.md) _bus._ |






















## Public Functions

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1i2c_1_1settings.md) & p\_settings) <br>_Configure_ [_**i2c**_](classhal_1_1i2c.md) _to match the settings supplied._ |
|  result&lt; [**transaction\_t**](structhal_1_1i2c_1_1transaction__t.md) &gt; | [**transaction**](#function-transaction) ([**hal::byte**](namespacehal.md#typedef-byte) p\_address, std::span&lt; const [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_data\_out, std::span&lt; [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_data\_in, [**hal::function\_ref**](namespacehal.md#typedef-function_ref)&lt; [**hal::timeout\_function**](namespacehal.md#typedef-timeout_function) &gt; p\_timeout) <br>_perform an_ [_**i2c**_](classhal_1_1i2c.md) _transaction with another device on the bus. The type of transaction depends on values of input parameters. This function will block until the entire transfer is finished._ |
| virtual  | [**~i2c**](#function-i2c) () = default<br> |




























# Detailed Description


Also known as Two Wire Interface (TWI) communication protocol. This is a very commonly used protocol for communication with sensors and peripheral devices because it only requires two connections SDA (data signal) and SCL (clock signal). This is possible because the protocol for I2C is addressable. 


    
## Public Functions Documentation




### function configure 

_Configure_ [_**i2c**_](classhal_1_1i2c.md) _to match the settings supplied._
```C++
inline status hal::i2c::configure (
    const settings & p_settings
) 
```





**Parameters:**


* `p_settings` - settings to apply to [**i2c**](classhal_1_1i2c.md) driver 



**Returns:**

status - success or failure 




**Exception:**


* `std::errc::invalid_argument` if the settings could not be achieved. 




        



### function transaction 

_perform an_ [_**i2c**_](classhal_1_1i2c.md) _transaction with another device on the bus. The type of transaction depends on values of input parameters. This function will block until the entire transfer is finished._
```C++
inline result< transaction_t > hal::i2c::transaction (
    hal::byte p_address,
    std::span< const hal::byte > p_data_out,
    std::span< hal::byte > p_data_in,
    hal::function_ref < hal::timeout_function > p_timeout
) 
```



Performing Write, Read and Write-Then-Read transactions depends on which span for data\_out and data\_in are set to null.



* For write transactions, pass p\_data\_in as an empty span `std::span< hal::byte >{}` and pass a buffer to p\_data\_out.
* For read transactions, pass p\_data\_out as an empty span `std::span<const  hal::byte >{}` and pass a buffer to p\_data\_in.
* For write-then-read transactions, pass a buffer for both p\_data\_in p\_data\_out.
* If both p\_data\_in and p\_data\_out are empty, simply do nothing and return success.




In the event of arbitration loss, this function will wait for the bus to become free and try again. Arbitration loss means that during the address phase of a transaction 1 or more [**i2c**](classhal_1_1i2c.md) bus controllers attempted to perform an transaction and one of the [**i2c**](classhal_1_1i2c.md) bus controllers, that isn't this one won out.




**Parameters:**


* `p_address` 7-bit address of the device you want to communicate with. To perform a transaction with a 10-bit address, this parameter must be the address upper byte of the 10-bit address OR'd with 0b1111'0000 (the 10-bit address indicator). The lower byte of the address must be contained in the first byte of the p\_data\_out span. 
* `p_data_out` data to be written to the addressed device. Set to nullptr with length zero in order to skip writing. 
* `p_data_in` buffer to store read data from the addressed device. Set to nullptr with length 0 in order to skip reading. 
* `p_timeout` callable which notifies the [**i2c**](classhal_1_1i2c.md) driver that it has run out of time to perform the transaction and must stop and return control to the caller. 



**Returns:**

result&lt;transaction\_t&gt; - success or failure 




**Exception:**


* `std::errc::io_error` indicates that the [**i2c**](classhal_1_1i2c.md) lines were put into an invalid state during the transaction due to interference, misconfiguration of the [**i2c**](classhal_1_1i2c.md) peripheral or the addressed device or something else. 
* `std::errc::no_such_device_or_address` indicates that no devices on the bus acknowledge the address in this transaction, which could mean that the device is not connected to the bus, is not powered, not available to respond, broken or many other possible outcomes. 
* `std::errc::timed_out` if the transaction exceeded its time allotment indicated by p\_timeout. 




        



### function ~i2c 

```C++
virtual hal::i2c::~i2c () = default
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/i2c.hpp`

