

# Class hal::spy\_handler

**template &lt;typename... args\_t&gt;**



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**spy\_handler**](classhal_1_1spy__handler.md)



_Helper utility for making mocks for class functions that return status._ [More...](#detailed-description)

* `#include <testing.hpp>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|  const auto & | [**call\_history**](#function-call_history) () const<br>_Return the call history of the save function._  |
|  const auto & | [**history**](#function-history) (size\_t p\_call) const<br>_Return argument from one of call history parameters._  |
|  status | [**record**](#function-record) (args\_t... p\_args) <br>_Record the arguments of a function being spied on._  |
|  void | [**reset**](#function-reset) () <br>_Reset call recordings and turns off error trigger._  |
|  void | [**trigger\_error\_on\_call**](#function-trigger_error_on_call) (int p\_call\_count\_before\_trigger) <br>_Set the record function to return an error after a specified number of recordings._  |




























# Detailed Description


This class stores records of a functions call history in order to be recovered later for inspection in tests and simulations.


See pwm\_mock.hpp and tests/pwm\_mock.test.cpp as an example of how this is done in practice.




**Template parameters:**


* `args_t` - the arguments of the class function 




    
## Public Functions Documentation




### function call\_history 

_Return the call history of the save function._ 
```C++
inline const auto & hal::spy_handler::call_history () const
```





**Returns:**

const auto& - reference to the call history vector 





        



### function history 

_Return argument from one of call history parameters._ 
```C++
template<size_t ArgumentIndex>
inline const auto & hal::spy_handler::history (
    size_t p_call
) const
```





**Parameters:**


* `p_call` - history call from 0 to N 



**Returns:**

const auto& - reference to the call history vector 




**Exception:**


* `std::out_of_range` - if p\_call is beyond the size of call\_history 




        



### function record 

_Record the arguments of a function being spied on._ 
```C++
inline status hal::spy_handler::record (
    args_t... p_args
) 
```





**Parameters:**


* `p_args` - arguments to record 



**Returns:**

status - success or failure error trigger has been reached. 





        



### function reset 

```C++
inline void hal::spy_handler::reset () 
```






### function trigger\_error\_on\_call 

_Set the record function to return an error after a specified number of recordings._ 
```C++
inline void hal::spy_handler::trigger_error_on_call (
    int p_call_count_before_trigger
) 
```





**Parameters:**


* `p_call_count_before_trigger` - how many calls before an error is returned. 




        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-mock/testing.hpp`

