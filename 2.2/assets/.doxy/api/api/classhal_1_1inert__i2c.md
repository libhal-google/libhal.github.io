

# Class hal::inert\_i2c



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**inert\_i2c**](classhal_1_1inert__i2c.md)



_Inert implementation of Inter-integrated Circuit (I2C) hardware._ 

* `#include <inert_i2c.hpp>`



Inherits the following classes: [hal::i2c](classhal_1_1i2c.md)
























































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
|  result&lt; [**inert\_i2c**](classhal_1_1inert__i2c.md) &gt; | [**create**](#function-create) () <br>_Factory function to create_ [_**inert\_i2c**_](classhal_1_1inert__i2c.md) _object._ |




















































## Public Static Functions Documentation




### function create 

_Factory function to create_ [_**inert\_i2c**_](classhal_1_1inert__i2c.md) _object._
```C++
static inline result< inert_i2c > hal::inert_i2c::create () 
```





**Returns:**

result&lt;inert\_i2c&gt; - Constructed [**inert\_i2c**](classhal_1_1inert__i2c.md) object 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-soft/incomplete_drivers/inert_i2c.hpp`

