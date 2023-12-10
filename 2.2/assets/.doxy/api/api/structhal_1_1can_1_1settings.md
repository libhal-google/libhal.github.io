

# Struct hal::can::settings



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**can**](classhal_1_1can.md) **>** [**settings**](structhal_1_1can_1_1settings.md)



_Generic settings for a can peripheral._ [More...](#detailed-description)

* `#include <can.hpp>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  [**hertz**](namespacehal.md#typedef-hertz) | [**baud\_rate**](#variable-baud_rate)   = = 100.0\_kHz<br>_Bus clock rate in hertz._  |
|  std::uint8\_t | [**phase\_segment1**](#variable-phase_segment1)   = = 3<br>_Length of Phase Segment 1 (1qt ... 8qt)_  |
|  std::uint8\_t | [**phase\_segment2**](#variable-phase_segment2)   = = 3<br>_Length of Phase Segment 2 (1qt ... 8qt)_  |
|  std::uint8\_t | [**propagation\_delay**](#variable-propagation_delay)   = = 3<br>_Propagation Delay (1qt ... 8qt)_  |
|  std::uint8\_t | [**synchronization\_jump\_width**](#variable-synchronization_jump_width)   = = 1<br>_Synchronization jump width (1qt ... 4qt)_  |


## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  constexpr std::uint8\_t | [**sync\_segment**](#variable-sync_segment)   = = 1<br>_Sync Segment (always 1qt)_  |










































# Detailed Description


CAN Bit Quanta Timing Diagram of:  


    
## Public Attributes Documentation




### variable baud\_rate 

```C++
hertz hal::can::settings::baud_rate;
```






### variable phase\_segment1 

_Length of Phase Segment 1 (1qt ... 8qt)_ 
```C++
std::uint8_t hal::can::settings::phase_segment1;
```



Determines the bit rate, phase segment 1 acts as a buffer that can be lengthened to resynchronize with the bit stream via the synchronization\_jump\_width. Includes propagation delay 


        



### variable phase\_segment2 

_Length of Phase Segment 2 (1qt ... 8qt)_ 
```C++
std::uint8_t hal::can::settings::phase_segment2;
```



Determines the bit rate and is like phase segment 1 and occurs after the sampling point. Phase segment 2 can be shortened to resynchronize with the bit stream via the synchronization\_jump\_width. 


        



### variable propagation\_delay 

_Propagation Delay (1qt ... 8qt)_ 
```C++
std::uint8_t hal::can::settings::propagation_delay;
```



Propagation time It is used to compensate for signal delays across the network. 


        



### variable synchronization\_jump\_width 

_Synchronization jump width (1qt ... 4qt)_ 
```C++
std::uint8_t hal::can::settings::synchronization_jump_width;
```



This is the maximum time by which the bit sampling period may be lengthened or shortened during each cycle to adjust for oscillator mismatch between nodes.


This value must be smaller than phase\_segment1 and phase\_segment2 


        
## Public Static Attributes Documentation




### variable sync\_segment 

_Sync Segment (always 1qt)_ 
```C++
constexpr std::uint8_t hal::can::settings::sync_segment;
```



Initial sync transition, the start of a CAN bit 


        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/can.hpp`

