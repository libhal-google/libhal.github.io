

# Class hal::minimum\_speed\_i2c



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**minimum\_speed\_i2c**](classhal_1_1minimum__speed__i2c.md)



_A_ [_**i2c**_](classhal_1_1i2c.md) _wrapper to ensure that the lowest_[_**i2c**_](classhal_1_1i2c.md) _device frequency is used._

* `#include <i2c_minimum_speed.hpp>`



Inherits the following classes: [hal::i2c](classhal_1_1i2c.md)


























## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  constexpr static auto | [**default\_max\_speed**](#variable-default_max_speed)   = = 2'000'000<br> |






























## Public Functions inherited from hal::i2c

See [hal::i2c](classhal_1_1i2c.md)

| Type | Name |
| ---: | :--- |
|  status | [**configure**](#function-configure) (const [**settings**](structhal_1_1i2c_1_1settings.md) & p\_settings) <br>_Configure_ [_**i2c**_](classhal_1_1i2c.md) _to match the settings supplied._ |
|  result&lt; [**transaction\_t**](structhal_1_1i2c_1_1transaction__t.md) &gt; | [**transaction**](#function-transaction) (hal::byte p\_address, std::span&lt; const hal::byte &gt; p\_data\_out, std::span&lt; hal::byte &gt; p\_data\_in, hal::function\_ref&lt; [**hal::timeout\_function**](namespacehal.md#typedef-timeout_function) &gt; p\_timeout) <br>_perform an_ [_**i2c**_](classhal_1_1i2c.md) _transaction with another device on the bus. The type of transaction depends on values of input parameters. This function will block until the entire transfer is finished._ |
| virtual  | [**~i2c**](#function-i2c) () = default<br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**minimum\_speed\_i2c**](classhal_1_1minimum__speed__i2c.md) &gt; | [**create**](#function-create) ([**hal::i2c**](classhal_1_1i2c.md) & p\_i2c, hertz p\_frequency=default\_max\_speed) <br>_Factory function to create_ [_**minimum\_speed\_i2c**_](classhal_1_1minimum__speed__i2c.md) _object._ |




















































## Public Static Attributes Documentation




### variable default\_max\_speed 

```C++
constexpr static auto hal::minimum_speed_i2c::default_max_speed;
```



## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**minimum\_speed\_i2c**_](classhal_1_1minimum__speed__i2c.md) _object._
```C++
static result< minimum_speed_i2c > hal::minimum_speed_i2c::create (
    hal::i2c & p_i2c,
    hertz p_frequency=default_max_speed
) 
```





**Parameters:**


* `p_i2c` - [**i2c**](classhal_1_1i2c.md) object that the device will use 
* `p_frequency` - the maximum starting frequency the device can use 



**Returns:**

[**minimum\_speed\_i2c**](classhal_1_1minimum__speed__i2c.md) - the configured [**i2c**](classhal_1_1i2c.md) object using the lowest seen frequency 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/i2c_minimum_speed.hpp`

