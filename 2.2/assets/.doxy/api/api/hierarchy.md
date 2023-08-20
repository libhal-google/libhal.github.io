
# Class Hierarchy

This inheritance list is sorted roughly, but not completely, alphabetically:


* **class** [**hal::accelerometer**](classhal_1_1accelerometer.md) _Acceleration sensing hardware abstraction interface._     
    * **class** [**hal::soft::inert\_accelerometer**](classhal_1_1soft_1_1inert__accelerometer.md) _Inert implementation of acceleration sensing hardware._ 
* **class** [**hal::adc**](classhal_1_1adc.md) _Analog to Digital Converter (ADC) hardware abstraction interface._     
    * **class** [**hal::lpc40::adc**](classhal_1_1lpc40_1_1adc.md) _Analog to digital converter._ 
    * **struct** [**hal::mock::adc**](structhal_1_1mock_1_1adc.md) _Mock adc implementation for use in unit tests and simulations._ 
    * **class** [**hal::soft::adc\_mux\_pin**](classhal_1_1soft_1_1adc__mux__pin.md) _A class that represents a multiplexer pin for ADC._ 
    * **class** [**hal::soft::inert\_adc**](classhal_1_1soft_1_1inert__adc.md) _Inert implementation of Analog to Digital Converter (ADC) hardware._ 
* **class** [**hal::bit\_value**](classhal_1_1bit__value.md)     
    * **class** [**hal::bit\_modify**](classhal_1_1bit__modify.md) 
* **class** [**hal::can**](classhal_1_1can.md) _Controller Area Network (CAN bus) hardware abstraction interface._     
    * **class** [**hal::lpc40::can**](classhal_1_1lpc40_1_1can.md) 
    * **struct** [**hal::mock::can**](structhal_1_1mock_1_1can.md) _Mock can implementation for use in unit tests and simulations._ 
* **class** [**hal::can\_router**](classhal_1_1can__router.md) _Route CAN messages received on the can bus to callbacks based on ID._ 
* **class** [**hal::steady\_clock**](classhal_1_1steady__clock.md) _Hardware abstraction interface for a steady clock mechanism._     
    * **class** [**hal::cortex\_m::dwt\_counter**](classhal_1_1cortex__m_1_1dwt__counter.md) _A counter with a frequency fixed to the CPU clock rate._ 
    * **struct** [**hal::mock::steady\_clock**](structhal_1_1mock_1_1steady__clock.md) _mock_ [_**steady\_clock**_](structhal_1_1mock_1_1steady__clock.md) _implementation for use in unit tests and simulations._
    * **class** [**hal::soft::inert\_steady\_clock**](classhal_1_1soft_1_1inert__steady__clock.md) _Inert implementation of steady clock mechanism._ 
