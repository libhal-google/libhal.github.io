

# Class hal::mpl::mpl3115a2



[**ClassList**](annotated.md) **>** [**hal**](namespacehal.md) **>** [**mpl**](namespacehal_1_1mpl.md) **>** [**mpl3115a2**](classhal_1_1mpl_1_1mpl3115a2.md)




















## Classes

| Type | Name |
| ---: | :--- |
| struct | [**altitude\_read\_t**](structhal_1_1mpl_1_1mpl3115a2_1_1altitude__read__t.md) <br> |
| struct | [**pressure\_read\_t**](structhal_1_1mpl_1_1mpl3115a2_1_1pressure__read__t.md) <br> |
| struct | [**temperature\_read\_t**](structhal_1_1mpl_1_1mpl3115a2_1_1temperature__read__t.md) <br> |


## Public Types

| Type | Name |
| ---: | :--- |
| enum  | [**mode**](#enum-mode)  <br> |






## Public Static Attributes

| Type | Name |
| ---: | :--- |
|  constexpr uint16\_t | [**default\_max\_polling\_retries**](#variable-default_max_polling_retries)   = = 10000<br> |














## Public Functions

| Type | Name |
| ---: | :--- |
|  hal::result&lt; [**altitude\_read\_t**](structhal_1_1mpl_1_1mpl3115a2_1_1altitude__read__t.md) &gt; | [**read\_altitude**](#function-read_altitude) () <br>_Read altitude data from out\_p\_msb\_r, out\_p\_csb\_r, and out\_p\_lsb\_r and perform altitude conversion to meters._  |
|  hal::result&lt; [**pressure\_read\_t**](structhal_1_1mpl_1_1mpl3115a2_1_1pressure__read__t.md) &gt; | [**read\_pressure**](#function-read_pressure) () <br>_Read pressure data from out\_p\_msb\_r, out\_p\_csb\_r, and out\_p\_lsb\_r and perform pressure conversion to kilopascals._  |
|  hal::result&lt; [**temperature\_read\_t**](structhal_1_1mpl_1_1mpl3115a2_1_1temperature__read__t.md) &gt; | [**read\_temperature**](#function-read_temperature) () <br>_Read pressure data from out\_t\_msb\_r and out\_t\_lsb\_r and perform temperature conversion to celsius._  |
|  hal::status | [**set\_altitude\_offset**](#function-set_altitude_offset) (int8\_t p\_offset) <br>_Set altitude offset in off\_h\_r._  |
|  hal::status | [**set\_sea\_pressure**](#function-set_sea_pressure) (float p\_sea\_level\_pressure) <br>_Set sea level pressure (Barometric input for altitude calculations) in bar\_in\_msb\_r and bar\_in\_lsb\_r registers._  |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  result&lt; [**mpl3115a2**](classhal_1_1mpl_1_1mpl3115a2.md) &gt; | [**create**](#function-create) ([**hal::i2c**](classhal_1_1i2c.md) & p\_i2c) <br>_Initialization of MPLX device._  |


























## Public Types Documentation




### enum mode 

```C++
enum hal::mpl::mpl3115a2::mode {
    barometer = 0,
    altimeter = 1
};
```



## Public Static Attributes Documentation




### variable default\_max\_polling\_retries 

```C++
constexpr uint16_t hal::mpl::mpl3115a2::default_max_polling_retries;
```



## Public Functions Documentation




### function read\_altitude 

```C++
hal::result< altitude_read_t > hal::mpl::mpl3115a2::read_altitude () 
```






### function read\_pressure 

```C++
hal::result< pressure_read_t > hal::mpl::mpl3115a2::read_pressure () 
```






### function read\_temperature 

```C++
hal::result< temperature_read_t > hal::mpl::mpl3115a2::read_temperature () 
```






### function set\_altitude\_offset 

_Set altitude offset in off\_h\_r._ 
```C++
hal::status hal::mpl::mpl3115a2::set_altitude_offset (
    int8_t p_offset
) 
```





**Parameters:**


* `p_offset` Offset value in meters, from -127 to 128 




        



### function set\_sea\_pressure 

_Set sea level pressure (Barometric input for altitude calculations) in bar\_in\_msb\_r and bar\_in\_lsb\_r registers._ 
```C++
hal::status hal::mpl::mpl3115a2::set_sea_pressure (
    float p_sea_level_pressure
) 
```





**Parameters:**


* `p_sea_level_pressure` Sea level pressure in Pascals. Default value on startup is 101,326 Pa. 




        
## Public Static Functions Documentation




### function create 

_Initialization of MPLX device._ 
```C++
static result< mpl3115a2 > hal::mpl::mpl3115a2::create (
    hal::i2c & p_i2c
) 
```



This function performs the following steps during startup configuration:
* Perform WHOAMI check
* Trigger reset and wait for completion
* Set altimeter mode
* Set oversampling ratio to 2^128 (OS128)
* Enable data ready events for pressure/altitude and temperature 




        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-mpl/mpl3115a2.hpp`

