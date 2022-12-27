# 📃 Glossary

Here is a list of terms used in libhal. It is HIGHLY RECOMMENDED that
new users of libhal read this section.

## Target(s)

Targets are defined as MCUs (micro-controllers), SOCs (system-on-chip),
operating systems, or operating systems running on a particular SBC
(single-board-computer).

The following are examples:

=== "MCU"

    - LPC40xx series family of MCUs
    - STM32F10x series family of MCUs
    - RP2040

=== "AP"

    - Broadcom BCM2836 SoC (Raspberry Pi)
    - Samsung Exynos5422 (Odroid)
    - TI AM335x Sitara

=== "OS"

    - Linux
    - Windows CE

=== "SOC"

    - Raspberry Pi
    - ODROID UX
    - BeagleBone Black

## Interface(s)

Interfaces are the basic building blocks of libhal and enable the
flexibility needed to be portable and flexible.

An interface is a contract of functions that an implementing class must adhere
to. Documentation for each interface API explain the expected behavior that each
function should have on hardware regardless of the implementation.

Any software that implements (inherits) an interface must provide
implementations for each function in the interface, otherwise the compiler will
generate a compiler error.

In libhal each interface corresponds to a type of hardware peripheral or device
such as:

- `hal::output_pin` & `hal::input_pin`: Digital I/O (input/output pins)
- `hal::adc`: Analog to digital converter
- `hal::pwm`: Pulse width modulation (pwm)
- `hal::spi`: Serial peripheral interface (spi)
- `hal::serial`: Universal asynchronous receiver transmitter (serial/uart)
- `hal::accelerometer`: Accelerometer

## Driver Types

=== "Peripheral"

    Peripheral drivers are drivers for a target that is embedded within the device
    and therefore cannot be removed from the chip and is fixed in number.

    - Example: A digital output and input pin
    - Example: 1 of 5 hardware timers within a micro-controller
    - Example: Integrated analog-to-digital converter

=== "Device"

    Device drivers are drivers for devices external to a target. In order to
    communicate with such a device the target must have the necessary peripherals
    and peripheral drivers to operate correctly.

    - Example: an accelerometer driver for the mpu6050
    - Example: a memory storage driver for a at581 flash memory
    - Example: a black and white pixel display

=== "Soft"

    Soft drivers are drivers that do not have any specific underlying hardware
    associated with them. They are used to emulate, give context to, or alter the
    behavior of interfaces. For a driver to be a soft driver it must implement or
    have a way to generate, construct or create implementations of hardware
    interfaces.

    #### Emulation Example

    - Emulate spi by using 2 output pins and 1 input pin.
    - Emulate uart transmission with a 16-bit spi driver and some clever bit
      positioning.

    #### Context Example

    - Implement a rotary encoder by using an adc, a potentiometer and some
      specification of the potentiometer like min and max angle, along with min and
      max voltage.
    - Implement a dac using multiple output pins and a set of resistors and an op
      amp.

    #### Alteration example

    - Implement an input pin that inverts the readings of an actual input pin
    - Implement an i2c driver that is thread safe by taking an i2c and locking
      mechanism provided by the user.

    In general, software drivers tend to incur some overhead so nesting them
    deeply will effect performance.

## Off Interface Function

Off Interface functions are public class functions that a driver can have that
is beyond what is available for the interface it is implementing. These
functions usually configure a peripheral or device in a way that is outside
the scope of the implementing interface. For peripherals these are platform
specific. For drivers these are device specific features. Examples of such
specific functions are as follows:

- An output pin driver with a high drain current mode
- An input pin driver with support for inverting the voltage level of what it
  reads in hardware.
- Enabling/disabling continuous sampling from an accelerometer where sampling
  continuously would make reading samples faster but would consume more power
  and disabling continuous sampling would do the opposite.
