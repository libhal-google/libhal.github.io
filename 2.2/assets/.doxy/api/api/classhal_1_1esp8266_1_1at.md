

# Class hal::esp8266::at



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**esp8266**](namespacehal_1_1esp8266.md) **>** [**at**](classhal_1_1esp8266_1_1at.md)



_AT Command network driver for the_ [_**esp8266**_](namespacehal_1_1esp8266.md) _._[More...](#detailed-description)

* `#include <at.hpp>`















## Classes

| Type | Name |
| ---: | :--- |
| struct | [**read\_t**](structhal_1_1esp8266_1_1at_1_1read__t.md) <br> |
| struct | [**socket\_config**](structhal_1_1esp8266_1_1at_1_1socket__config.md) <br> |
| struct | [**write\_t**](structhal_1_1esp8266_1_1at_1_1write__t.md) <br> |


## Public Types

| Type | Name |
| ---: | :--- |
| typedef [**hal::function\_ref**](namespacehal.md#typedef-function_ref)&lt; [**hal::timeout\_function**](namespacehal.md#typedef-timeout_function) &gt; | [**deadline**](#typedef-deadline)  <br> |
| enum std::uint8\_t | [**socket\_type**](#enum-socket_type)  <br> |




















## Public Functions

| Type | Name |
| ---: | :--- |
|  hal::status | [**connect\_to\_ap**](#function-connect_to_ap) (std::string\_view p\_ssid, std::string\_view p\_password, deadline p\_timeout) <br> |
|  hal::status | [**connect\_to\_server**](#function-connect_to_server) ([**socket\_config**](structhal_1_1esp8266_1_1at_1_1socket__config.md) p\_config, deadline p\_timeout) <br> |
|  hal::status | [**disconnect\_from\_ap**](#function-disconnect_from_ap) (deadline p\_timeout) <br> |
|  hal::status | [**disconnect\_from\_server**](#function-disconnect_from_server) (deadline p\_timeout) <br> |
|  hal::result&lt; bool &gt; | [**is\_connected\_to\_ap**](#function-is_connected_to_ap) (deadline p\_timeout) <br> |
|  hal::result&lt; bool &gt; | [**is\_connected\_to\_server**](#function-is_connected_to_server) (deadline p\_timeout) <br> |
|  hal::status | [**reset**](#function-reset) (deadline p\_timeout) <br> |
|  hal::result&lt; [**read\_t**](structhal_1_1esp8266_1_1at_1_1read__t.md) &gt; | [**server\_read**](#function-server_read) (std::span&lt; [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_data) <br> |
|  hal::result&lt; [**write\_t**](structhal_1_1esp8266_1_1at_1_1write__t.md) &gt; | [**server\_write**](#function-server_write) (std::span&lt; const [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_data, deadline p\_timeout) <br> |
|  hal::status | [**set\_ip\_address**](#function-set_ip_address) (std::string\_view p\_ip, deadline p\_timeout) <br> |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**at**](classhal_1_1esp8266_1_1at.md) &gt; | [**create**](#function-create) ([**hal::serial**](classhal_1_1serial.md) & p\_serial, deadline p\_timeout) <br> |


























# Detailed Description


The [**esp8266::at**](classhal_1_1esp8266_1_1at.md) driver can be used to connect to a WiFi access points (AP) and sending network traffic using TCP and UDP over IP. 


    
## Public Types Documentation




### typedef deadline 

```C++
using hal::esp8266::at::deadline =  hal::function_ref<hal::timeout_function>;
```






### enum socket\_type 

```C++
enum hal::esp8266::at::socket_type {
    tcp,
    udp
};
```



## Public Functions Documentation




### function connect\_to\_ap 

```C++
hal::status hal::esp8266::at::connect_to_ap (
    std::string_view p_ssid,
    std::string_view p_password,
    deadline p_timeout
) 
```






### function connect\_to\_server 

```C++
hal::status hal::esp8266::at::connect_to_server (
    socket_config p_config,
    deadline p_timeout
) 
```






### function disconnect\_from\_ap 

```C++
hal::status hal::esp8266::at::disconnect_from_ap (
    deadline p_timeout
) 
```






### function disconnect\_from\_server 

```C++
hal::status hal::esp8266::at::disconnect_from_server (
    deadline p_timeout
) 
```






### function is\_connected\_to\_ap 

```C++
hal::result< bool > hal::esp8266::at::is_connected_to_ap (
    deadline p_timeout
) 
```






### function is\_connected\_to\_server 

```C++
hal::result< bool > hal::esp8266::at::is_connected_to_server (
    deadline p_timeout
) 
```






### function reset 

```C++
hal::status hal::esp8266::at::reset (
    deadline p_timeout
) 
```






### function server\_read 

```C++
hal::result< read_t > hal::esp8266::at::server_read (
    std::span< hal::byte > p_data
) 
```






### function server\_write 

```C++
hal::result< write_t > hal::esp8266::at::server_write (
    std::span< const hal::byte > p_data,
    deadline p_timeout
) 
```






### function set\_ip\_address 

```C++
hal::status hal::esp8266::at::set_ip_address (
    std::string_view p_ip,
    deadline p_timeout
) 
```



## Public Static Functions Documentation




### function create 

```C++
static result< at > hal::esp8266::at::create (
    hal::serial & p_serial,
    deadline p_timeout
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-esp8266/at.hpp`