* **class** [**hal::cortex\_m::interrupt**](classhal_1_1cortex__m_1_1interrupt.md) _Cortex M series interrupt controller._ 
* **class** [**hal::cortex\_m::interrupt::exception\_number**](classhal_1_1cortex__m_1_1interrupt_1_1exception__number.md) _represents an interrupt request number along with helper functions for setting up the interrupt controller registers._ 
* **class** [**hal::timer**](classhal_1_1timer.md) _Timer hardware abstraction interface._     
    * **class** [**hal::cortex\_m::systick\_timer**](classhal_1_1cortex__m_1_1systick__timer.md) _SysTick driver for the ARM Cortex Mx series chips._ 
    * **struct** [**hal::mock::timer**](structhal_1_1mock_1_1timer.md) _Mock timer implementation for use in unit tests and simulations with spy functions for_ [_**schedule()**_](classhal_1_1timer.md#function-schedule) _, clear(), and_[_**is\_running()**_](classhal_1_1timer.md#function-is_running) __
    * **class** [**hal::soft::inert\_timer**](classhal_1_1soft_1_1inert__timer.md) _Inert implementation of timer hardware._ 
* **class** [**hal::dac**](classhal_1_1dac.md) _Digital to Analog Converter (DAC) hardware abstraction interface._     
    * **struct** [**hal::mock::dac**](structhal_1_1mock_1_1dac.md) _Mock dac implementation for use in unit tests and simulations with a spy function for_ [_**write()**_](classhal_1_1dac.md#function-write) __
    * **class** [**hal::soft::inert\_dac**](classhal_1_1soft_1_1inert__dac.md) _Inert implementation of Digital to Analog Converter (DAC) hardware._ 
* **class** [**hal::distance\_sensor**](classhal_1_1distance__sensor.md) _Linear distance hardware abstraction interface._     
    * **class** [**hal::soft::inert\_distance\_sensor**](classhal_1_1soft_1_1inert__distance__sensor.md) _Inert implementation of linear distance hardware._ 
* **class** [**hal::esp8266::at**](classhal_1_1esp8266_1_1at.md) _AT Command network driver for the_ [_**esp8266**_](namespacehal_1_1esp8266.md) _._
* **class** [**hal::gyroscope**](classhal_1_1gyroscope.md) _Angular velocity sensing hardware abstraction interface._     
    * **class** [**hal::soft::inert\_gyroscope**](classhal_1_1soft_1_1inert__gyroscope.md) _Inert implementation of angular velocity sensing hardware._ 
* **class** [**hal::i2c**](classhal_1_1i2c.md) _Inter-integrated Circuit (I2C) hardware abstract interface._     
    * **class** [**hal::lpc40::i2c**](classhal_1_1lpc40_1_1i2c.md) 
    * **class** [**hal::soft::minimum\_speed\_i2c**](classhal_1_1soft_1_1minimum__speed__i2c.md) _A_ [_**i2c**_](classhal_1_1i2c.md) _wrapper to ensure that the lowest_[_**i2c**_](classhal_1_1i2c.md) _device frequency is used._
* **class** [**hal::input\_pin**](classhal_1_1input__pin.md) _Digital input pin hardware abstraction interface._     
    * **class** [**hal::lpc40::input\_pin**](classhal_1_1lpc40_1_1input__pin.md) _Input pin implementation for the lpc40xx._ 
    * **struct** [**hal::mock::input\_pin**](structhal_1_1mock_1_1input__pin.md) _mock_ [_**input\_pin**_](structhal_1_1mock_1_1input__pin.md) _implementation for use in unit tests and simulations._
    * **class** [**hal::soft::inert\_input\_pin**](classhal_1_1soft_1_1inert__input__pin.md) _Inert implementation of digital input pin hardware._ 
* **class** [**hal::interrupt\_pin**](classhal_1_1interrupt__pin.md) _Digital interrupt pin hardware abstraction._     
    * **class** [**hal::lpc40::interrupt\_pin**](classhal_1_1lpc40_1_1interrupt__pin.md) _Interrupt pin implementation for the lpc40xx._ 
    * **struct** [**hal::mock::interrupt\_pin**](structhal_1_1mock_1_1interrupt__pin.md) _mock_ [_**interrupt\_pin**_](structhal_1_1mock_1_1interrupt__pin.md) _implementation for use in unit tests and simulations._
    * **class** [**hal::soft::inert\_interrupt\_pin**](classhal_1_1soft_1_1inert__interrupt__pin.md) _Inert implementation of digital interrupt pin hardware._ 
* **class** [**hal::lpc40::clock**](classhal_1_1lpc40_1_1clock.md) _Allows user code to manipulate and retrieve the various system clocks speeds._ 
* **class** [**hal::output\_pin**](classhal_1_1output__pin.md) _Digital output pin hardware abstraction._     
    * **class** [**hal::lpc40::output\_pin**](classhal_1_1lpc40_1_1output__pin.md) _Output pin implementation for the lpc40xx._ 
    * **struct** [**hal::mock::output\_pin**](structhal_1_1mock_1_1output__pin.md) _mock output pin for use in unit tests and simulations_ 
    * **class** [**hal::soft::inert\_output\_pin**](classhal_1_1soft_1_1inert__output__pin.md) _Inert implementation of digital output pin hardware._ 
    * **class** [**hal::stm32f1::output\_pin**](classhal_1_1stm32f1_1_1output__pin.md) _Output pin implementation for the stm32::f10x._ 
* **class** [**hal::lpc40::pin**](classhal_1_1lpc40_1_1pin.md) _lpc40xx pin multiplexing and control driver used drivers and apps seeking to tune the pins._ 
* **class** [**hal::lpc40::power**](classhal_1_1lpc40_1_1power.md) _Power control for lpc40xx peripherals._ 
* **class** [**hal::pwm**](classhal_1_1pwm.md) _Pulse Width Modulation (PWM) channel hardware abstraction._     
    * **class** [**hal::lpc40::pwm**](classhal_1_1lpc40_1_1pwm.md) _pwm driver for the lpc40xx series of micro controllers_ 
    * **struct** [**hal::mock::pwm**](structhal_1_1mock_1_1pwm.md) _Mock pwm implementation for use in unit tests and simulations with spy functions for_ [_**frequency()**_](classhal_1_1pwm.md#function-frequency) _and_[_**duty\_cycle()**_](classhal_1_1pwm.md#function-duty_cycle) _._
    * **class** [**hal::soft::inert\_pwm**](classhal_1_1soft_1_1inert__pwm.md) _Inert implementation of Pulse Width Modulation (PWM) channel hardware._ 
* **class** [**hal::serial**](classhal_1_1serial.md) _Hardware abstract interface for the serial communication protocol._     
    * **class** [**hal::lpc40::uart**](classhal_1_1lpc40_1_1uart.md) _Implementation of the UART peripheral for the LPC40xx family of microcontrollers._ 
* **class** [**hal::magnetometer**](classhal_1_1magnetometer.md) _Magnetic field strength sensing hardware abstraction interface._     
    * **class** [**hal::soft::inert\_magnetometer**](classhal_1_1soft_1_1inert__magnetometer.md) _Inert implementation of magnetic field strength sensing hardware._ 
* **class** [**hal::motor**](classhal_1_1motor.md) _Hardware abstraction for an open loop rotational actuator._     
    * **struct** [**hal::mock::motor**](structhal_1_1mock_1_1motor.md) _Mock motor implementation for use in unit tests and simulations with a spy function for_ [_**power()**_](classhal_1_1motor.md#function-power) __
    * **class** [**hal::rmd::drc\_motor**](classhal_1_1rmd_1_1drc__motor.md) _Motor interface adaptor for DRC._ 
    * **class** [**hal::rmd::mc\_x\_motor**](classhal_1_1rmd_1_1mc__x__motor.md) _Control a_ [_**mc\_x**_](classhal_1_1rmd_1_1mc__x.md) _motor driver like a_[_**hal::motor**_](classhal_1_1motor.md) _._
    * **class** [**hal::soft::inert\_motor**](classhal_1_1soft_1_1inert__motor.md) _Inert implementation of open loop motorized actuator hardware._ 
* **class** [**hal::move\_interceptor**](classhal_1_1move__interceptor.md) _Use this to perform changes on an object its move constructor is executed._ 
* **class** [**hal::mpl::mpl3115a2**](classhal_1_1mpl_1_1mpl3115a2.md) 
* **class** [**hal::overflow\_counter**](classhal_1_1overflow__counter.md) _Extend a counter's count from an arbitrary bit width to 64-bits by detecting overflows in the count. Each detected overflow is added to an overflow counter which is combined with the current count in order create a count up to 64-bits in length._ 
* **class** [**hal::read\_into**](classhal_1_1read__into.md) _Non-blocking callable for reading serial data into a buffer._ 
* **class** [**hal::read\_uint32**](classhal_1_1read__uint32.md) _Read bytes from serial port and convert to integer._ 
* **class** [**hal::read\_upto**](classhal_1_1read__upto.md) _Discard received bytes until the sequence is found._ 
* **class** [**hal::rmd::drc**](classhal_1_1rmd_1_1drc.md) _Driver for RMD motors equip with the DRC motor drivers._ 
* **class** [**hal::rotation\_sensor**](classhal_1_1rotation__sensor.md) _Rotation measuring hardware abstraction interface._     
    * **class** [**hal::rmd::drc\_rotation\_sensor**](classhal_1_1rmd_1_1drc__rotation__sensor.md) _Rotation sensor adaptor for DRC motors._ 
    * **class** [**hal::rmd::mc\_x\_rotation**](classhal_1_1rmd_1_1mc__x__rotation.md) _Reports the rotation of the DRC motor._ 
    * **class** [**hal::soft::inert\_rotation\_sensor**](classhal_1_1soft_1_1inert__rotation__sensor.md) _Inert implementation of rotation measuring hardware._ 
* **class** [**hal::servo**](classhal_1_1servo.md) _Hardware abstraction for a closed loop position controlled rotational actuator._     
    * **class** [**hal::rmd::drc\_servo**](classhal_1_1rmd_1_1drc__servo.md) _Servo interface adaptor for DRC._ 
    * **class** [**hal::rmd::mc\_x\_servo**](classhal_1_1rmd_1_1mc__x__servo.md) _Control a_ [_**mc\_x**_](classhal_1_1rmd_1_1mc__x.md) _motor driver like a_[_**hal::servo**_](classhal_1_1servo.md) _._
    * **class** [**hal::soft::rc\_servo**](classhal_1_1soft_1_1rc__servo.md) _Generic RC servo driver._ 
* **class** [**hal::temperature\_sensor**](classhal_1_1temperature__sensor.md) _Temperature sensing hardware abstraction interface._     
    * **class** [**hal::rmd::drc\_temperature\_sensor**](classhal_1_1rmd_1_1drc__temperature__sensor.md) _Temperature sensor adaptor for DRC motors._ 
    * **class** [**hal::rmd::mc\_x\_temperature**](classhal_1_1rmd_1_1mc__x__temperature.md) _Reports the temperature of the DRC motor._ 
    * **class** [**hal::soft::inert\_temperature\_sensor**](classhal_1_1soft_1_1inert__temperature__sensor.md) _Inert implementation of temperature sensing hardware._ 
* **class** [**hal::rmd::mc\_x**](classhal_1_1rmd_1_1mc__x.md) _Driver for RMD series motors equip with the MC-X motor driver._ 
* **class** [**hal::skip\_past**](classhal_1_1skip__past.md) _Discard received bytes until the sequence is found._ 
* **class** [**hal::soft::adc\_multiplexer**](classhal_1_1soft_1_1adc__multiplexer.md) _A driver for an ADC multiplexer that manages and reads ADC mux pins. This driver is intended to be used with multiplexers that use digital signals. An ADC multiplexer can be used to expand the number of input channels of an ADC._ 
* **class** [**hal::spi**](classhal_1_1spi.md) _Serial peripheral interface (SPI) communication protocol hardware abstract interface._     
    * **struct** [**hal::mock::write\_only\_spi**](structhal_1_1mock_1_1write__only__spi.md) _Mock spi implementation for use in unit tests and simulations with a spy functions for_ [_**configure()**_](classhal_1_1spi.md#function-configure) _and a record for the_[_**transfer()**_](classhal_1_1spi.md#function-transfer) _out data. The record ignores the in buffer and just stores the data being sent so it can be inspected later._
* **class** [**hal::spy\_handler**](classhal_1_1spy__handler.md) _Helper utility for making mocks for class functions that return status._ 
* **class** [**hal::static\_callable**](classhal_1_1static__callable.md) _General class which will be used to allow for signature to be used and then split by the below class._ 
* **class** [**hal::static\_callable&lt; owner\_class, reference\_designator, return\_t(args\_t... p\_args)&gt;**](classhal_1_1static__callable_3_01owner__class_00_01reference__designator_00_01return__t_07args__t_8_8_8_01p__args_08_4.md) _Specialization of_ [_**static\_callable**_](classhal_1_1static__callable.md) _with the return type and arguments split up._
* **class** [**hal::static\_list**](classhal_1_1static__list.md) [_**static\_list**_](classhal_1_1static__list.md) _is a non-owning non-allocating doubly linked list container with O(1) memory utilization._
* **class** [**hal::static\_list::item**](classhal_1_1static__list_1_1item.md) _Item/node within the static linked list._ 
* **class** [**hal::static\_list::item\_iterator**](classhal_1_1static__list_1_1item__iterator.md) _Iterator for the static list._ 
* **class** [**hal::steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md) _Timeout object based on_ [_**hal::steady\_clock**_](classhal_1_1steady__clock.md) _._
* **class** [**hal::stream\_fill**](classhal_1_1stream__fill.md) _Non-blocking callable for reading serial data into a buffer._ 
* **class** [**hal::stream\_fill\_upto**](classhal_1_1stream__fill__upto.md) _Discard received bytes until the sequence is found._ 
* **class** [**hal::stream\_find**](classhal_1_1stream__find.md) _Discard received bytes until the sequence is found._ 
* **class** [**hal::stream\_parse**](classhal_1_1stream__parse.md) _Read bytes from stream and convert to integer._ 
* **class** [**hal::stream\_skip**](classhal_1_1stream__skip.md) _Skip number of bytes in a byte stream._ 
* **class** [**hal::esp8266::at::packet\_manager**](classhal_1_1esp8266_1_1at_1_1packet__manager.md) 
* **struct** [**hal::accelerometer::read\_t**](structhal_1_1accelerometer_1_1read__t.md) _Result from reading the accelerometer._ 
* **struct** [**hal::adc::read\_t**](structhal_1_1adc_1_1read__t.md) _Result from reading the adc._ 
* **struct** [**hal::bit\_limits**](structhal_1_1bit__limits.md) _Similar to std::numeric\_limits&lt;T&gt; except that this object can give properties of integral types of arbitrary bit widths._ 
* **struct** [**hal::bit\_mask**](structhal_1_1bit__mask.md) _Represents a bit mask of contiguous bits._ 
* **struct** [**hal::byte\_mask**](structhal_1_1byte__mask.md) _Helper for generating byte position masks._ 
* **struct** [**hal::can::message\_t**](structhal_1_1can_1_1message__t.md) _A CAN message._ 
* **struct** [**hal::can::send\_t**](structhal_1_1can_1_1send__t.md) _Feedback from sending data over the CAN BUS._ 
* **struct** [**hal::can::settings**](structhal_1_1can_1_1settings.md) _Generic settings for a can peripheral._ 
* **struct** [**hal::can\_router::route**](structhal_1_1can__router_1_1route.md) 
* **struct** [**hal::dac::write\_t**](structhal_1_1dac_1_1write__t.md) _Feedback from writing a voltage to the dac._ 
* **struct** [**hal::distance\_sensor::read\_t**](structhal_1_1distance__sensor_1_1read__t.md) _Result from sampling the distance sensor._ 
* **struct** [**hal::esp8266::at::read\_t**](structhal_1_1esp8266_1_1at_1_1read__t.md) 
* **struct** [**hal::esp8266::at::socket\_config**](structhal_1_1esp8266_1_1at_1_1socket__config.md) 
* **struct** [**hal::esp8266::at::write\_t**](structhal_1_1esp8266_1_1at_1_1write__t.md) 
* **struct** [**hal::gyroscope::read\_t**](structhal_1_1gyroscope_1_1read__t.md) _Result from reading the gyroscope._ 
* **struct** [**hal::i2c::settings**](structhal_1_1i2c_1_1settings.md) _Generic settings for a standard I2C device._ 
* **struct** [**hal::i2c::transaction\_t**](structhal_1_1i2c_1_1transaction__t.md) _Feedback from performing a transaction on the_ [_**i2c**_](classhal_1_1i2c.md) _bus._
* **struct** [**hal::input\_pin::level\_t**](structhal_1_1input__pin_1_1level__t.md) _Input pin level reading structure._ 
* **struct** [**hal::input\_pin::settings**](structhal_1_1input__pin_1_1settings.md) _Generic settings for input pins._ 
* **struct** [**hal::interrupt\_pin::settings**](structhal_1_1interrupt__pin_1_1settings.md) _Generic settings for interrupt pins._ 
* **struct** [**hal::lpc40::adc::channel**](structhal_1_1lpc40_1_1adc_1_1channel.md) _Channel specific information._ 
* **struct** [**hal::lpc40::can::port**](structhal_1_1lpc40_1_1can_1_1port.md) 
* **struct** [**hal::lpc40::clock::configuration**](structhal_1_1lpc40_1_1clock_1_1configuration.md) _Clock configuration object._ 
* **struct** [**hal::lpc40::clock::configuration::cpu\_t**](structhal_1_1lpc40_1_1clock_1_1configuration_1_1cpu__t.md) _cpu clock control config struct_ 
* **struct** [**hal::lpc40::clock::configuration::pll\_t**](structhal_1_1lpc40_1_1clock_1_1configuration_1_1pll__t.md) _phase locked loops config struct_ 
* **struct** [**hal::lpc40::clock::configuration::spifi\_t**](structhal_1_1lpc40_1_1clock_1_1configuration_1_1spifi__t.md) _spifi clock control config struct_ 
* **struct** [**hal::lpc40::clock::configuration::usb\_t**](structhal_1_1lpc40_1_1clock_1_1configuration_1_1usb__t.md) _usb clock control config struct_ 
* **struct** [**hal::lpc40::i2c::bus\_info**](structhal_1_1lpc40_1_1i2c_1_1bus__info.md) 
* **struct** [**hal::lpc40::pwm::channel**](structhal_1_1lpc40_1_1pwm_1_1channel.md) _Channel specific information._ 
* **struct** [**hal::lpc40::uart::port**](structhal_1_1lpc40_1_1uart_1_1port.md) 
* **struct** [**hal::magnetometer::read\_t**](structhal_1_1magnetometer_1_1read__t.md) _Result from reading the accelerometer._ 
* **struct** [**hal::motor::power\_t**](structhal_1_1motor_1_1power__t.md) _Feedback from setting the motor power._ 
* **struct** [**hal::mpl::mpl3115a2::altitude\_read\_t**](structhal_1_1mpl_1_1mpl3115a2_1_1altitude__read__t.md) 
* **struct** [**hal::mpl::mpl3115a2::pressure\_read\_t**](structhal_1_1mpl_1_1mpl3115a2_1_1pressure__read__t.md) 
* **struct** [**hal::mpl::mpl3115a2::temperature\_read\_t**](structhal_1_1mpl_1_1mpl3115a2_1_1temperature__read__t.md) 
* **struct** [**hal::nibble\_mask**](structhal_1_1nibble__mask.md) _Helper for generating nibble position masks._ 
* **struct** [**hal::output\_pin::level\_t**](structhal_1_1output__pin_1_1level__t.md) _Pin level reading structure._ 
* **struct** [**hal::output\_pin::set\_level\_t**](structhal_1_1output__pin_1_1set__level__t.md) _Feedback from setting the pin state._ 
* **struct** [**hal::output\_pin::settings**](structhal_1_1output__pin_1_1settings.md) _Generic settings for output pins._ 
* **struct** [**hal::pwm::duty\_cycle\_t**](structhal_1_1pwm_1_1duty__cycle__t.md) _Feedback setting the pwm duty cycle._ 
* **struct** [**hal::pwm::frequency\_t**](structhal_1_1pwm_1_1frequency__t.md) _Feedback setting the pwm frequency._ 
* **struct** [**hal::rmd::drc::feedback\_t**](structhal_1_1rmd_1_1drc_1_1feedback__t.md) 
* **struct** [**hal::rmd::mc\_x::feedback\_t**](structhal_1_1rmd_1_1mc__x_1_1feedback__t.md) 
* **struct** [**hal::rotation\_sensor::read\_t**](structhal_1_1rotation__sensor_1_1read__t.md) _Result from reading the rotation sensor._ 
* **struct** [**hal::serial::flush\_t**](structhal_1_1serial_1_1flush__t.md) _Feedback from performing a flush operation._ 
* **struct** [**hal::serial::read\_t**](structhal_1_1serial_1_1read__t.md) _Return type for serial read operations._ 
* **struct** [**hal::serial::settings**](structhal_1_1serial_1_1settings.md) _Generic settings for a standard serial device._ 
* **struct** [**hal::serial::write\_t**](structhal_1_1serial_1_1write__t.md) _Return type for serial write operations._ 
* **struct** [**hal::servo::position\_t**](structhal_1_1servo_1_1position__t.md) _Feedback from setting the servo position._ 
* **struct** [**hal::servo::range\_error**](structhal_1_1servo_1_1range__error.md) _Error information indicating the range of the servo._ 
* **struct** [**hal::soft::rc\_servo::settings**](structhal_1_1soft_1_1rc__servo_1_1settings.md) _Information about the RC servo needed to control it properly._ 
* **struct** [**hal::spi::settings**](structhal_1_1spi_1_1settings.md) _Generic settings for a standard SPI device._ 
* **struct** [**hal::spi::transfer\_t**](structhal_1_1spi_1_1transfer__t.md) _Feedback from performing a transfer on the spi bus._ 
* **struct** [**hal::steady\_clock::frequency\_t**](structhal_1_1steady__clock_1_1frequency__t.md) _Result from requesting the operating frequency of the steady clock._ 
* **struct** [**hal::steady\_clock::uptime\_t**](structhal_1_1steady__clock_1_1uptime__t.md) _Result from calling uptime._ 
* **struct** [**hal::stm32f1::clock\_tree**](structhal_1_1stm32f1_1_1clock__tree.md) 
* **struct** [**hal::stm32f1::clock\_tree::ahb\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1ahb__t.md) _Defines the configuration of the dividers beyond system clock mux._ 
* **struct** [**hal::stm32f1::clock\_tree::ahb\_t::apb1\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1ahb__t_1_1apb1__t.md) _Maximum rate of 36 MHz._ 
* **struct** [**hal::stm32f1::clock\_tree::ahb\_t::apb2\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1ahb__t_1_1apb2__t.md) 
* **struct** [**hal::stm32f1::clock\_tree::ahb\_t::apb2\_t::adc\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1ahb__t_1_1apb2__t_1_1adc__t.md) 
* **struct** [**hal::stm32f1::clock\_tree::pll\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1pll__t.md) _Defines the configuration of the PLL._ 
* **struct** [**hal::stm32f1::clock\_tree::pll\_t::usb\_divider\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1pll__t_1_1usb__divider__t.md) 
* **struct** [**hal::stm32f1::clock\_tree::rtc\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1rtc__t.md) _Defines the configuration for the RTC._ 
* **struct** [**hal::temperature\_sensor::read\_t**](structhal_1_1temperature__sensor_1_1read__t.md) _Result from reading the temperature sensor._ 
* **struct** [**hal::timer::cancel\_t**](structhal_1_1timer_1_1cancel__t.md) _Feedback from cancelling a timer._ 
* **struct** [**hal::timer::is\_running\_t**](structhal_1_1timer_1_1is__running__t.md) _Feedback after checking if the timer is running._ 
* **struct** [**hal::timer::out\_of\_bounds\_error**](structhal_1_1timer_1_1out__of__bounds__error.md) _Error type indicating that the desired time delay is not achievable with this timer._ 
* **struct** [**hal::timer::schedule\_t**](structhal_1_1timer_1_1schedule__t.md) _Feedback from scheduling a timer._ 
* **class** **std::false_type**    
    * **struct** [**hal::error::invalid\_option\_t**](structhal_1_1error_1_1invalid__option__t.md) _Used for defining static\_asserts that should always fail, but only if the static\_assert line is hit via_ `if constexpr` _control block. Prefer to NOT use this directly but to use_`invalid_option` _instead._
