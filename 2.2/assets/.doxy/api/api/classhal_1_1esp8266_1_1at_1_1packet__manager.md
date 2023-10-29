

# Class hal::esp8266::at::packet\_manager



[**ClassList**](annotated.md) **>** [**packet\_manager**](classhal_1_1esp8266_1_1at_1_1packet__manager.md)










































## Public Functions

| Type | Name |
| ---: | :--- |
|  void | [**find**](#function-find) ([**hal::serial**](classhal_1_1serial.md) & p\_serial) <br> |
|  bool | [**is\_complete\_header**](#function-is_complete_header) () <br> |
|  std::uint16\_t | [**packet\_length**](#function-packet_length) () <br> |
|   | [**packet\_manager**](#function-packet_manager) () <br> |
|  hal::result&lt; std::span&lt; [**hal::byte**](namespacehal.md#typedef-byte) &gt; &gt; | [**read\_packet**](#function-read_packet) ([**hal::serial**](classhal_1_1serial.md) & p\_serial, std::span&lt; [**hal::byte**](namespacehal.md#typedef-byte) &gt; p\_buffer) <br> |
|  void | [**reset**](#function-reset) () <br> |
|  void | [**set\_state**](#function-set_state) (std::uint8\_t p\_state) <br> |




























## Public Functions Documentation




### function find 

```C++
void packet_manager::find (
    hal::serial & p_serial
) 
```






### function is\_complete\_header 

```C++
bool packet_manager::is_complete_header () 
```






### function packet\_length 

```C++
std::uint16_t packet_manager::packet_length () 
```






### function packet\_manager 

```C++
packet_manager::packet_manager () 
```






### function read\_packet 

```C++
hal::result< std::span< hal::byte > > packet_manager::read_packet (
    hal::serial & p_serial,
    std::span< hal::byte > p_buffer
) 
```






### function reset 

```C++
void packet_manager::reset () 
```






### function set\_state 

```C++
void packet_manager::set_state (
    std::uint8_t p_state
) 
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-esp8266/at.hpp`

