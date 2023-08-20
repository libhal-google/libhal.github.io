

# Class hal::lpc40::i2c



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**lpc40**](namespacehal_1_1lpc40.md) **>** [**i2c**](classhal_1_1lpc40_1_1i2c.md)








Inherits the following classes: [hal::i2c](classhal_1_1i2c.md)












## Classes

| Type | Name |
| ---: | :--- |
| struct | [**bus\_info**](structhal_1_1lpc40_1_1i2c_1_1bus__info.md) <br> |


## Public Types

| Type | Name |
| ---: | :--- |
| typedef std::span&lt; [**hal::byte**](namespacehal.md#typedef-byte) &gt;::iterator | [**read\_iterator**](#typedef-read_iterator)  <br> |
| typedef std::span&lt; const [**hal::byte**](namespacehal.md#typedef-byte) &gt;::iterator | [**write\_iterator**](#typedef-write_iterator)  <br> |








































## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**i2c**](#function-i2c-13) ([**i2c**](classhal_1_1lpc40_1_1i2c.md) & p\_other) = delete<br> |
|   | [**i2c**](#function-i2c-23) ([**i2c**](classhal_1_1lpc40_1_1i2c.md) && p\_other) <br> |
|  [**i2c**](classhal_1_1lpc40_1_1i2c.md) & | [**operator=**](#function-operator) ([**i2c**](classhal_1_1lpc40_1_1i2c.md) & p\_other) = delete<br> |
|  [**i2c**](classhal_1_1lpc40_1_1i2c.md) & | [**operator=**](#function-operator_1) ([**i2c**](classhal_1_1lpc40_1_1i2c.md) && p\_other) <br> |
| virtual  | [**~i2c**](#function-i2c) () <br> |


## Public Functions inherited from hal::i2c

See [hal::i2c](classhal_1_1i2c.md)

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1i2c_1_1settings.md) & p\_settings) <br>_Configure_ [_**i2c**_](classhal_1_1i2c.md) _to match the settings supplied._ |
|  result&lt; [**transaction\_t**](structhal_1_1i2c_1_1transaction__t.md) &gt; | [**transaction**](#function-transaction) ([**hal::byte**](namespacehal.md#typedef-byte) p\_address, std::span&lt; const [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_data\_out, std::span&lt; [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_data\_in, [**hal::function\_ref**](namespacehal.md#typedef-function_ref)&lt; [**hal::timeout\_function**](namespacehal.md#typedef-timeout_function) &gt; p\_timeout) <br>_perform an_ [_**i2c**_](classhal_1_1i2c.md) _transaction with another device on the bus. The type of transaction depends on values of input parameters. This function will block until the entire transfer is finished._ |
| virtual  | [**~i2c**](#function-i2c) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**i2c**](classhal_1_1lpc40_1_1i2c.md) &gt; | [**get**](#function-get) (std::uint8\_t p\_bus, const [**i2c::settings**](structhal_1_1i2c_1_1settings.md) & p\_settings={}) <br> |




















































## Public Types Documentation




### typedef read\_iterator 

```C++
using hal::lpc40::i2c::read_iterator =  std::span<hal::byte>::iterator;
```






### typedef write\_iterator 

```C++
using hal::lpc40::i2c::write_iterator =  std::span<const hal::byte>::iterator;
```



## Public Functions Documentation




### function i2c [1/3]

```C++
hal::lpc40::i2c::i2c (
    i2c & p_other
) = delete
```






### function i2c [2/3]

```C++
hal::lpc40::i2c::i2c (
    i2c && p_other
) 
```






### function operator= 

```C++
i2c & hal::lpc40::i2c::operator= (
    i2c & p_other
) = delete
```






### function operator= 

```C++
i2c & hal::lpc40::i2c::operator= (
    i2c && p_other
) 
```






### function ~i2c 

```C++
virtual hal::lpc40::i2c::~i2c () 
```



Implements [*hal::i2c::~i2c*](classhal_1_1i2c.md#function-i2c)

## Public Static Functions Documentation




### function get 

```C++
static result< i2c > hal::lpc40::i2c::get (
    std::uint8_t p_bus,
    const i2c::settings & p_settings={}
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-lpc40/i2c.hpp`

