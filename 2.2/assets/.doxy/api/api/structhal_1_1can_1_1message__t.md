

# Struct hal::can::message\_t



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**can**](classhal_1_1can.md) **>** [**message\_t**](structhal_1_1can_1_1message__t.md)



_A CAN message._ 

* `#include <can.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  [**id\_t**](classhal_1_1can.md#typedef-id_t) | [**id**](#variable-id)  <br>_ID of the message._  |
|  bool | [**is\_remote\_request**](#variable-is_remote_request)   = = false<br>_Determines if the message is a remote request frame._  |
|  uint8\_t | [**length**](#variable-length)   = = 0<br>_The number of valid elements in the payload._  |
|  std::array&lt; hal::byte, 8 &gt; | [**payload**](#variable-payload)   = {}<br>_Message data contents._  |












































## Public Attributes Documentation




### variable id 

```C++
id_t hal::can::message_t::id;
```






### variable is\_remote\_request 

_Determines if the message is a remote request frame._ 
```C++
bool hal::can::message_t::is_remote_request;
```



If true, then length and payload are ignored. 


        



### variable length 

_The number of valid elements in the payload._ 
```C++
uint8_t hal::can::message_t::length;
```



Can be between 0 and 8. A length value above 8 should be considered invalid and can be discarded. 


        



### variable payload 

```C++
std::array<hal::byte, 8> hal::can::message_t::payload;
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/can.hpp`

