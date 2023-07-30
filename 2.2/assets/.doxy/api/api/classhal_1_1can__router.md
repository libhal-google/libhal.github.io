

# Class hal::can\_router



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**can\_router**](classhal_1_1can__router.md)



_Route CAN messages received on the can bus to callbacks based on ID._ 

* `#include <can.hpp>`















## Classes

| Type | Name |
| ---: | :--- |
| struct | [**route**](structhal_1_1can__router_1_1route.md) <br> |


## Public Types

| Type | Name |
| ---: | :--- |
| typedef [**hal::callback**](namespacehal.md#typedef-callback)&lt; [**hal::can::handler**](classhal_1_1can.md#typedef-handler) &gt; | [**message\_handler**](#typedef-message_handler)  <br> |
| typedef [**static\_list**](classhal_1_1static__list.md)&lt; [**route**](structhal_1_1can__router_1_1route.md) &gt;::item | [**route\_item**](#typedef-route_item)  <br> |






## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  constexpr auto | [**noop**](#variable-noop)   = =
    []([[maybe\_unused]] const [**can::message\_t**](structhal_1_1can_1_1message__t.md)& p\_message) {}<br> |














## Public Functions

| Type | Name |
| ---: | :--- |
|  auto | [**add\_message\_callback**](#function-add_message_callback-12) ([**hal::can::id\_t**](classhal_1_1can.md#typedef-id_t) p\_id) <br>_Add a message route without setting the callback._  |
|  auto | [**add\_message\_callback**](#function-add_message_callback-22) ([**hal::can::id\_t**](classhal_1_1can.md#typedef-id_t) p\_id, message\_handler p\_handler) <br>_Set a callback for when messages with a specific ID is received._  |
|  [**hal::can**](classhal_1_1can.md) & | [**bus**](#function-bus) () <br>_Get a reference to the can peripheral driver._  |
|   | [**can\_router**](#function-can_router-14) ([**hal::can**](classhal_1_1can.md) & p\_can) <br>_Construct a new can message router._  |
|   | [**can\_router**](#function-can_router-24) () = delete<br> |
|   | [**can\_router**](#function-can_router-34) ([**can\_router**](classhal_1_1can__router.md) & p\_other) = delete<br> |
|   | [**can\_router**](#function-can_router-44) ([**can\_router**](classhal_1_1can__router.md) && p\_other) <br> |
|  const auto & | [**handlers**](#function-handlers) () <br>_Get the list of handlers._  |
|  void | [**operator()**](#function-operator()) (const [**can::message\_t**](structhal_1_1can_1_1message__t.md) & p\_message) <br>_Message routing interrupt service handler._  |
|  [**can\_router**](classhal_1_1can__router.md) & | [**operator=**](#function-operator) ([**can\_router**](classhal_1_1can__router.md) & p\_other) = delete<br> |
|  [**can\_router**](classhal_1_1can__router.md) & | [**operator=**](#function-operator_1) ([**can\_router**](classhal_1_1can__router.md) && p\_other) <br> |
|   | [**~can\_router**](#function-can_router) () <br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**can\_router**](classhal_1_1can__router.md) &gt; | [**create**](#function-create) ([**hal::can**](classhal_1_1can.md) & p\_can) <br> |


























## Public Types Documentation




### typedef message\_handler 

```C++
using hal::can_router::message_handler =  hal::callback<hal::can::handler>;
```






### typedef route\_item 

```C++
using hal::can_router::route_item =  static_list<route>::item;
```



## Public Static Attributes Documentation




### variable noop 

```C++
constexpr auto hal::can_router::noop;
```



## Public Functions Documentation




### function add\_message\_callback [1/2]

_Add a message route without setting the callback._ 
```C++
inline auto hal::can_router::add_message_callback (
    hal::can::id_t p_id
) 
```



The default callback will do nothing and will drop the message.




**Parameters:**


* `p_id` - Associated ID of messages to be stored. 



**Returns:**

auto - route item from the linked list that must be stored stored in a variable 





        



### function add\_message\_callback [2/2]

_Set a callback for when messages with a specific ID is received._ 
```C++
inline auto hal::can_router::add_message_callback (
    hal::can::id_t p_id,
    message_handler p_handler
) 
```





**Parameters:**


* `p_id` - Associated ID of messages to be stored. 
* `p_handler` - callback to be executed when a p\_id message is received. 



**Returns:**

auto - route item from the linked list that must be stored stored in a variable 





        



### function bus 

_Get a reference to the can peripheral driver._ 
```C++
inline hal::can & hal::can_router::bus () 
```



Used to send can messages through the same port that the [**can\_router**](classhal_1_1can__router.md) is using.




**Returns:**

can& reference to the can peripheral driver 





        



### function can\_router [1/4]

_Construct a new can message router._ 
```C++
inline explicit hal::can_router::can_router (
    hal::can & p_can
) 
```





**Parameters:**


* `p_can` - can peripheral to route messages for 




        



### function can\_router [2/4]

```C++
hal::can_router::can_router () = delete
```






### function can\_router [3/4]

```C++
hal::can_router::can_router (
    can_router & p_other
) = delete
```






### function can\_router [4/4]

```C++
inline hal::can_router::can_router (
    can_router && p_other
) 
```






### function handlers 

_Get the list of handlers._ 
```C++
inline const auto & hal::can_router::handlers () 
```



Meant for testing purposes or when direct inspection of the map is useful in userspace. Should not be used in by libraries.




**Returns:**

const auto& map of all of the can message handlers. 





        



### function operator() 

_Message routing interrupt service handler._ 
```C++
inline void hal::can_router::operator() (
    const can::message_t & p_message
) 
```



Searches the static list and finds the first ID associated with the message and run's that route's callback.




**Parameters:**


* `p_message` - message received from the bus 




        



### function operator= 

```C++
can_router & hal::can_router::operator= (
    can_router & p_other
) = delete
```






### function operator= 

```C++
inline can_router & hal::can_router::operator= (
    can_router && p_other
) 
```






### function ~can\_router 

```C++
inline hal::can_router::~can_router () 
```



## Public Static Functions Documentation




### function create 

```C++
static inline result< can_router > hal::can_router::create (
    hal::can & p_can
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-util/can.hpp`

