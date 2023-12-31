
# Class List


Here are the classes, structs, unions and interfaces with brief descriptions:

* **namespace** [**hal**](namespacehal.md) _The foundation of libhal containing, interfaces, utilities and soft drivers._     
    * **class** [**accelerometer**](classhal_1_1accelerometer.md) _Acceleration sensing hardware abstraction interface._     
        * **struct** [**read\_t**](structhal_1_1accelerometer_1_1read__t.md) _Result from reading the accelerometer._     
    * **class** [**adc**](classhal_1_1adc.md) _Analog to Digital Converter (ADC) hardware abstraction interface._     
        * **struct** [**read\_t**](structhal_1_1adc_1_1read__t.md) _Result from reading the adc._     
    * **class** [**angular\_velocity\_sensor**](classhal_1_1angular__velocity__sensor.md) _angular velocity sensor hardware abstraction interface_     
        * **struct** [**read\_t**](structhal_1_1angular__velocity__sensor_1_1read__t.md) _angular velocity reading from the sensor_     
    * **struct** [**bit\_limits**](structhal_1_1bit__limits.md) _Similar to std::numeric\_limits&lt;T&gt; except that this object can give properties of integral types of arbitrary bit widths._     
    * **struct** [**bit\_mask**](structhal_1_1bit__mask.md) _Represents a bit mask of contiguous bits._     
    * **class** [**bit\_modify**](classhal_1_1bit__modify.md)     
    * **class** [**bit\_value**](classhal_1_1bit__value.md)     
    * **struct** [**byte\_mask**](structhal_1_1byte__mask.md) _Helper for generating byte position masks._     
    * **class** [**can**](classhal_1_1can.md) _Controller Area Network (CAN bus) hardware abstraction interface._     
        * **struct** [**message\_t**](structhal_1_1can_1_1message__t.md) _A CAN message._     
        * **struct** [**send\_t**](structhal_1_1can_1_1send__t.md) _Feedback from sending data over the CAN BUS._ 
        * **struct** [**settings**](structhal_1_1can_1_1settings.md) _Generic settings for a can peripheral._     
    * **class** [**can\_router**](classhal_1_1can__router.md) _Route CAN messages received on the can bus to callbacks based on ID._     
        * **struct** [**route**](structhal_1_1can__router_1_1route.md)     
    * **namespace** [**cortex\_m**](namespacehal_1_1cortex__m.md) _libhal drivers for the ARM Cortex-M series of processors_     
        * **class** [**dwt\_counter**](classhal_1_1cortex__m_1_1dwt__counter.md) _A counter with a frequency fixed to the CPU clock rate._     
        * **class** [**interrupt**](classhal_1_1cortex__m_1_1interrupt.md) _Cortex M series interrupt controller._     
            * **class** [**exception\_number**](classhal_1_1cortex__m_1_1interrupt_1_1exception__number.md) _represents an interrupt request number along with helper functions for setting up the interrupt controller registers._     
        * **class** [**systick\_timer**](classhal_1_1cortex__m_1_1systick__timer.md) _SysTick driver for the ARM Cortex Mx series chips._     
    * **class** [**dac**](classhal_1_1dac.md) _Digital to Analog Converter (DAC) hardware abstraction interface._     
        * **struct** [**write\_t**](structhal_1_1dac_1_1write__t.md) _Feedback from writing a voltage to the dac._ 
    * **class** [**distance\_sensor**](classhal_1_1distance__sensor.md) _Linear distance hardware abstraction interface._     
        * **struct** [**read\_t**](structhal_1_1distance__sensor_1_1read__t.md) _Result from sampling the distance sensor._     
    * **namespace** [**error**](namespacehal_1_1error.md) _Error objects, templates, and constants._     
        * **struct** [**invalid\_option\_t**](structhal_1_1error_1_1invalid__option__t.md) _Used for defining static\_asserts that should always fail, but only if the static\_assert line is hit via_ `if constexpr` _control block. Prefer to NOT use this directly but to use_`invalid_option` _instead._
    * **namespace** [**esp8266**](namespacehal_1_1esp8266.md) _libhal compatible libraries for the_ [_**esp8266**_](namespacehal_1_1esp8266.md) _device and microcontroller_    
        * **class** [**at**](classhal_1_1esp8266_1_1at.md) _AT Command network driver for the_ [_**esp8266**_](namespacehal_1_1esp8266.md) _._    
            * **struct** [**read\_t**](structhal_1_1esp8266_1_1at_1_1read__t.md)     
            * **struct** [**socket\_config**](structhal_1_1esp8266_1_1at_1_1socket__config.md)     
            * **struct** [**write\_t**](structhal_1_1esp8266_1_1at_1_1write__t.md)     
    * **class** [**gyroscope**](classhal_1_1gyroscope.md) _Angular velocity sensing hardware abstraction interface._     
        * **struct** [**read\_t**](structhal_1_1gyroscope_1_1read__t.md) _Result from reading the gyroscope._     
    * **class** [**i2c**](classhal_1_1i2c.md) _Inter-integrated Circuit (I2C) hardware abstract interface._     
        * **struct** [**settings**](structhal_1_1i2c_1_1settings.md) _Generic settings for a standard I2C device._     
        * **struct** [**transaction\_t**](structhal_1_1i2c_1_1transaction__t.md) _Feedback from performing a transaction on the_ [_**i2c**_](classhal_1_1i2c.md) _bus._
    * **class** [**input\_pin**](classhal_1_1input__pin.md) _Digital input pin hardware abstraction interface._     
        * **struct** [**level\_t**](structhal_1_1input__pin_1_1level__t.md) _Input pin level reading structure._     
        * **struct** [**settings**](structhal_1_1input__pin_1_1settings.md) _Generic settings for input pins._     
    * **class** [**interrupt\_pin**](classhal_1_1interrupt__pin.md) _Digital interrupt pin hardware abstraction._     
        * **struct** [**settings**](structhal_1_1interrupt__pin_1_1settings.md) _Generic settings for interrupt pins._     
    * **namespace** [**literals**](namespacehal_1_1literals.md) _Namespace containing user defined literals for the hal standard units._     
    * **namespace** [**lpc40**](namespacehal_1_1lpc40.md) _libhal drivers for the_ [_**lpc40**_](namespacehal_1_1lpc40.md) _series of microcontrollers from NXP_    
        * **class** [**adc**](classhal_1_1lpc40_1_1adc.md) _Analog to digital converter._     
            * **struct** [**channel**](structhal_1_1lpc40_1_1adc_1_1channel.md) _Channel specific information._     
        * **class** [**can**](classhal_1_1lpc40_1_1can.md)     
            * **struct** [**port**](structhal_1_1lpc40_1_1can_1_1port.md)     
        * **class** [**clock**](classhal_1_1lpc40_1_1clock.md) _Allows user code to manipulate and retrieve the various system clocks speeds._     
            * **struct** [**configuration**](structhal_1_1lpc40_1_1clock_1_1configuration.md) _Clock configuration object._     
                * **struct** [**cpu\_t**](structhal_1_1lpc40_1_1clock_1_1configuration_1_1cpu__t.md) _cpu clock control config struct_     
                * **struct** [**pll\_t**](structhal_1_1lpc40_1_1clock_1_1configuration_1_1pll__t.md) _phase locked loops config struct_     
                * **struct** [**spifi\_t**](structhal_1_1lpc40_1_1clock_1_1configuration_1_1spifi__t.md) _spifi clock control config struct_     
                * **struct** [**usb\_t**](structhal_1_1lpc40_1_1clock_1_1configuration_1_1usb__t.md) _usb clock control config struct_     
        * **class** [**i2c**](classhal_1_1lpc40_1_1i2c.md)     
            * **struct** [**bus\_info**](structhal_1_1lpc40_1_1i2c_1_1bus__info.md)     
        * **class** [**input\_pin**](classhal_1_1lpc40_1_1input__pin.md) _Input pin implementation for the lpc40xx._     
        * **class** [**interrupt\_pin**](classhal_1_1lpc40_1_1interrupt__pin.md) _Interrupt pin implementation for the lpc40xx._     
        * **class** [**output\_pin**](classhal_1_1lpc40_1_1output__pin.md) _Output pin implementation for the lpc40xx._     
        * **class** [**pin**](classhal_1_1lpc40_1_1pin.md) _lpc40xx pin multiplexing and control driver used drivers and apps seeking to tune the pins._     
        * **class** [**power**](classhal_1_1lpc40_1_1power.md) _Power control for lpc40xx peripherals._     
        * **class** [**pwm**](classhal_1_1lpc40_1_1pwm.md) _pwm driver for the lpc40xx series of micro controllers_     
            * **struct** [**channel**](structhal_1_1lpc40_1_1pwm_1_1channel.md) _Channel specific information._     
        * **class** [**spi**](classhal_1_1lpc40_1_1spi.md)     
            * **struct** [**bus\_info**](structhal_1_1lpc40_1_1spi_1_1bus__info.md) _Information used to configure the spi bus._     
        * **class** [**uart**](classhal_1_1lpc40_1_1uart.md) _Implementation of the UART peripheral for the LPC40xx family of microcontrollers._     
            * **struct** [**port**](structhal_1_1lpc40_1_1uart_1_1port.md)     
    * **class** [**magnetometer**](classhal_1_1magnetometer.md) _Magnetic field strength sensing hardware abstraction interface._     
        * **struct** [**read\_t**](structhal_1_1magnetometer_1_1read__t.md) _Result from reading the accelerometer._     
    * **namespace** [**micromod**](namespacehal_1_1micromod.md)     
        * **namespace** [**v1**](namespacehal_1_1micromod_1_1v1.md)     
    * **namespace** [**mock**](namespacehal_1_1mock.md)     
        * **struct** [**adc**](structhal_1_1mock_1_1adc.md) _Mock adc implementation for use in unit tests and simulations._     
        * **struct** [**can**](structhal_1_1mock_1_1can.md) _Mock can implementation for use in unit tests and simulations._     
        * **struct** [**dac**](structhal_1_1mock_1_1dac.md) _Mock dac implementation for use in unit tests and simulations with a spy function for_ [_**write()**_](classhal_1_1dac.md#function-write) __    
        * **struct** [**input\_pin**](structhal_1_1mock_1_1input__pin.md) _mock_ [_**input\_pin**_](structhal_1_1mock_1_1input__pin.md) _implementation for use in unit tests and simulations._    
        * **struct** [**interrupt\_pin**](structhal_1_1mock_1_1interrupt__pin.md) _mock_ [_**interrupt\_pin**_](structhal_1_1mock_1_1interrupt__pin.md) _implementation for use in unit tests and simulations._    
        * **struct** [**motor**](structhal_1_1mock_1_1motor.md) _Mock motor implementation for use in unit tests and simulations with a spy function for_ [_**power()**_](classhal_1_1motor.md#function-power) __    
        * **struct** [**output\_pin**](structhal_1_1mock_1_1output__pin.md) _mock output pin for use in unit tests and simulations_     
        * **struct** [**pwm**](structhal_1_1mock_1_1pwm.md) _Mock pwm implementation for use in unit tests and simulations with spy functions for_ [_**frequency()**_](classhal_1_1pwm.md#function-frequency) _and_[_**duty\_cycle()**_](classhal_1_1pwm.md#function-duty_cycle) _._    
        * **struct** [**steady\_clock**](structhal_1_1mock_1_1steady__clock.md) _mock_ [_**steady\_clock**_](structhal_1_1mock_1_1steady__clock.md) _implementation for use in unit tests and simulations._    
        * **struct** [**timer**](structhal_1_1mock_1_1timer.md) _Mock timer implementation for use in unit tests and simulations with spy functions for_ [_**schedule()**_](classhal_1_1timer.md#function-schedule) _, clear(), and_[_**is\_running()**_](classhal_1_1timer.md#function-is_running) __    
        * **struct** [**write\_only\_spi**](structhal_1_1mock_1_1write__only__spi.md) _Mock spi implementation for use in unit tests and simulations with a spy functions for_ [_**configure()**_](classhal_1_1spi.md#function-configure) _and a record for the_[_**transfer()**_](classhal_1_1spi.md#function-transfer) _out data. The record ignores the in buffer and just stores the data being sent so it can be inspected later._    
    * **class** [**motor**](classhal_1_1motor.md) _Hardware abstraction for an open loop rotational actuator._     
        * **struct** [**power\_t**](structhal_1_1motor_1_1power__t.md) _Feedback from setting the motor power._ 
    * **class** [**move\_interceptor**](classhal_1_1move__interceptor.md) _Use this to perform changes on an object its move constructor is executed._     
    * **namespace** [**mpl**](namespacehal_1_1mpl.md)     
        * **class** [**mpl3115a2**](classhal_1_1mpl_1_1mpl3115a2.md)     
            * **struct** [**altitude\_read\_t**](structhal_1_1mpl_1_1mpl3115a2_1_1altitude__read__t.md)     
            * **struct** [**pressure\_read\_t**](structhal_1_1mpl_1_1mpl3115a2_1_1pressure__read__t.md)     
            * **struct** [**temperature\_read\_t**](structhal_1_1mpl_1_1mpl3115a2_1_1temperature__read__t.md)     
    * **struct** [**nibble\_mask**](structhal_1_1nibble__mask.md) _Helper for generating nibble position masks._     
    * **class** [**output\_pin**](classhal_1_1output__pin.md) _Digital output pin hardware abstraction._     
        * **struct** [**level\_t**](structhal_1_1output__pin_1_1level__t.md) _Pin level reading structure._     
        * **struct** [**set\_level\_t**](structhal_1_1output__pin_1_1set__level__t.md) _Feedback from setting the pin state._ 
        * **struct** [**settings**](structhal_1_1output__pin_1_1settings.md) _Generic settings for output pins._     
    * **class** [**overflow\_counter**](classhal_1_1overflow__counter.md) _Extend a counter's count from an arbitrary bit width to 64-bits by detecting overflows in the count. Each detected overflow is added to an overflow counter which is combined with the current count in order create a count up to 64-bits in length._     
    * **class** [**pwm**](classhal_1_1pwm.md) _Pulse Width Modulation (PWM) channel hardware abstraction._     
        * **struct** [**duty\_cycle\_t**](structhal_1_1pwm_1_1duty__cycle__t.md) _Feedback setting the pwm duty cycle._ 
        * **struct** [**frequency\_t**](structhal_1_1pwm_1_1frequency__t.md) _Feedback setting the pwm frequency._ 
    * **class** [**read\_into**](classhal_1_1read__into.md) _Non-blocking callable for reading serial data into a buffer._     
    * **class** [**read\_uint32**](classhal_1_1read__uint32.md) _Read bytes from serial port and convert to integer._     
    * **class** [**read\_upto**](classhal_1_1read__upto.md) _Discard received bytes until the sequence is found._     
    * **namespace** [**rmd**](namespacehal_1_1rmd.md)     
        * **class** [**drc**](classhal_1_1rmd_1_1drc.md) _Driver for RMD motors equip with the DRC motor drivers._     
            * **struct** [**feedback\_t**](structhal_1_1rmd_1_1drc_1_1feedback__t.md)     
        * **class** [**drc\_angular\_velocity\_sensor**](classhal_1_1rmd_1_1drc__angular__velocity__sensor.md) _angular velocity sensor adaptor for DRC_     
        * **class** [**drc\_motor**](classhal_1_1rmd_1_1drc__motor.md) _Motor interface adaptor for DRC._     
        * **class** [**drc\_rotation\_sensor**](classhal_1_1rmd_1_1drc__rotation__sensor.md) _Rotation sensor adaptor for DRC motors._     
        * **class** [**drc\_servo**](classhal_1_1rmd_1_1drc__servo.md) _Servo interface adaptor for DRC._     
        * **class** [**drc\_temperature\_sensor**](classhal_1_1rmd_1_1drc__temperature__sensor.md) _Temperature sensor adaptor for DRC motors._     
        * **class** [**mc\_x**](classhal_1_1rmd_1_1mc__x.md) _Driver for RMD series motors equip with the MC-X motor driver._     
            * **struct** [**feedback\_t**](structhal_1_1rmd_1_1mc__x_1_1feedback__t.md)     
        * **class** [**mc\_x\_motor**](classhal_1_1rmd_1_1mc__x__motor.md) _Control a_ [_**mc\_x**_](classhal_1_1rmd_1_1mc__x.md) _motor driver like a_[_**hal::motor**_](classhal_1_1motor.md) _._    
        * **class** [**mc\_x\_rotation**](classhal_1_1rmd_1_1mc__x__rotation.md) _Reports the rotation of the DRC motor._     
        * **class** [**mc\_x\_servo**](classhal_1_1rmd_1_1mc__x__servo.md) _Control a_ [_**mc\_x**_](classhal_1_1rmd_1_1mc__x.md) _motor driver like a_[_**hal::servo**_](classhal_1_1servo.md) _._    
        * **class** [**mc\_x\_temperature**](classhal_1_1rmd_1_1mc__x__temperature.md) _Reports the temperature of the DRC motor._     
    * **class** [**rotation\_sensor**](classhal_1_1rotation__sensor.md) _Rotation measuring hardware abstraction interface._     
        * **struct** [**read\_t**](structhal_1_1rotation__sensor_1_1read__t.md) _Result from reading the rotation sensor._     
    * **class** [**serial**](classhal_1_1serial.md) _Hardware abstract interface for the serial communication protocol._     
        * **struct** [**flush\_t**](structhal_1_1serial_1_1flush__t.md) _Feedback from performing a flush operation._ 
        * **struct** [**read\_t**](structhal_1_1serial_1_1read__t.md) _Return type for serial read operations._     
        * **struct** [**settings**](structhal_1_1serial_1_1settings.md) _Generic settings for a standard serial device._     
        * **struct** [**write\_t**](structhal_1_1serial_1_1write__t.md) _Return type for serial write operations._     
    * **class** [**servo**](classhal_1_1servo.md) _Hardware abstraction for a closed loop position controlled rotational actuator._     
        * **struct** [**position\_t**](structhal_1_1servo_1_1position__t.md) _Feedback from setting the servo position._ 
        * **struct** [**range\_error**](structhal_1_1servo_1_1range__error.md) _Error information indicating the range of the servo._     
    * **class** [**skip\_past**](classhal_1_1skip__past.md) _Discard received bytes until the sequence is found._     
    * **namespace** [**soft**](namespacehal_1_1soft.md)     
        * **class** [**adc\_multiplexer**](classhal_1_1soft_1_1adc__multiplexer.md) _A driver for an ADC multiplexer that manages and reads ADC mux pins. This driver is intended to be used with multiplexers that use digital signals. An ADC multiplexer can be used to expand the number of input channels of an ADC._     
        * **class** [**adc\_mux\_pin**](classhal_1_1soft_1_1adc__mux__pin.md) _A class that represents a multiplexer pin for ADC._     
        * **class** [**inert\_accelerometer**](classhal_1_1soft_1_1inert__accelerometer.md) _Inert implementation of acceleration sensing hardware._     
        * **class** [**inert\_adc**](classhal_1_1soft_1_1inert__adc.md) _Inert implementation of Analog to Digital Converter (ADC) hardware._     
        * **class** [**inert\_dac**](classhal_1_1soft_1_1inert__dac.md) _Inert implementation of Digital to Analog Converter (DAC) hardware._     
        * **class** [**inert\_distance\_sensor**](classhal_1_1soft_1_1inert__distance__sensor.md) _Inert implementation of linear distance hardware._     
        * **class** [**inert\_gyroscope**](classhal_1_1soft_1_1inert__gyroscope.md) _Inert implementation of angular velocity sensing hardware._     
        * **class** [**inert\_input\_pin**](classhal_1_1soft_1_1inert__input__pin.md) _Inert implementation of digital input pin hardware._     
        * **class** [**inert\_interrupt\_pin**](classhal_1_1soft_1_1inert__interrupt__pin.md) _Inert implementation of digital interrupt pin hardware._     
        * **class** [**inert\_magnetometer**](classhal_1_1soft_1_1inert__magnetometer.md) _Inert implementation of magnetic field strength sensing hardware._     
        * **class** [**inert\_motor**](classhal_1_1soft_1_1inert__motor.md) _Inert implementation of open loop motorized actuator hardware._     
        * **class** [**inert\_output\_pin**](classhal_1_1soft_1_1inert__output__pin.md) _Inert implementation of digital output pin hardware._     
        * **class** [**inert\_pwm**](classhal_1_1soft_1_1inert__pwm.md) _Inert implementation of Pulse Width Modulation (PWM) channel hardware._     
        * **class** [**inert\_rotation\_sensor**](classhal_1_1soft_1_1inert__rotation__sensor.md) _Inert implementation of rotation measuring hardware._     
        * **class** [**inert\_steady\_clock**](classhal_1_1soft_1_1inert__steady__clock.md) _Inert implementation of steady clock mechanism._     
        * **class** [**inert\_temperature\_sensor**](classhal_1_1soft_1_1inert__temperature__sensor.md) _Inert implementation of temperature sensing hardware._     
        * **class** [**inert\_timer**](classhal_1_1soft_1_1inert__timer.md) _Inert implementation of timer hardware._     
        * **class** [**input\_pin\_inverter**](classhal_1_1soft_1_1input__pin__inverter.md)     
        * **class** [**minimum\_speed\_i2c**](classhal_1_1soft_1_1minimum__speed__i2c.md) _A_ [_**i2c**_](classhal_1_1i2c.md) _wrapper to ensure that the lowest_[_**i2c**_](classhal_1_1i2c.md) _device frequency is used._    
        * **class** [**output\_pin\_inverter**](classhal_1_1soft_1_1output__pin__inverter.md)     
        * **class** [**rc\_servo**](classhal_1_1soft_1_1rc__servo.md) _Generic RC servo driver._     
            * **struct** [**settings**](structhal_1_1soft_1_1rc__servo_1_1settings.md) _Information about the RC servo needed to control it properly._     
    * **class** [**spi**](classhal_1_1spi.md) _Serial peripheral interface (SPI) communication protocol hardware abstract interface._     
        * **struct** [**settings**](structhal_1_1spi_1_1settings.md) _Generic settings for a standard SPI device._     
        * **struct** [**transfer\_t**](structhal_1_1spi_1_1transfer__t.md) _Feedback from performing a transfer on the spi bus._ 
    * **class** [**spy\_handler**](classhal_1_1spy__handler.md) _Helper utility for making mocks for class functions that return status._     
    * **class** [**static\_callable**](classhal_1_1static__callable.md) _General class which will be used to allow for signature to be used and then split by the below class._ 
    * **class** [**static\_callable&lt; owner\_class, reference\_designator, return\_t(args\_t... p\_args)&gt;**](classhal_1_1static__callable_3_01owner__class_00_01reference__designator_00_01return__t_07args__t_8_8_8_01p__args_08_4.md) _Specialization of_ [_**static\_callable**_](classhal_1_1static__callable.md) _with the return type and arguments split up._    
    * **class** [**static\_list**](classhal_1_1static__list.md) [_**static\_list**_](classhal_1_1static__list.md) _is a non-owning non-allocating doubly linked list container with O(1) memory utilization._    
        * **class** [**item**](classhal_1_1static__list_1_1item.md) _Item/node within the static linked list._     
        * **class** [**item\_iterator**](classhal_1_1static__list_1_1item__iterator.md) _Iterator for the static list._     
    * **class** [**steady\_clock**](classhal_1_1steady__clock.md) _Hardware abstraction interface for a steady clock mechanism._     
        * **struct** [**frequency\_t**](structhal_1_1steady__clock_1_1frequency__t.md) _Result from requesting the operating frequency of the steady clock._     
        * **struct** [**uptime\_t**](structhal_1_1steady__clock_1_1uptime__t.md) _Result from calling uptime._     
    * **class** [**steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md) _Timeout object based on_ [_**hal::steady\_clock**_](classhal_1_1steady__clock.md) _._    
    * **namespace** [**stm32f1**](namespacehal_1_1stm32f1.md)     
        * **struct** [**clock\_tree**](structhal_1_1stm32f1_1_1clock__tree.md)     
            * **struct** [**ahb\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1ahb__t.md) _Defines the configuration of the dividers beyond system clock mux._     
                * **struct** [**apb1\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1ahb__t_1_1apb1__t.md) _Maximum rate of 36 MHz._     
                * **struct** [**apb2\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1ahb__t_1_1apb2__t.md)     
                    * **struct** [**adc\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1ahb__t_1_1apb2__t_1_1adc__t.md)     
            * **struct** [**pll\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1pll__t.md) _Defines the configuration of the PLL._     
                * **struct** [**usb\_divider\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1pll__t_1_1usb__divider__t.md)     
            * **struct** [**rtc\_t**](structhal_1_1stm32f1_1_1clock__tree_1_1rtc__t.md) _Defines the configuration for the RTC._     
        * **class** [**output\_pin**](classhal_1_1stm32f1_1_1output__pin.md) _Output pin implementation for the stm32::f10x._     
    * **class** [**stream\_fill**](classhal_1_1stream__fill.md) _Non-blocking callable for reading serial data into a buffer._     
    * **class** [**stream\_fill\_upto**](classhal_1_1stream__fill__upto.md) _Discard received bytes until the sequence is found._     
    * **class** [**stream\_find**](classhal_1_1stream__find.md) _Discard received bytes until the sequence is found._     
    * **class** [**stream\_parse**](classhal_1_1stream__parse.md) _Read bytes from stream and convert to integer._     
    * **class** [**stream\_skip**](classhal_1_1stream__skip.md) _Skip number of bytes in a byte stream._     
    * **class** [**temperature\_sensor**](classhal_1_1temperature__sensor.md) _Temperature sensing hardware abstraction interface._     
        * **struct** [**read\_t**](structhal_1_1temperature__sensor_1_1read__t.md) _Result from reading the temperature sensor._     
    * **class** [**timer**](classhal_1_1timer.md) _Timer hardware abstraction interface._     
        * **struct** [**cancel\_t**](structhal_1_1timer_1_1cancel__t.md) _Feedback from cancelling a timer._ 
        * **struct** [**is\_running\_t**](structhal_1_1timer_1_1is__running__t.md) _Feedback after checking if the timer is running._     
        * **struct** [**out\_of\_bounds\_error**](structhal_1_1timer_1_1out__of__bounds__error.md) _Error type indicating that the desired time delay is not achievable with this timer._     
        * **struct** [**schedule\_t**](structhal_1_1timer_1_1schedule__t.md) _Feedback from scheduling a timer._ 
* **class** [**packet\_manager**](classhal_1_1esp8266_1_1at_1_1packet__manager.md)     
* **struct** [**ranges**](structhal_1_1soft_1_1rc__servo_1_1ranges.md)     
* **namespace** [**std**](namespacestd.md) 

