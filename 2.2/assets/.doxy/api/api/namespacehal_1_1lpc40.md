

# Namespace hal::lpc40



[**Namespace List**](namespaces.md) **>** [**hal**](namespacehal.md) **>** [**lpc40**](namespacehal_1_1lpc40.md)



_libhal drivers for the_ [_**lpc40**_](namespacehal_1_1lpc40.md) _series of microcontrollers from NXP_
















## Classes

| Type | Name |
| ---: | :--- |
| class | [**adc**](classhal_1_1lpc40_1_1adc.md) <br>_Analog to digital converter._  |
| class | [**can**](classhal_1_1lpc40_1_1can.md) <br> |
| class | [**clock**](classhal_1_1lpc40_1_1clock.md) <br>_Allows user code to manipulate and retrieve the various system clocks speeds._  |
| class | [**i2c**](classhal_1_1lpc40_1_1i2c.md) <br> |
| class | [**input\_pin**](classhal_1_1lpc40_1_1input__pin.md) <br>_Input pin implementation for the lpc40xx._  |
| class | [**interrupt\_pin**](classhal_1_1lpc40_1_1interrupt__pin.md) <br>_Interrupt pin implementation for the lpc40xx._  |
| class | [**output\_pin**](classhal_1_1lpc40_1_1output__pin.md) <br>_Output pin implementation for the lpc40xx._  |
| class | [**pin**](classhal_1_1lpc40_1_1pin.md) <br>_lpc40xx pin multiplexing and control driver used drivers and apps seeking to tune the pins._  |
| class | [**power**](classhal_1_1lpc40_1_1power.md) <br>_Power control for lpc40xx peripherals._  |
| class | [**pwm**](classhal_1_1lpc40_1_1pwm.md) <br>_pwm driver for the lpc40xx series of micro controllers_  |
| class | [**uart**](classhal_1_1lpc40_1_1uart.md) <br>_Implementation of the UART peripheral for the LPC40xx family of microcontrollers._  |


## Public Types

| Type | Name |
| ---: | :--- |
| enum  | [**error\_t**](#enum-error_t)  <br>_Set of_ [_**lpc40**_](namespacehal_1_1lpc40.md) _specific error types._ |
| enum std::uint16\_t | [**irq**](#enum-irq)  <br>_List of interrupt request numbers for this platform._  |
| enum std::uint8\_t | [**peripheral**](#enum-peripheral)  <br>_List of each peripheral and their power on id number for this platform._  |
















































## Public Types Documentation




### enum error\_t 

```C++
enum hal::lpc40::error_t {
    requires_usage_of_external_oscillator,
    baud_rate_impossible
};
```






### enum irq 

```C++
enum hal::lpc40::irq {
    wdt = 16 + 0,
    timer0 = 16 + 1,
    timer1 = 16 + 2,
    timer2 = 16 + 3,
    timer3 = 16 + 4,
    uart0 = 16 + 5,
    uart1 = 16 + 6,
    uart2 = 16 + 7,
    uart3 = 16 + 8,
    pwm1 = 16 + 9,
    i2c0 = 16 + 10,
    i2c1 = 16 + 11,
    i2c2 = 16 + 12,
    reserved0 = 16 + 13,
    ssp0 = 16 + 14,
    ssp1 = 16 + 15,
    pll0 = 16 + 16,
    rtc = 16 + 17,
    eint0 = 16 + 18,
    eint1 = 16 + 19,
    eint2 = 16 + 20,
    eint3 = 16 + 21,
    adc = 16 + 22,
    bod = 16 + 23,
    usb = 16 + 24,
    can = 16 + 25,
    dma = 16 + 26,
    i2s = 16 + 27,
    enet = 16 + 28,
    mci = 16 + 29,
    mcpwm = 16 + 30,
    qei = 16 + 31,
    pll1 = 16 + 32,
    usbactivity = 16 + 33,
    canactivity = 16 + 34,
    uart4 = 16 + 35,
    ssp2 = 16 + 36,
    lcd = 16 + 37,
    gpio = 16 + 38,
    pwm0 = 16 + 39,
    eeprom = 16 + 40,
    cmp0 = 16 + 41,
    cmp1 = 16 + 42,
    max
};
```






### enum peripheral 

```C++
enum hal::lpc40::peripheral {
    lcd = 0,
    timer0 = 1,
    timer1 = 2,
    uart0 = 3,
    uart1 = 4,
    pwm0 = 5,
    pwm1 = 6,
    i2c0 = 7,
    uart4 = 8,
    rtc = 9,
    ssp1 = 10,
    emc = 11,
    adc = 12,
    can1 = 13,
    can2 = 14,
    gpio = 15,
    spifi = 16,
    motor_control_pwm = 17,
    quadrature_encoder = 18,
    i2c1 = 19,
    ssp2 = 20,
    ssp0 = 21,
    timer2 = 22,
    timer3 = 23,
    uart2 = 24,
    uart3 = 25,
    i2c2 = 26,
    i2s = 27,
    sdcard = 28,
    gpdma = 29,
    ethernet = 30,
    usb = 31,
    cpu
};
```




------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-lpc40/adc.hpp`

