

# Namespace hal



[**Namespace List**](namespaces.md) **>** [**hal**](namespacehal.md)


















## Namespaces

| Type | Name |
| ---: | :--- |
| namespace | [**bit**](namespacehal_1_1bit.md) <br> |
| namespace | [**cortex\_m**](namespacehal_1_1cortex__m.md) <br> |
| namespace | [**error**](namespacehal_1_1error.md) <br> |
| namespace | [**esp8266**](namespacehal_1_1esp8266.md) <br> |
| namespace | [**literals**](namespacehal_1_1literals.md) <br> |
| namespace | [**lpc40**](namespacehal_1_1lpc40.md) <br> |
| namespace | [**mock**](namespacehal_1_1mock.md) <br> |
| namespace | [**rmd**](namespacehal_1_1rmd.md) <br> |
| namespace | [**stm32f1**](namespacehal_1_1stm32f1.md) <br> |
| namespace | [**stream**](namespacehal_1_1stream.md) <br> |


## Classes

| Type | Name |
| ---: | :--- |
| class | [**accelerometer**](classhal_1_1accelerometer.md) <br>_Acceleration sensing hardware abstraction interface._  |
| class | [**adc**](classhal_1_1adc.md) <br>_Analog to Digital Converter (ADC) hardware abstraction interface._  |
| class | [**adc\_multiplexer**](classhal_1_1adc__multiplexer.md) <br>_A driver for an ADC multiplexer that manages and reads ADC mux pins. This driver is intended to be used with multiplexers that use digital signals. An ADC multiplexer can be used to expand the number of input channels of an ADC._  |
| class | [**adc\_mux\_pin**](classhal_1_1adc__mux__pin.md) <br>_A class that represents a multiplexer pin for ADC._  |
| struct | [**bit\_limits**](structhal_1_1bit__limits.md) &lt;BitWidth, int\_t&gt;<br>_Similar to std::numeric\_limits&lt;T&gt; except that this object can give properties of integral types of arbitrary bit widths._  |
| class | [**can**](classhal_1_1can.md) <br>_Controller Area Network (CAN bus) hardware abstraction interface._  |
| class | [**can\_router**](classhal_1_1can__router.md) <br>_Route CAN messages received on the can bus to callbacks based on ID._  |
| class | [**dac**](classhal_1_1dac.md) <br>_Digital to Analog Converter (DAC) hardware abstraction interface._  |
| class | [**distance\_sensor**](classhal_1_1distance__sensor.md) <br>_Linear distance hardware abstraction interface._  |
| class | [**gyroscope**](classhal_1_1gyroscope.md) <br>_Angular velocity sensing hardware abstraction interface._  |
| class | [**i2c**](classhal_1_1i2c.md) <br>_Inter-integrated Circuit (I2C) hardware abstract interface._  |
| class | [**inert\_accelerometer**](classhal_1_1inert__accelerometer.md) <br>_Inert implementation of acceleration sensing hardware._  |
| class | [**inert\_adc**](classhal_1_1inert__adc.md) <br>_Inert implementation of Analog to Digital Converter (ADC) hardware._  |
| class | [**inert\_can**](classhal_1_1inert__can.md) <br>_Inert implementation of Controller Area Network (CAN bus) hardware._  |
| class | [**inert\_dac**](classhal_1_1inert__dac.md) <br>_Inert implementation of Digital to Analog Converter (DAC) hardware._  |
| class | [**inert\_distance\_sensor**](classhal_1_1inert__distance__sensor.md) <br>_Inert implementation of linear distance hardware._  |
| class | [**inert\_gyroscope**](classhal_1_1inert__gyroscope.md) <br>_Inert implementation of angular velocity sensing hardware._  |
| class | [**inert\_i2c**](classhal_1_1inert__i2c.md) <br>_Inert implementation of Inter-integrated Circuit (I2C) hardware._  |
| class | [**inert\_input\_pin**](classhal_1_1inert__input__pin.md) <br>_Inert implementation of digital input pin hardware._  |
| class | [**inert\_interrupt\_pin**](classhal_1_1inert__interrupt__pin.md) <br>_Inert implementation of digital interrupt pin hardware._  |
| class | [**inert\_magnetometer**](classhal_1_1inert__magnetometer.md) <br>_Inert implementation of magnetic field strength sensing hardware._  |
| class | [**inert\_motor**](classhal_1_1inert__motor.md) <br>_Inert implementation of open loop motorized actuator hardware._  |
| class | [**inert\_output\_pin**](classhal_1_1inert__output__pin.md) <br>_Inert implementation of digital output pin hardware._  |
| class | [**inert\_pwm**](classhal_1_1inert__pwm.md) <br>_Inert implementation of Pulse Width Modulation (PWM) channel hardware._  |
| class | [**inert\_rotation\_sensor**](classhal_1_1inert__rotation__sensor.md) <br>_Inert implementation of rotation measuring hardware._  |
| class | [**inert\_serial**](classhal_1_1inert__serial.md) <br>_Inert implementation of serial communication protocol hardware._  |
| class | [**inert\_socket**](classhal_1_1inert__socket.md) <br>_Inert implementation of generic network sockets._  |
| class | [**inert\_spi**](classhal_1_1inert__spi.md) <br>_Inert implementation of Serial peripheral interface (SPI) communication protocol hardware._  |
| class | [**inert\_steady\_clock**](classhal_1_1inert__steady__clock.md) <br>_Inert implementation of steady clock mechanism._  |
| class | [**inert\_temperature\_sensor**](classhal_1_1inert__temperature__sensor.md) <br>_Inert implementation of temperature sensing hardware._  |
| class | [**inert\_timer**](classhal_1_1inert__timer.md) <br>_Inert implementation of timer hardware._  |
| class | [**input\_pin**](classhal_1_1input__pin.md) <br>_Digital input pin hardware abstraction interface._  |
| class | [**interrupt\_pin**](classhal_1_1interrupt__pin.md) <br>_Digital interrupt pin hardware abstraction._  |
| class | [**magnetometer**](classhal_1_1magnetometer.md) <br>_Magnetic field strength sensing hardware abstraction interface._  |
| class | [**minimum\_speed\_i2c**](classhal_1_1minimum__speed__i2c.md) <br>_A_ [_**i2c**_](classhal_1_1i2c.md) _wrapper to ensure that the lowest_[_**i2c**_](classhal_1_1i2c.md) _device frequency is used._ |
| class | [**motor**](classhal_1_1motor.md) <br>_Hardware abstraction for an open loop rotational actuator._  |
| class | [**move\_interceptor**](classhal_1_1move__interceptor.md) &lt;class T&gt;<br>_Use this to perform changes on an object its move constructor is executed._  |
| class | [**output\_pin**](classhal_1_1output__pin.md) <br>_Digital output pin hardware abstraction._  |
| class | [**overflow\_counter**](classhal_1_1overflow__counter.md) &lt;CountBitWidth&gt;<br>_Extend a counter's count from an arbitrary bit width to 64-bits by detecting overflows in the count. Each detected overflow is added to an overflow counter which is combined with the current count in order create a count up to 64-bits in length._  |
| class | [**pwm**](classhal_1_1pwm.md) <br>_Pulse Width Modulation (PWM) channel hardware abstraction._  |
| class | [**rc\_servo**](classhal_1_1rc__servo.md) <br>_Generic RC servo driver._  |
| class | [**read\_into**](classhal_1_1read__into.md) <br>_Non-blocking callable for reading serial data into a buffer._  |
| class | [**read\_uint32**](classhal_1_1read__uint32.md) <br>_Read bytes from serial port and convert to integer._  |
| class | [**read\_upto**](classhal_1_1read__upto.md) <br>_Discard received bytes until the sequence is found._  |
| class | [**rotation\_sensor**](classhal_1_1rotation__sensor.md) <br>_Rotation measuring hardware abstraction interface._  |
| class | [**serial**](classhal_1_1serial.md) <br>_Hardware abstract interface for the serial communication protocol._  |
| class | [**servo**](classhal_1_1servo.md) <br>_Hardware abstraction for a closed loop position controlled rotational actuator._  |
| class | [**skip\_past**](classhal_1_1skip__past.md) <br>_Discard received bytes until the sequence is found._  |
| class | [**spi**](classhal_1_1spi.md) <br>_Serial peripheral interface (SPI) communication protocol hardware abstract interface._  |
| class | [**spy\_handler**](classhal_1_1spy__handler.md) &lt;args\_t&gt;<br>_Helper utility for making mocks for class functions that return status._  |
| class | [**static\_callable**](classhal_1_1static__callable.md) &lt;class owner\_class, reference\_designator, typename signature&gt;<br>_General class which will be used to allow for signature to be used and then split by the below class._  |
| class | [**static\_callable&lt; owner\_class, reference\_designator, return\_t(args\_t... p\_args)&gt;**](classhal_1_1static__callable_3_01owner__class_00_01reference__designator_00_01return__t_07args__t_8_8_8_01p__args_08_4.md) &lt;class owner\_class, reference\_designator, typename return\_t, args\_t&gt;<br>_Specialization of_ [_**static\_callable**_](classhal_1_1static__callable.md) _with the return type and arguments split up._ |
| class | [**static\_list**](classhal_1_1static__list.md) &lt;class Object&gt;<br>[_**static\_list**_](classhal_1_1static__list.md) _is a non-owning non-allocating doubly linked list container with O(1) memory utilization._ |
| class | [**steady\_clock**](classhal_1_1steady__clock.md) <br>_Hardware abstraction interface for a steady clock mechanism._  |
| class | [**steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md) <br>_Timeout object based on_ [_**hal::steady\_clock**_](classhal_1_1steady__clock.md) _._ |
| class | [**temperature\_sensor**](classhal_1_1temperature__sensor.md) <br>_Temperature sensing hardware abstraction interface._  |
| class | [**timer**](classhal_1_1timer.md) <br>_Timer hardware abstraction interface._  |


## Public Types

| Type | Name |
| ---: | :--- |
| typedef float | [**ampere**](#typedef-ampere)  <br>_Type for current represented in amps._  |
| typedef std::uint8\_t | [**byte**](#typedef-byte)  <br> |
| typedef inplace\_function&lt; F, sizeof(std::intptr\_t) \*2 &gt; | [**callback**](#typedef-callback)  <br>_Definition of a standard libhal owning callback object._  |
| typedef float | [**celsius**](#typedef-celsius)  <br>_Type for temperature represented in celsius._  |
| typedef float | [**degrees**](#typedef-degrees)  <br>_Type for angle represented in degrees._  |
| typedef void(void) | [**error\_handler**](#typedef-error_handler)  <br> |
| typedef tl::function\_ref&lt; F &gt; | [**function\_ref**](#typedef-function_ref)  <br>_Definition of a non-owning callable object._  |
| typedef float | [**g\_force**](#typedef-g_force)  <br> |
| typedef float | [**gauss**](#typedef-gauss)  <br>_Type for magnetic field represented in gauss._  |
| typedef float | [**hertz**](#typedef-hertz)  <br>_Type for frequency represented in hertz._  |
| enum  | [**i2c\_operation**](#enum-i2c_operation)  <br>_Set of I2C transaction operations._  |
| typedef stdext::inplace\_function&lt; F, Capacity &gt; | [**inplace\_function**](#typedef-inplace_function)  <br>_Definition of a owning callable object._  |
| typedef boost::leaf::match&lt; T, value &gt; | [**match**](#typedef-match)  <br> |
| typedef float | [**meters**](#typedef-meters)  <br>_Type for length represented in meters._  |
| enum  | [**pin\_resistor**](#enum-pin_resistor)  <br>_Set of possible pin mode resistor settings._  |
| typedef boost::leaf::result&lt; T &gt; | [**result**](#typedef-result)  <br> |
| typedef float | [**rpm**](#typedef-rpm)  <br>_Type for rotational velocity represented in RPMs._  |
| typedef result&lt; void &gt; | [**status**](#typedef-status)  <br> |
| typedef std::chrono::nanoseconds | [**time\_duration**](#typedef-time_duration)  <br>_The standard time durations in libhal std::chrono::nanoseconds._  |
| typedef status(void) | [**timeout\_function**](#typedef-timeout_function)  <br>_Timeout is a callable object or function that signals to a procedure that the procedure has exceeded its time allotment and should return control to the calling function._  |
| typedef float | [**volts**](#typedef-volts)  <br>_Type for voltage represented in volts._  |
| typedef result&lt; [**work\_state**](namespacehal.md#enum-work_state) &gt;() | [**work\_function**](#typedef-work_function)  <br>_A non-blocking callable that performs work with each call._  |
| enum  | [**work\_state**](#enum-work_state)  <br>_Represents the state of a coroutine or resumable callable._  |




## Public Attributes

| Type | Name |
| ---: | :--- |
|  concept | [**convertible\_to\_bytes**](#variable-convertible_to_bytes)   = = requires(T a) {
                                 \*a.data();
                                 a.size();
                               }<br> |
|  concept | [**enumeration**](#variable-enumeration)   = = std::is\_enum\_v&lt;T&gt;<br>_concept for enumeration types_  |
|  concept | [**has\_work\_state**](#variable-has_work_state)   = = requires(T a) {
                           {
                             a.state()
                             } -&gt; std::same\_as&lt;[**work\_state**](namespacehal.md#enum-work_state)&gt;;
                         }<br> |
|  error\_handler \* | [**on\_error\_callback**](#variable-on_error_callback)   = = nullptr<br> |
|  concept | [**timeout**](#variable-timeout)   = = std::convertible\_to&lt;T, hal::function\_ref&lt;[**timeout\_function**](namespacehal.md#typedef-timeout_function)&gt;&gt;<br> |
|  concept | [**worker**](#variable-worker)   = = std::convertible\_to&lt;T, hal::function\_ref&lt;[**work\_function**](namespacehal.md#typedef-work_function)&gt;&gt;<br> |
















## Public Functions

| Type | Name |
| ---: | :--- |
|  constexpr T | [**absolute\_value**](#function-absolute_value) (T p\_value) <br>_Generic absolute value function that works for integer types._  |
|  constexpr std::span&lt; const hal::byte &gt; | [**as\_bytes**](#function-as_bytes) (const T \* p\_address, size\_t p\_number\_of\_elements) <br> |
|  constexpr std::span&lt; const hal::byte &gt; | [**as\_bytes**](#function-as_bytes) (const convertible\_to\_bytes auto & p\_container) <br> |
|  constexpr std::span&lt; hal::byte &gt; | [**as\_writable\_bytes**](#function-as_writable_bytes) (T \* p\_address, size\_t p\_number\_of\_elements) <br> |
|  constexpr std::span&lt; hal::byte &gt; | [**as\_writable\_bytes**](#function-as_writable_bytes) (convertible\_to\_bytes auto & p\_container) <br> |
|  constexpr auto | [**attempt**](#function-attempt) (TryBlock && p\_try\_block, H &&... p\_handlers) <br> |
|  constexpr auto | [**attempt\_all**](#function-attempt_all) (TryBlock && p\_try\_block, H &&... p\_handlers) <br> |
|  constexpr std::uint16\_t | [**bit\_width**](#function-bit_width) (const [**can::settings**](structhal_1_1can_1_1settings.md) & p\_settings) <br> |
|  [**steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md) | [**create\_timeout**](#function-create_timeout) ([**hal::steady\_clock**](classhal_1_1steady__clock.md) & p\_steady\_clock, hal::time\_duration p\_duration) <br>_Create a timeout object based on_ [_**hal::steady\_clock**_](classhal_1_1steady__clock.md) _._ |
|  constexpr std::int64\_t | [**cycles\_per**](#function-cycles_per) (hertz p\_source, hal::time\_duration p\_duration) <br>_Calculate the number of cycles of this frequency within the time duration. This function is meant for timers to determine how many count cycles are needed to reach a particular time duration at this frequency._  |
|  status | [**delay**](#function-delay) (timeout auto p\_timeout) <br>_Delay the execution of the application or thread for a duration of time._  |
|  void | [**delay**](#function-delay) ([**hal::steady\_clock**](classhal_1_1steady__clock.md) & p\_steady\_clock, hal::time\_duration p\_duration) <br>_Delay execution for a duration of time using a hardware_ [_**steady\_clock**_](classhal_1_1steady__clock.md) _._ |
|  constexpr T | [**distance**](#function-distance) (T p\_left, T p\_right) <br>_Calculates the distance between two values (L1 Norm or Manhattan distance), the absolute value of their difference._  |
|  constexpr std::make\_unsigned\_t&lt; T &gt; | [**distance**](#function-distance) (T p\_left, T p\_right) <br>_Calculates the distance between two values (L1 Norm or Manhattan distance), the absolute value of their difference._  |
|  result&lt; std::chrono::nanoseconds &gt; | [**duration\_from\_cycles**](#function-duration_from_cycles) (hertz p\_source, uint32\_t p\_cycles) <br>_Calculate the amount of time it takes a frequency to oscillate a number of cycles._  |
|  constexpr bool | [**failed**](#function-failed) ([**work\_state**](namespacehal.md#enum-work_state) p\_state) <br> |
|  constexpr bool | [**failed**](#function-failed) (has\_work\_state auto p\_worker) <br> |
|  constexpr bool | [**finished**](#function-finished) ([**work\_state**](namespacehal.md#enum-work_state) p\_state) <br> |
|  constexpr bool | [**finished**](#function-finished) (has\_work\_state auto p\_worker) <br> |
|  std::uint64\_t | [**future\_deadline**](#function-future_deadline) ([**hal::steady\_clock**](classhal_1_1steady__clock.md) & p\_steady\_clock, hal::time\_duration p\_duration) <br>_Function to compute a future timestamp in ticks._  |
|  consteval T | [**generate\_field\_of\_ones**](#function-generate_field_of_ones) () <br>_Generate a mask of 1s at compile time._  |
|  void | [**halt**](#function-halt) () <br> |
|  constexpr bool | [**in\_progress**](#function-in_progress) ([**work\_state**](namespacehal.md#enum-work_state) p\_state) <br> |
|  constexpr bool | [**in\_progress**](#function-in_progress) (has\_work\_state auto p\_worker) <br> |
|  constexpr std::optional&lt; std::uint32\_t &gt; | [**is\_valid**](#function-is_valid) (const [**can::settings**](structhal_1_1can_1_1settings.md) & p\_settings, hertz p\_operating\_frequency) <br>_Validate configuration settings against an operating frequency._  |
|  result&lt; [**adc\_mux\_pin**](classhal_1_1adc__mux__pin.md) &gt; | [**make\_adc**](#function-make_adc) ([**adc\_multiplexer**](classhal_1_1adc__multiplexer.md) & p\_multiplexer, std::uint8\_t p\_channel) <br>_Returns a multiplexer ADC pin._  |
|  result&lt; [**rmd::drc\_motor**](classhal_1_1rmd_1_1drc__motor.md) &gt; | [**make\_motor**](#function-make_motor) ([**rmd::drc**](classhal_1_1rmd_1_1drc.md) & p\_drc, hal::rpm p\_max\_speed) <br>_Create a_ [_**hal::motor**_](classhal_1_1motor.md) _driver using the drc driver._ |
|  result&lt; [**rmd::mc\_x\_motor**](classhal_1_1rmd_1_1mc__x__motor.md) &gt; | [**make\_motor**](#function-make_motor) ([**rmd::mc\_x**](classhal_1_1rmd_1_1mc__x.md) & p\_mc\_x, hal::rpm p\_max\_speed) <br>_Create a_ [_**hal::motor**_](classhal_1_1motor.md) _driver using the MC-X driver._ |
|  result&lt; [**rmd::drc\_rotation\_sensor**](classhal_1_1rmd_1_1drc__rotation__sensor.md) &gt; | [**make\_rotation\_sensor**](#function-make_rotation_sensor) ([**rmd::drc**](classhal_1_1rmd_1_1drc.md) & p\_drc) <br>_Create a_ [_**hal::rotation\_sensor**_](classhal_1_1rotation__sensor.md) _driver using the drc driver._ |
|  result&lt; [**rmd::mc\_x\_rotation**](classhal_1_1rmd_1_1mc__x__rotation.md) &gt; | [**make\_rotation\_sensor**](#function-make_rotation_sensor) ([**rmd::mc\_x**](classhal_1_1rmd_1_1mc__x.md) & p\_mc\_x) <br>_Create a_ [_**hal::rotation\_sensor**_](classhal_1_1rotation__sensor.md) _driver using the MC-X driver._ |
|  result&lt; [**rmd::drc\_servo**](classhal_1_1rmd_1_1drc__servo.md) &gt; | [**make\_servo**](#function-make_servo) ([**rmd::drc**](classhal_1_1rmd_1_1drc.md) & p\_drc, hal::rpm p\_max\_speed) <br>_Create a_ [_**hal::servo**_](classhal_1_1servo.md) _driver using the drc driver._ |
|  result&lt; [**rmd::mc\_x\_servo**](classhal_1_1rmd_1_1mc__x__servo.md) &gt; | [**make\_servo**](#function-make_servo) ([**rmd::mc\_x**](classhal_1_1rmd_1_1mc__x.md) & p\_mc\_x, hal::rpm p\_max\_speed) <br>_Create a_ [_**hal::rotation\_sensor**_](classhal_1_1rotation__sensor.md) _driver using the MC-X driver._ |
|  result&lt; [**rmd::drc\_temperature\_sensor**](classhal_1_1rmd_1_1drc__temperature__sensor.md) &gt; | [**make\_temperature\_sensor**](#function-make_temperature_sensor) ([**rmd::drc**](classhal_1_1rmd_1_1drc.md) & p\_drc) <br>_Create a_ [_**hal::temperature\_sensor**_](classhal_1_1temperature__sensor.md) _driver using the drc driver._ |
|  result&lt; [**rmd::mc\_x\_temperature**](classhal_1_1rmd_1_1mc__x__temperature.md) &gt; | [**make\_temperature\_sensor**](#function-make_temperature_sensor) ([**rmd::mc\_x**](classhal_1_1rmd_1_1mc__x.md) & p\_mc\_x) <br>_Create a_ [_**hal::temperature\_sensor**_](classhal_1_1temperature__sensor.md) _driver using the MC-X driver._ |
|  constexpr float | [**map**](#function-map) (float p\_target, std::pair&lt; float, float &gt; p\_input\_range, std::pair&lt; float, float &gt; p\_output\_range) <br>_Map an target value [x] from an input range [a,b] to an output range [c,d]._  |
|  result&lt; T &gt; | [**multiply**](#function-multiply) (T p\_lhs, T p\_rhs) <br>_Perform multiply operation and return an error code_ `std::errc::result_out_of_range` _if the two values when multiplied would overflow the containing value._ |
|  auto | [**never\_timeout**](#function-never_timeout) () <br>_Create a timeout that will never time out._  |
|  auto | [**new\_error**](#function-new_error) (Item &&... p\_item) <br> |
|  std::basic\_ostream&lt; CharT, Traits &gt; & | [**operator&lt;&lt;**](#function-operator) (std::basic\_ostream&lt; CharT, Traits &gt; & p\_ostream, const [**work\_state**](namespacehal.md#enum-work_state) & p\_state) <br> |
|  std::basic\_ostream&lt; CharT, Traits &gt; & | [**operator&lt;&lt;**](#function-operator_1) (std::basic\_ostream&lt; CharT, Traits &gt; & p\_ostream, const hal::byte & p\_byte) <br>_print byte type using ostreams_  |
|  constexpr auto | [**operator==**](#function-operator_2) (const [**can::settings**](structhal_1_1can_1_1settings.md) & p\_lhs, const [**can::settings**](structhal_1_1can_1_1settings.md) & p\_rhs) <br> |
|  constexpr auto | [**operator==**](#function-operator_3) (const [**can::message\_t**](structhal_1_1can_1_1message__t.md) & p\_lhs, const [**can::message\_t**](structhal_1_1can_1_1message__t.md) & p\_rhs) <br> |
|  constexpr auto | [**operator==**](#function-operator_4) (const [**i2c::settings**](structhal_1_1i2c_1_1settings.md) & p\_lhs, const [**i2c::settings**](structhal_1_1i2c_1_1settings.md) & p\_rhs) <br> |
|  constexpr auto | [**operator==**](#function-operator_5) (const [**input\_pin::settings**](structhal_1_1input__pin_1_1settings.md) & p\_lhs, const [**input\_pin::settings**](structhal_1_1input__pin_1_1settings.md) & p\_rhs) <br> |
|  constexpr auto | [**operator==**](#function-operator_6) (const [**interrupt\_pin::settings**](structhal_1_1interrupt__pin_1_1settings.md) & p\_lhs, const [**interrupt\_pin::settings**](structhal_1_1interrupt__pin_1_1settings.md) & p\_rhs) <br> |
|  constexpr auto | [**operator==**](#function-operator_7) (const [**output\_pin::settings**](structhal_1_1output__pin_1_1settings.md) & p\_lhs, const [**output\_pin::settings**](structhal_1_1output__pin_1_1settings.md) & p\_rhs) <br> |
|  constexpr auto | [**operator==**](#function-operator_8) (const [**serial::settings**](structhal_1_1serial_1_1settings.md) & p\_lhs, const [**serial::settings**](structhal_1_1serial_1_1settings.md) & p\_rhs) <br> |
|  constexpr auto | [**operator==**](#function-operator_9) (const [**spi::settings**](structhal_1_1spi_1_1settings.md) & p\_lhs, const [**spi::settings**](structhal_1_1spi_1_1settings.md) & p\_rhs) <br> |
|  void | [**print**](#function-print) ([**serial**](classhal_1_1serial.md) & p\_serial, DataArray && p\_data) <br>_Write data to serial buffer and drop return value._  |
|  void | [**print**](#function-print) ([**serial**](classhal_1_1serial.md) & p\_serial, const char \* p\_format, Parameters... p\_parameters) <br>_Write formatted string data to serial buffer and drop return value._  |
|  hal::result&lt; [**hal::i2c::transaction\_t**](structhal_1_1i2c_1_1transaction__t.md) &gt; | [**probe**](#function-probe) ([**i2c**](classhal_1_1i2c.md) & p\_i2c, hal::byte p\_address) <br>_probe the_ [_**i2c**_](classhal_1_1i2c.md) _bus to see if a device exists_ |
|  hal::result&lt; [**hal::i2c::transaction\_t**](structhal_1_1i2c_1_1transaction__t.md) &gt; | [**read**](#function-read) ([**i2c**](classhal_1_1i2c.md) & p\_i2c, hal::byte p\_address, std::span&lt; hal::byte &gt; p\_data\_in, timeout auto p\_timeout) <br>_read bytes from target device on_ [_**i2c**_](classhal_1_1i2c.md) _bus_ |
|  hal::result&lt; [**hal::i2c::transaction\_t**](structhal_1_1i2c_1_1transaction__t.md) &gt; | [**read**](#function-read) ([**i2c**](classhal_1_1i2c.md) & p\_i2c, hal::byte p\_address, std::span&lt; hal::byte &gt; p\_data\_in) <br>_read bytes from target device on_ [_**i2c**_](classhal_1_1i2c.md) _bus_ |
|  result&lt; std::array&lt; hal::byte, BytesToRead &gt; &gt; | [**read**](#function-read) ([**i2c**](classhal_1_1i2c.md) & p\_i2c, hal::byte p\_address, timeout auto p\_timeout) <br>_return array of read bytes from target device on_ [_**i2c**_](classhal_1_1i2c.md) _bus_ |
|  result&lt; std::array&lt; hal::byte, BytesToRead &gt; &gt; | [**read**](#function-read) ([**i2c**](classhal_1_1i2c.md) & p\_i2c, hal::byte p\_address) <br>_return array of read bytes from target device on_ [_**i2c**_](classhal_1_1i2c.md) _bus_ |
|  result&lt; std::span&lt; hal::byte &gt; &gt; | [**read**](#function-read) ([**serial**](classhal_1_1serial.md) & p\_serial, std::span&lt; hal::byte &gt; p\_data\_in, timeout auto p\_timeout) <br>_Read bytes from a serial port._  |
|  result&lt; std::array&lt; hal::byte, BytesToRead &gt; &gt; | [**read**](#function-read) ([**serial**](classhal_1_1serial.md) & p\_serial, timeout auto p\_timeout) <br>_Read bytes from a serial port and return an array._  |
|  result&lt; [**hal::spi::transfer\_t**](structhal_1_1spi_1_1transfer__t.md) &gt; | [**read**](#function-read) ([**spi**](classhal_1_1spi.md) & p\_spi, std::span&lt; hal::byte &gt; p\_data\_in, hal::byte p\_filler=[**spi::default\_filler**](classhal_1_1spi.md#variable-default_filler)) <br>_Read data from the SPI bus._  |
|  result&lt; std::array&lt; hal::byte, BytesToRead &gt; &gt; | [**read**](#function-read) ([**spi**](classhal_1_1spi.md) & p\_spi, hal::byte p\_filler=[**spi::default\_filler**](classhal_1_1spi.md#variable-default_filler)) <br>_Read data from the SPI bus and return a std::array of bytes._  |
|  constexpr T | [**rounding\_division**](#function-rounding_division) (T p\_numerator, T p\_denominator) <br>_Perform integer division and round the value up if the next decimal place is greater than or equal to 0.5._  |
|  status | [**success**](#function-success) () <br>_a readability function for returning successful results;_  |
|  constexpr bool | [**terminated**](#function-terminated) ([**work\_state**](namespacehal.md#enum-work_state) p\_state) <br> |
|  constexpr bool | [**terminated**](#function-terminated) (has\_work\_state auto p\_worker) <br> |
|  auto | [**timeout\_generator**](#function-timeout_generator) ([**hal::steady\_clock**](classhal_1_1steady__clock.md) & p\_steady\_clock) <br>_Generates a function that, when passed a duration, returns a timeout._  |
|  hal::byte | [**to\_8\_bit\_address**](#function-to_8_bit_address) (hal::byte p\_address, i2c\_operation p\_operation) noexcept<br>_Convert 7-bit_ [_**i2c**_](classhal_1_1i2c.md) _address to an 8-bit address._ |
|  constexpr std::array&lt; char, N+1 &gt; | [**to\_array**](#function-to_array) (std::string\_view p\_view) <br>_Convert a string\_view into a std::array of N number of characters._  |
|  constexpr std::string\_view | [**to\_string**](#function-to_string) ([**work\_state**](namespacehal.md#enum-work_state) p\_state) <br> |
|  result&lt; [**work\_state**](namespacehal.md#enum-work_state) &gt; | [**try\_until**](#function-try_until) (worker auto & p\_worker, timeout auto p\_timeout) <br>_Repeatedly call a worker function until it has reached a terminal state or a timeout has been reached._  |
|  result&lt; [**work\_state**](namespacehal.md#enum-work_state) &gt; | [**try\_until**](#function-try_until) (worker auto && p\_worker, timeout auto p\_timeout) <br>_Repeatedly call a worker function until it has reached a terminal state or a timeout has been reached._  |
|  constexpr auto | [**value**](#function-value) (enumeration auto p\_enum\_value) <br>_Helper function to convert an enum to its integral value._  |
|  constexpr std::chrono::duration&lt; int64\_t, Period &gt; | [**wavelength**](#function-wavelength) (hertz p\_source) <br>_Calculates and returns the wavelength in seconds._  |
|  hal::result&lt; [**hal::i2c::transaction\_t**](structhal_1_1i2c_1_1transaction__t.md) &gt; | [**write**](#function-write) ([**i2c**](classhal_1_1i2c.md) & p\_i2c, hal::byte p\_address, std::span&lt; const hal::byte &gt; p\_data\_out, timeout auto p\_timeout) <br>_write data to a target device on the_ [_**i2c**_](classhal_1_1i2c.md) _bus_ |
|  hal::result&lt; [**hal::i2c::transaction\_t**](structhal_1_1i2c_1_1transaction__t.md) &gt; | [**write**](#function-write) ([**i2c**](classhal_1_1i2c.md) & p\_i2c, hal::byte p\_address, std::span&lt; const hal::byte &gt; p\_data\_out) <br>_write data to a target device on the_ [_**i2c**_](classhal_1_1i2c.md) _bus_ |
|  status | [**write**](#function-write) ([**serial**](classhal_1_1serial.md) & p\_serial, std::span&lt; const hal::byte &gt; p\_data\_out) <br>_Write bytes to a serial port._  |
|  status | [**write**](#function-write) ([**serial**](classhal_1_1serial.md) & p\_serial, std::string\_view p\_data\_out) <br>_Write std::span of const char to a serial port._  |
|  result&lt; [**hal::spi::transfer\_t**](structhal_1_1spi_1_1transfer__t.md) &gt; | [**write**](#function-write) ([**spi**](classhal_1_1spi.md) & p\_spi, std::span&lt; const hal::byte &gt; p\_data\_out) <br>_Write data to the SPI bus and ignore data sent from peripherals on the bus._  |
|  result&lt; [**serial::write\_t**](structhal_1_1serial_1_1write__t.md) &gt; | [**write\_partial**](#function-write_partial) ([**serial**](classhal_1_1serial.md) & p\_serial, std::span&lt; const hal::byte &gt; p\_data\_out) <br>_Write bytes to a serial port._  |
|  hal::result&lt; [**hal::i2c::transaction\_t**](structhal_1_1i2c_1_1transaction__t.md) &gt; | [**write\_then\_read**](#function-write_then_read) ([**i2c**](classhal_1_1i2c.md) & p\_i2c, hal::byte p\_address, std::span&lt; const hal::byte &gt; p\_data\_out, std::span&lt; hal::byte &gt; p\_data\_in, timeout auto p\_timeout=hal::never\_timeout()) <br>_write and then read bytes from target device on_ [_**i2c**_](classhal_1_1i2c.md) _bus_ |
|  hal::result&lt; [**hal::i2c::transaction\_t**](structhal_1_1i2c_1_1transaction__t.md) &gt; | [**write\_then\_read**](#function-write_then_read) ([**i2c**](classhal_1_1i2c.md) & p\_i2c, hal::byte p\_address, std::span&lt; const hal::byte &gt; p\_data\_out, std::span&lt; hal::byte &gt; p\_data\_in) <br>_write and then read bytes from target device on_ [_**i2c**_](classhal_1_1i2c.md) _bus_ |
|  result&lt; std::array&lt; hal::byte, BytesToRead &gt; &gt; | [**write\_then\_read**](#function-write_then_read) ([**i2c**](classhal_1_1i2c.md) & p\_i2c, hal::byte p\_address, std::span&lt; const hal::byte &gt; p\_data\_out, timeout auto p\_timeout) <br>_write and then return an array of read bytes from target device on_ [_**i2c**_](classhal_1_1i2c.md) _bus_ |
|  result&lt; std::array&lt; hal::byte, BytesToRead &gt; &gt; | [**write\_then\_read**](#function-write_then_read) ([**i2c**](classhal_1_1i2c.md) & p\_i2c, hal::byte p\_address, std::span&lt; const hal::byte &gt; p\_data\_out) <br>_write and then return an array of read bytes from target device on_ [_**i2c**_](classhal_1_1i2c.md) _bus_ |
|  result&lt; std::span&lt; hal::byte &gt; &gt; | [**write\_then\_read**](#function-write_then_read) ([**serial**](classhal_1_1serial.md) & p\_serial, std::span&lt; const hal::byte &gt; p\_data\_out, std::span&lt; hal::byte &gt; p\_data\_in, timeout auto p\_timeout) <br>_Perform a write then read transaction over serial._  |
|  result&lt; std::array&lt; hal::byte, BytesToRead &gt; &gt; | [**write\_then\_read**](#function-write_then_read) ([**serial**](classhal_1_1serial.md) & p\_serial, std::span&lt; const hal::byte &gt; p\_data\_out, timeout auto p\_timeout) <br>_Perform a write then read transaction over serial._  |
|  result&lt; [**hal::spi::transfer\_t**](structhal_1_1spi_1_1transfer__t.md) &gt; | [**write\_then\_read**](#function-write_then_read) ([**spi**](classhal_1_1spi.md) & p\_spi, std::span&lt; const hal::byte &gt; p\_data\_out, std::span&lt; hal::byte &gt; p\_data\_in, hal::byte p\_filler=[**spi::default\_filler**](classhal_1_1spi.md#variable-default_filler)) <br>_Write data to the SPI bus and ignore data sent from peripherals on the bus then read data from the SPI and fill the write line with filler bytes._  |
|  result&lt; std::array&lt; hal::byte, BytesToRead &gt; &gt; | [**write\_then\_read**](#function-write_then_read) ([**spi**](classhal_1_1spi.md) & p\_spi, std::span&lt; const hal::byte &gt; p\_data\_out, hal::byte p\_filler=[**spi::default\_filler**](classhal_1_1spi.md#variable-default_filler)) <br>_Write data to the SPI bus and ignore data sent from peripherals on the bus then read data from the SPI, fill the write line with filler bytes and return an array of bytes._  |


## Public Static Functions

| Type | Name |
| ---: | :--- |
|  constexpr static bool | [**equals**](#function-equals) (std::floating\_point auto p\_value1, std::floating\_point auto p\_value2, float p\_epsilon=1e-9f) <br>_Determines if two values are equal within a relative error._  |


























## Public Types Documentation




### typedef ampere 

```C++
using hal::ampere = typedef float;
```






### typedef byte 


```C++
using hal::byte = typedef std::uint8_t;
```



Standard type for bytes in libhal. hal::byte has a number of annoyances that results in more verbose code without much benefit and thus hal::byte was created. 


        



### typedef callback 

_Definition of a standard libhal owning callback object._ 
```C++
using hal::callback = typedef inplace_function<F, sizeof(std::intptr_t) * 2>;
```



This is an inplace\_function with its capacity set to two pointers. Callable objects must fit within the size of two integers to be able to construct this polymorphic callable object.




**Template parameters:**


* `F` - function type or call signature 




        



### typedef celsius 

```C++
using hal::celsius = typedef float;
```






### typedef degrees 

```C++
using hal::degrees = typedef float;
```






### typedef error\_handler 

```C++
using hal::error_handler = typedef void(void);
```






### typedef function\_ref 

_Definition of a non-owning callable object._ 
```C++
using hal::function_ref = typedef tl::function_ref<F>;
```



Use this for passing a callable object to a function that the function does not need to store in anyway. Best used for timeouts where a function simply needs the callable during the runtime of the function and when the function is over, the callable is no longer needed.


This function is light weight in comparison to std::function, which is allocating, or inplace\_function.




**Template parameters:**


* `F` - function type or call signature 




        



### typedef g\_force 


```C++
using hal::g_force = typedef float;
```



Type for acceleration represented in the force applied by gravity at sea level. 


        



### typedef gauss 

```C++
using hal::gauss = typedef float;
```






### typedef hertz 

```C++
using hal::hertz = typedef float;
```






### enum i2c\_operation 

```C++
enum hal::i2c_operation {
    write = 0,
    read = 1
};
```






### typedef inplace\_function 

_Definition of a owning callable object._ 
```C++
using hal::inplace_function = typedef stdext::inplace_function<F, Capacity>;
```



Use this instead of function\_ref when a callable object needs to be stored.




**Template parameters:**


* `F` - function type or call signature 
* `Capacity` - storage capacity of the function in bytes. If a callable object has a size greater than the capacity, then attempting to create an inplace function with it will result in a compiler error. 




        



### typedef match 

```C++
using hal::match = typedef boost::leaf::match<T, value>;
```






### typedef meters 

```C++
using hal::meters = typedef float;
```






### enum pin\_resistor 

_Set of possible pin mode resistor settings._ 
```C++
enum hal::pin_resistor {
    none = 0,
    pull_down,
    pull_up
};
```



See each enumeration to get more details about when and how these should be used. 


        



### typedef result 

```C++
using hal::result = typedef boost::leaf::result<T>;
```






### typedef rpm 

```C++
using hal::rpm = typedef float;
```






### typedef status 

```C++
using hal::status = typedef result<void>;
```






### typedef time\_duration 

```C++
using hal::time_duration = typedef std::chrono::nanoseconds;
```






### typedef timeout\_function 

_Timeout is a callable object or function that signals to a procedure that the procedure has exceeded its time allotment and should return control to the calling function._ 
```C++
using hal::timeout_function = typedef status(void);
```





**Exception:**


* `hal::timeout` - when the timeout condition has been met. 



**Returns:**

status - sets error flag set when timeout condition has been met, otherwise returns success. 





        



### typedef volts 

```C++
using hal::volts = typedef float;
```






### typedef work\_function 

_A non-blocking callable that performs work with each call._ 
```C++
using hal::work_function = typedef result<work_state>();
```



Each call to a work\_function will perform a set of work. The worker will return a work\_state to indicate its current state. Once the worker reaches a terminal state, it MUST perform no additional work and return the terminal state. For example, if a work function failed, it must always return failure and not interact with hardware or other software from that point on. Same will occur for the "finished" state.


This function can be repeatedly tried until it has reached a terminal state with the try\_until() function.




**Returns:**

result&lt;work\_state&gt; - sets error flag set when an error occurs, otherwise returns work\_state enum. 





        



### enum work\_state 

```C++
enum hal::work_state {
    in_progress,
    failed,
    finished
};
```



## Public Attributes Documentation




### variable convertible\_to\_bytes 

```C++
concept hal::convertible_to_bytes;
```






### variable enumeration 

_concept for enumeration types_ 
```C++
concept hal::enumeration;
```





**Template parameters:**


* `T` - enum type 




        



### variable has\_work\_state 

```C++
concept hal::has_work_state;
```






### variable on\_error\_callback 

```C++
error_handler* hal::on_error_callback;
```






### variable timeout 

```C++
concept hal::timeout;
```






### variable worker 

```C++
concept hal::worker;
```



## Public Functions Documentation




### function absolute\_value 

_Generic absolute value function that works for integer types._ 
```C++
template<typename T typename T>
constexpr T hal::absolute_value (
    T p_value
) 
```



Preferred this over the C API for rounding numbers such as abs(), labs() and llabs(). This function relieves the need in template code to check the type of the integer and select the correct function to call.


NOTE: If p\_value is minimum negative number of type T then the resulting return value will be the maximum positive number represented by T. For example, INT32\_MIN is 2147483648 where as INT32\_MAX is 2147483647. The absolute value of INT32\_MIN is 1 greater than INT32\_MAX. To prevent overflow, passing INT32\_MIN will simply return back INT32\_MAX.




**Template parameters:**


* `T` - integral type 



**Parameters:**


* `p_value` - integer value to be made positive 



**Returns:**

constexpr auto - positive representation of the integer 





        



### function as\_bytes 

```C++
template<typename T typename T>
constexpr std::span< const hal::byte > hal::as_bytes (
    const T * p_address,
    size_t p_number_of_elements
) 
```






### function as\_bytes 

```C++
constexpr std::span< const hal::byte > hal::as_bytes (
    const convertible_to_bytes auto & p_container
) 
```






### function as\_writable\_bytes 

```C++
template<typename T typename T>
constexpr std::span< hal::byte > hal::as_writable_bytes (
    T * p_address,
    size_t p_number_of_elements
) 
```






### function as\_writable\_bytes 

```C++
constexpr std::span< hal::byte > hal::as_writable_bytes (
    convertible_to_bytes auto & p_container
) 
```






### function attempt 

```C++
template<class TryBlock class TryBlock, class... H>
constexpr auto hal::attempt (
    TryBlock && p_try_block,
    H &&... p_handlers
) 
```






### function attempt\_all 

```C++
template<class TryBlock class TryBlock, class... H>
constexpr auto hal::attempt_all (
    TryBlock && p_try_block,
    H &&... p_handlers
) 
```






### function bit\_width 

```C++
constexpr std::uint16_t hal::bit_width (
    const can::settings & p_settings
) 
```






### function create\_timeout 

_Create a timeout object based on_ [_**hal::steady\_clock**_](classhal_1_1steady__clock.md) _._
```C++
steady_clock_timeout hal::create_timeout (
    hal::steady_clock & p_steady_clock,
    hal::time_duration p_duration
) 
```



NOTE: Multiple timeout objects can be made from a single [**steady\_clock**](classhal_1_1steady__clock.md) without influencing other timeout objects.




**Parameters:**


* `p_steady_clock` - [**hal::steady\_clock**](classhal_1_1steady__clock.md) implementation 
* `p_duration` - amount of time until timeout 



**Returns:**

[**hal::steady\_clock\_timeout**](classhal_1_1steady__clock__timeout.md) - timeout object 





        



### function cycles\_per 

_Calculate the number of cycles of this frequency within the time duration. This function is meant for timers to determine how many count cycles are needed to reach a particular time duration at this frequency._ 
```C++
constexpr std::int64_t hal::cycles_per (
    hertz p_source,
    hal::time_duration p_duration
) 
```





**Parameters:**


* `p_source` - source frequency 
* `p_duration` - the amount of time to convert to cycles 



**Returns:**

std::int64\_t - number of cycles 





        



### function delay 

_Delay the execution of the application or thread for a duration of time._ 
```C++
inline status hal::delay (
    timeout auto p_timeout
) 
```





**Template parameters:**


* `Timeout` - timeout type 



**Parameters:**


* `p_timeout` - callable timeout object 



**Returns:**

status - success or failure 





        



### function delay 

_Delay execution for a duration of time using a hardware_ [_**steady\_clock**_](classhal_1_1steady__clock.md) _._
```C++
void hal::delay (
    hal::steady_clock & p_steady_clock,
    hal::time_duration p_duration
) 
```





**Parameters:**


* `p_steady_clock` - [**steady\_clock**](classhal_1_1steady__clock.md) driver 
* `p_duration` - the amount of time to delay for. Zero or negative time duration will delay for one tick of the p\_steady\_clock. 




        



### function distance 

_Calculates the distance between two values (L1 Norm or Manhattan distance), the absolute value of their difference._ 
```C++
template<typename T typename T>
constexpr T hal::distance (
    T p_left,
    T p_right
) 
```





**Template parameters:**


* `T` - integral type of the two values 



**Parameters:**


* `p_left` - the first point of the distance calculation 
* `p_right` - the second point of the distance calculation 



**Returns:**

constexpr T - absolute value of the difference between the two points. 





        



### function distance 

_Calculates the distance between two values (L1 Norm or Manhattan distance), the absolute value of their difference._ 
```C++
template<std::integral T>
constexpr std::make_unsigned_t< T > hal::distance (
    T p_left,
    T p_right
) 
```



NOTE: Values cannot exceed int32\_t.




**Template parameters:**


* `T` - integral type of the two values 



**Parameters:**


* `p_left` - the first point of the distance calculation 
* `p_right` - the second point of the distance calculation 



**Returns:**

constexpr T - absolute value of the difference between the two points. 





        



### function duration\_from\_cycles 

_Calculate the amount of time it takes a frequency to oscillate a number of cycles._ 
```C++
inline result< std::chrono::nanoseconds > hal::duration_from_cycles (
    hertz p_source,
    uint32_t p_cycles
) 
```





**Parameters:**


* `p_source` - the frequency to compute the cycles from 
* `p_cycles` - number of cycles within the time duration 



**Returns:**

std::chrono::nanoseconds - time duration based on this frequency and the number of cycles 





        



### function failed 

```C++
constexpr bool hal::failed (
    work_state p_state
) 
```






### function failed 

```C++
constexpr bool hal::failed (
    has_work_state auto p_worker
) 
```






### function finished 

```C++
constexpr bool hal::finished (
    work_state p_state
) 
```






### function finished 

```C++
constexpr bool hal::finished (
    has_work_state auto p_worker
) 
```






### function future\_deadline 

_Function to compute a future timestamp in ticks._ 
```C++
inline std::uint64_t hal::future_deadline (
    hal::steady_clock & p_steady_clock,
    hal::time_duration p_duration
) 
```



This function calculates a future timestamp based on the current uptime of a steady clock and a specified duration.




**Parameters:**


* `p_steady_clock` - the [**steady\_clock**](classhal_1_1steady__clock.md) used to calculate the future duration. Note that this future deadline will only work with this steady clock. 
* `p_duration` The duration for which we need to compute a future timestamp.



**Returns:**

A 64-bit unsigned integer representing the future timestamp in steady clock ticks. The future timestamp is calculated as the sum of the current number of ticks of the clock and the number of ticks equivalent to the specified duration. If the duration corresponds to a ticks\_required value less than or equal to 1, it will be set to 1 to ensure at least one tick is waited. 





        



### function generate\_field\_of\_ones 

_Generate a mask of 1s at compile time._ 
```C++
template<size_t BitWidth, std::integral T>
consteval T hal::generate_field_of_ones () 
```





**Template parameters:**


* `BitWidth` - number of 1s in the mask 
* `T` - the type 



**Returns:**

consteval uint32\_t - mask with 1s at the LSB 





        



### function halt 

```C++
inline void hal::halt () 
```






### function in\_progress 

```C++
constexpr bool hal::in_progress (
    work_state p_state
) 
```






### function in\_progress 

```C++
constexpr bool hal::in_progress (
    has_work_state auto p_worker
) 
```






### function is\_valid 

_Validate configuration settings against an operating frequency._ 
```C++
constexpr std::optional< std::uint32_t > hal::is_valid (
    const can::settings & p_settings,
    hertz p_operating_frequency
) 
```



The settings and frequency must follow the following rules:



* propagation\_delay, phase\_segment1, phase\_segment2 and synchronization\_jump\_width must be nonzero.
* synchronization\_jump\_width must be the lesser between phase\_segment1 and phase\_segment2.
* The total bit width must be equal to or greater than 8 Tq/bit; the sum of sync\_segment, propagation\_delay, phase\_segment1 and phase\_segment2.
* The CAN device's operating frequency must be at least 8 times the baud rate to give the minimum.
* The ratio between the CAN device's operating frequency and the bit width must be close enough to an integer to produce a usable baud rate prescaler.






**Parameters:**


* `p_settings` - settings object to check 
* `p_operating_frequency` - CAN device operating frequency 



**Returns:**

std::optional&lt;std::uint32\_t&gt; - baud rate prescaler 





        



### function make\_adc 

_Returns a multiplexer ADC pin._ 
```C++
result< adc_mux_pin > hal::make_adc (
    adc_multiplexer & p_multiplexer,
    std::uint8_t p_channel
) 
```





**Parameters:**


* `p_multiplexer` The multiplexer object to manage each mux pin. 
* `p_channel` The channel number of the pin. 



**Returns:**

A newly constructed ADC multiplexer pin. 





        



### function make\_motor 

_Create a_ [_**hal::motor**_](classhal_1_1motor.md) _driver using the drc driver._
```C++
result< rmd::drc_motor > hal::make_motor (
    rmd::drc & p_drc,
    hal::rpm p_max_speed
) 
```





**Parameters:**


* `p_drc` - reference to a drc driver. This object's lifetime must NOT exceed the lifetime of the return drc motor. 
* `p_max_speed` - maximum speed of the motor represented by +1.0 and -1.0 



**Returns:**

drc\_motor - motor implementation based on the drc driver 





        



### function make\_motor 

_Create a_ [_**hal::motor**_](classhal_1_1motor.md) _driver using the MC-X driver._
```C++
result< rmd::mc_x_motor > hal::make_motor (
    rmd::mc_x & p_mc_x,
    hal::rpm p_max_speed
) 
```





**Parameters:**


* `p_mc_x` - reference to a MC-X driver. This object's lifetime must exceed the lifetime of the returned object. 
* `p_max_speed` - maximum speed of the motor represented by +1.0 and -1.0 



**Returns:**

result&lt;mc\_x\_motor&gt; - motor implementation using the MC-X driver 





        



### function make\_rotation\_sensor 

_Create a_ [_**hal::rotation\_sensor**_](classhal_1_1rotation__sensor.md) _driver using the drc driver._
```C++
result< rmd::drc_rotation_sensor > hal::make_rotation_sensor (
    rmd::drc & p_drc
) 
```





**Parameters:**


* `p_drc` - reference to a drc driver. This object's lifetime must exceed the lifetime of the returned object. 



**Returns:**

drc\_rotation\_sensor - motor implementation based on the drc driver 





        



### function make\_rotation\_sensor 

_Create a_ [_**hal::rotation\_sensor**_](classhal_1_1rotation__sensor.md) _driver using the MC-X driver._
```C++
result< rmd::mc_x_rotation > hal::make_rotation_sensor (
    rmd::mc_x & p_mc_x
) 
```





**Parameters:**


* `p_mc_x` - reference to a MC-X driver. This object's lifetime must exceed the lifetime of the returned object. 



**Returns:**

result&lt;mc\_x\_rotation&gt; - rotation sensor implementation based on the MC-X driver 





        



### function make\_servo 

_Create a_ [_**hal::servo**_](classhal_1_1servo.md) _driver using the drc driver._
```C++
result< rmd::drc_servo > hal::make_servo (
    rmd::drc & p_drc,
    hal::rpm p_max_speed
) 
```





**Parameters:**


* `p_drc` - reference to a drc driver. This object's lifetime must exceed the lifetime of the returned object. 
* `p_max_speed` - maximum speed of the motor when moving to an angle 



**Returns:**

result&lt;drc\_servo&gt; - motor implementation based on the drc driver 





        



### function make\_servo 

_Create a_ [_**hal::rotation\_sensor**_](classhal_1_1rotation__sensor.md) _driver using the MC-X driver._
```C++
result< rmd::mc_x_servo > hal::make_servo (
    rmd::mc_x & p_mc_x,
    hal::rpm p_max_speed
) 
```





**Parameters:**


* `p_mc_x` - reference to a MC-X driver. This object's lifetime must exceed the lifetime of the returned object. 
* `p_max_speed` - maximum speed of the motor when moving to an angle 



**Returns:**

result&lt;mc\_x\_rotation&gt; - rotation sensor implementation based on the MC-X driver 





        



### function make\_temperature\_sensor 

_Create a_ [_**hal::temperature\_sensor**_](classhal_1_1temperature__sensor.md) _driver using the drc driver._
```C++
result< rmd::drc_temperature_sensor > hal::make_temperature_sensor (
    rmd::drc & p_drc
) 
```





**Parameters:**


* `p_drc` - reference to a drc driver. This object's lifetime must exceed the lifetime of the returned object. 



**Returns:**

result&lt;drc\_temperature\_sensor&gt; - temperature sensor implementation based on the drc driver. 





        



### function make\_temperature\_sensor 

_Create a_ [_**hal::temperature\_sensor**_](classhal_1_1temperature__sensor.md) _driver using the MC-X driver._
```C++
result< rmd::mc_x_temperature > hal::make_temperature_sensor (
    rmd::mc_x & p_mc_x
) 
```





**Parameters:**


* `p_mc_x` - reference to a MC-X driver. This object's lifetime must exceed the lifetime of the returned object. 



**Returns:**

result&lt;mc\_x\_temperature&gt; - temperature sensor implementation based on the MC-X driver 





        



### function map 

_Map an target value [x] from an input range [a,b] to an output range [c,d]._ 
```C++
constexpr float hal::map (
    float p_target,
    std::pair< float, float > p_input_range,
    std::pair< float, float > p_output_range
) 
```



Another term for this is an affine transformation which follows this equation:  For example:


let x = 5.0 let input\_range = [0.0, 10.0] let output\_range = [100.0, 200.0] The result will be 150.0




**Parameters:**


* `p_target` - target value within p\_input\_range to be mapped to the output range. 
* `p_input_range` - the input range of p\_target 
* `p_output_range` - the output range to map p\_target to 



**Returns:**

constexpr float - value mapped from input range to the output range. The output is clamped to the output range. 





        



### function multiply 

_Perform multiply operation and return an error code_ `std::errc::result_out_of_range` _if the two values when multiplied would overflow the containing value._
```C++
template<typename T typename T>
result< T > hal::multiply (
    T p_lhs,
    T p_rhs
) 
```





**Template parameters:**


* `T` - integer arithmetic type 



**Parameters:**


* `p_lhs` - left hand side integer 
* `p_rhs` - right hand side integer 



**Returns:**

result&lt;T&gt; - either the resultant or an error `std::errc::result_out_of_range` 





        



### function never\_timeout 

_Create a timeout that will never time out._ 
```C++
inline auto hal::never_timeout () 
```





**Returns:**

auto - callable that will never return timeout 





        



### function new\_error 

```C++
template<class... Item>
inline auto hal::new_error (
    Item &&... p_item
) 
```






### function operator&lt;&lt; 

```C++
template<class CharT class CharT, class Traits class Traits>
inline std::basic_ostream< CharT, Traits > & hal::operator<< (
    std::basic_ostream< CharT, Traits > & p_ostream,
    const work_state & p_state
) 
```






### function operator&lt;&lt; 

_print byte type using ostreams_ 
```C++
template<class CharT class CharT, class Traits class Traits>
inline std::basic_ostream< CharT, Traits > & hal::operator<< (
    std::basic_ostream< CharT, Traits > & p_ostream,
    const hal::byte & p_byte
) 
```



Meant for unit testing, testing and simulation purposes C++ streams, in general, should not be used for any embedded project that will ever have to be used on an MCU due to its memory cost.




**Template parameters:**


* `CharT` - character type 
* `Traits` - ostream traits type 



**Parameters:**


* `p_ostream` - the ostream 
* `p_byte` - object to convert to a string 



**Returns:**

std::basic\_ostream&lt;CharT, Traits&gt;& - reference to the ostream 





        



### function operator== 

```C++
constexpr auto hal::operator== (
    const can::settings & p_lhs,
    const can::settings & p_rhs
) 
```






### function operator== 

```C++
constexpr auto hal::operator== (
    const can::message_t & p_lhs,
    const can::message_t & p_rhs
) 
```






### function operator== 

```C++
constexpr auto hal::operator== (
    const i2c::settings & p_lhs,
    const i2c::settings & p_rhs
) 
```






### function operator== 

```C++
constexpr auto hal::operator== (
    const input_pin::settings & p_lhs,
    const input_pin::settings & p_rhs
) 
```






### function operator== 

```C++
constexpr auto hal::operator== (
    const interrupt_pin::settings & p_lhs,
    const interrupt_pin::settings & p_rhs
) 
```






### function operator== 

```C++
constexpr auto hal::operator== (
    const output_pin::settings & p_lhs,
    const output_pin::settings & p_rhs
) 
```






### function operator== 

```C++
constexpr auto hal::operator== (
    const serial::settings & p_lhs,
    const serial::settings & p_rhs
) 
```






### function operator== 

```C++
constexpr auto hal::operator== (
    const spi::settings & p_lhs,
    const spi::settings & p_rhs
) 
```






### function print 

_Write data to serial buffer and drop return value._ 
```C++
template<typename DataArray typename DataArray>
void hal::print (
    serial & p_serial,
    DataArray && p_data
) 
```



Only use this with serial ports with infallible write operations, meaning they will never return an error result.




**Template parameters:**


* `DataArray` - data array type 



**Parameters:**


* `p_serial` - serial port to write data to 
* `p_data` - data to be sent over the serial port 




        



### function print 

_Write formatted string data to serial buffer and drop return value._ 
```C++
template<size_t BufferSize, typename... Parameters>
void hal::print (
    serial & p_serial,
    const char * p_format,
    Parameters... p_parameters
) 
```



Uses snprintf internally and writes to a local statically allocated an array. This function will never dynamically allocate like how standard std::printf does.


This function does NOT include the NULL character when transmitting the data over the serial port.




**Template parameters:**


* `BufferSize` - Size of the buffer to allocate on the stack to store the formatted message. 
* `Parameters` - printf arguments 



**Parameters:**


* `p_serial` - serial port to write data to 
* `p_format` - printf style null terminated format string 
* `p_parameters` - printf arguments 




        



### function probe 

_probe the_ [_**i2c**_](classhal_1_1i2c.md) _bus to see if a device exists_
```C++
inline hal::result< hal::i2c::transaction_t > hal::probe (
    i2c & p_i2c,
    hal::byte p_address
) 
```





**Parameters:**


* `p_i2c` - [**i2c**](classhal_1_1i2c.md) driver 
* `p_address` - target address to probe for 



**Returns:**

hal::result&lt;hal::i2c::transaction\_t&gt; - success or failure 





        



### function read 

_read bytes from target device on_ [_**i2c**_](classhal_1_1i2c.md) _bus_
```C++
inline hal::result< hal::i2c::transaction_t > hal::read (
    i2c & p_i2c,
    hal::byte p_address,
    std::span< hal::byte > p_data_in,
    timeout auto p_timeout
) 
```



Shorthand for writing i2c.transfer(...) for read only operations




**Parameters:**


* `p_i2c` - [**i2c**](classhal_1_1i2c.md) driver 
* `p_address` - target address 
* `p_data_in` - buffer to read bytes into from target device 
* `p_timeout` - amount of time to execute the transaction 



**Returns:**

hal::result&lt;hal::i2c::transaction\_t&gt; - success or failure 





        



### function read 

_read bytes from target device on_ [_**i2c**_](classhal_1_1i2c.md) _bus_
```C++
inline hal::result< hal::i2c::transaction_t > hal::read (
    i2c & p_i2c,
    hal::byte p_address,
    std::span< hal::byte > p_data_in
) 
```



Shorthand for writing i2c.transfer(...) for read only operations, but never times out. Can be used for devices that never perform clock stretching.




**Parameters:**


* `p_i2c` - [**i2c**](classhal_1_1i2c.md) driver 
* `p_address` - target address 
* `p_data_in` - buffer to read bytes into from target device 



**Returns:**

hal::result&lt;hal::i2c::transaction\_t&gt; - success or failure 





        



### function read 

_return array of read bytes from target device on_ [_**i2c**_](classhal_1_1i2c.md) _bus_
```C++
template<size_t BytesToRead>
result< std::array< hal::byte, BytesToRead > > hal::read (
    i2c & p_i2c,
    hal::byte p_address,
    timeout auto p_timeout
) 
```



Eliminates the need to create a buffer and pass it into the read function.




**Template parameters:**


* `BytesToRead` - number of bytes to read 



**Parameters:**


* `p_i2c` - [**i2c**](classhal_1_1i2c.md) driver 
* `p_address` - target address 
* `p_timeout` - amount of time to execute the transaction 



**Returns:**

result&lt;std::array&lt;hal::byte, BytesToRead&gt;&gt; - array of bytes from target device or an error. 





        



### function read 

_return array of read bytes from target device on_ [_**i2c**_](classhal_1_1i2c.md) _bus_
```C++
template<size_t BytesToRead>
result< std::array< hal::byte, BytesToRead > > hal::read (
    i2c & p_i2c,
    hal::byte p_address
) 
```



Eliminates the need to create a buffer and pass it into the read function. This operation will never time out and should only be used with devices that never perform clock stretching.




**Template parameters:**


* `BytesToRead` - number of bytes to read 



**Parameters:**


* `p_i2c` - [**i2c**](classhal_1_1i2c.md) driver 
* `p_address` - target address 



**Returns:**

result&lt;std::array&lt;hal::byte, BytesToRead&gt;&gt; - array of bytes from target device or an error. 





        



### function read 

_Read bytes from a serial port._ 
```C++
inline result< std::span< hal::byte > > hal::read (
    serial & p_serial,
    std::span< hal::byte > p_data_in,
    timeout auto p_timeout
) 
```





**Parameters:**


* `p_serial` - the serial port that will be read from 
* `p_data_in` - buffer to have bytes from the serial port read into 
* `p_timeout` - timeout callable that indicates when to bail out of the read operation. 



**Returns:**

result&lt;std::span&lt;hal::byte&gt;&gt; - return an error if a call to [**serial::read**](classhal_1_1serial.md#function-read) or [**delay()**](namespacehal.md#function-delay) returns an error from the serial port or a span with the number of bytes read and a pointer to where the read bytes are. 





        



### function read 

_Read bytes from a serial port and return an array._ 
```C++
template<size_t BytesToRead>
result< std::array< hal::byte, BytesToRead > > hal::read (
    serial & p_serial,
    timeout auto p_timeout
) 
```



This call eliminates the boiler plate of creating an array and then passing that to the read function.




**Template parameters:**


* `BytesToRead` - the number of bytes to be read from the serial port. 



**Parameters:**


* `p_serial` - the serial port to be read from 
* `p_timeout` - timeout callable that indicates when to bail out of the read operation. 



**Returns:**

result&lt;std::array&lt;hal::byte, BytesToRead&gt;&gt; - return an error if a call to [**serial::read**](classhal_1_1serial.md#function-read) or [**delay()**](namespacehal.md#function-delay) returns an error from the serial port or a span with the number of bytes read and a pointer to where the read bytes are. 





        



### function read 

_Read data from the SPI bus._ 
```C++
inline result< hal::spi::transfer_t > hal::read (
    spi & p_spi,
    std::span< hal::byte > p_data_in,
    hal::byte p_filler=spi::default_filler
) 
```



Filler bytes will be placed on the write line.




**Parameters:**


* `p_spi` - spi driver 
* `p_data_in` - buffer to receive bytes back from the SPI bus 
* `p_filler` - filler data placed on the bus in place of actual write data. 



**Returns:**

result&lt;hal::spi::transfer\_t&gt; - success or failure 





        



### function read 

_Read data from the SPI bus and return a std::array of bytes._ 
```C++
template<size_t BytesToRead>
result< std::array< hal::byte, BytesToRead > > hal::read (
    spi & p_spi,
    hal::byte p_filler=spi::default_filler
) 
```



Filler bytes will be placed on the write line.




**Template parameters:**


* `BytesToRead` - Number of bytes to read 



**Parameters:**


* `p_spi` - spi driver 
* `p_filler` - filler data placed on the bus in place of actual write data. 



**Returns:**

result&lt;std::array&lt;hal::byte, BytesToRead&gt;&gt; - any errors associated with this call 





        



### function rounding\_division 

_Perform integer division and round the value up if the next decimal place is greater than or equal to 0.5._ 
```C++
template<typename T typename T>
constexpr T hal::rounding_division (
    T p_numerator,
    T p_denominator
) 
```





**Template parameters:**


* `T` - integral type of the two operands 



**Parameters:**


* `p_numerator` - the value to be divided 
* `p_denominator` - the value to divide the numerator against 



**Returns:**

constexpr T - rounded quotient between numerator and denominator. Returns 0 if the denominator is greater than the numerator. 





        



### function success 

_a readability function for returning successful results;_ 
```C++
inline status hal::success () 
```



For functions that return `status`, rather than returning `{}` to default initialize the status object as "success", use this function to make it more clear to the reader.


EXAMPLE:  

**Returns:**

status - that is always successful 





        



### function terminated 

```C++
constexpr bool hal::terminated (
    work_state p_state
) 
```






### function terminated 

```C++
constexpr bool hal::terminated (
    has_work_state auto p_worker
) 
```






### function timeout\_generator 

_Generates a function that, when passed a duration, returns a timeout._ 
```C++
inline auto hal::timeout_generator (
    hal::steady_clock & p_steady_clock
) 
```





**Parameters:**


* `p_steady_clock` - [**steady\_clock**](classhal_1_1steady__clock.md) driver that must out live the lifetime of the returned lambda. 



**Returns:**

auto - a callable that returns a new timeout object each time a time duration is passed to it. 





        



### function to\_8\_bit\_address 

_Convert 7-bit_ [_**i2c**_](classhal_1_1i2c.md) _address to an 8-bit address._
```C++
inline hal::byte hal::to_8_bit_address (
    hal::byte p_address,
    i2c_operation p_operation
) noexcept
```





**Parameters:**


* `p_address` 7-bit [**i2c**](classhal_1_1i2c.md) address 
* `p_operation` write or read operation 



**Returns:**

hal::byte - 8-bit [**i2c**](classhal_1_1i2c.md) address 





        



### function to\_array 

_Convert a string\_view into a std::array of N number of characters._ 
```C++
template<size_t N>
constexpr std::array< char, N+1 > hal::to_array (
    std::string_view p_view
) 
```



Will always ensure that the array is null terminated




**Template parameters:**


* `N` - Size of the array 



**Parameters:**


* `p_view` - string to be placed into a char array 



**Returns:**

constexpr std::array&lt;char, N + 1&gt; - the char array object 





        



### function to\_string 

```C++
constexpr std::string_view hal::to_string (
    work_state p_state
) 
```






### function try\_until 

_Repeatedly call a worker function until it has reached a terminal state or a timeout has been reached._ 
```C++
inline result< work_state > hal::try_until (
    worker auto & p_worker,
    timeout auto p_timeout
) 
```





**Parameters:**


* `p_worker` - worker function to repeatedly call 
* `p_timeout` - callable timeout object 



**Returns:**

result&lt;work\_state&gt; - state of the worker function 





        



### function try\_until 

_Repeatedly call a worker function until it has reached a terminal state or a timeout has been reached._ 
```C++
inline result< work_state > hal::try_until (
    worker auto && p_worker,
    timeout auto p_timeout
) 
```





**Parameters:**


* `p_worker` - worker function to repeatedly call 
* `p_timeout` - callable timeout object 



**Returns:**

result&lt;work\_state&gt; - state of the worker function 





        



### function value 

_Helper function to convert an enum to its integral value._ 
```C++
constexpr auto hal::value (
    enumeration auto p_enum_value
) 
```





**Parameters:**


* `p_enum_value` - the enumeration you want to convert into an integral value 



**Returns:**

constexpr auto - return the integral value of the enum with the same type as the enumeration. 





        



### function wavelength 

_Calculates and returns the wavelength in seconds._ 
```C++
template<typename Period typename Period>
constexpr std::chrono::duration< int64_t, Period > hal::wavelength (
    hertz p_source
) 
```



Calculates and returns the wavelength in seconds as a float.




**Template parameters:**


* `Period` - desired period (defaults to std::femto for femtoseconds). 



**Parameters:**


* `p_source` - source frequency to convert to wavelength 



**Returns:**

std::chrono::duration&lt;int64\_t, Period&gt; - time based wavelength of the frequency.




**Template parameters:**


* `float_t` - float type 
* `Period` - desired period 



**Parameters:**


* `p_source` - source frequency to convert to wavelength 



**Returns:**

constexpr float - float representation of the time based wavelength of the frequency. 





        



### function write 

_write data to a target device on the_ [_**i2c**_](classhal_1_1i2c.md) _bus_
```C++
inline hal::result< hal::i2c::transaction_t > hal::write (
    i2c & p_i2c,
    hal::byte p_address,
    std::span< const hal::byte > p_data_out,
    timeout auto p_timeout
) 
```



Shorthand for writing i2c.transfer(...) for write only operations




**Parameters:**


* `p_i2c` - [**i2c**](classhal_1_1i2c.md) driver 
* `p_address` - target address 
* `p_data_out` - buffer of bytes to write to the target device 
* `p_timeout` - amount of time to execute the transaction 



**Returns:**

hal::result&lt;hal::i2c::transaction\_t&gt; - success or failure 





        



### function write 

_write data to a target device on the_ [_**i2c**_](classhal_1_1i2c.md) _bus_
```C++
inline hal::result< hal::i2c::transaction_t > hal::write (
    i2c & p_i2c,
    hal::byte p_address,
    std::span< const hal::byte > p_data_out
) 
```



Shorthand for writing i2c.transfer(...) for write only operations, but never times out. Can be used for devices that never perform clock stretching.




**Parameters:**


* `p_i2c` - [**i2c**](classhal_1_1i2c.md) driver 
* `p_address` - target address 
* `p_data_out` - buffer of bytes to write to the target device 



**Returns:**

hal::result&lt;hal::i2c::transaction\_t&gt; - success or failure 





        



### function write 

_Write bytes to a serial port._ 
```C++
inline status hal::write (
    serial & p_serial,
    std::span< const hal::byte > p_data_out
) 
```





**Parameters:**


* `p_serial` - the serial port that will be written to 
* `p_data_out` - the data to be written out the port 



**Returns:**

status - success or failure 





        



### function write 

_Write std::span of const char to a serial port._ 
```C++
inline status hal::write (
    serial & p_serial,
    std::string_view p_data_out
) 
```





**Parameters:**


* `p_serial` - the serial port that will be written to 
* `p_data_out` - chars to be written out the port 



**Returns:**

status - success or failure 





        



### function write 

_Write data to the SPI bus and ignore data sent from peripherals on the bus._ 
```C++
inline result< hal::spi::transfer_t > hal::write (
    spi & p_spi,
    std::span< const hal::byte > p_data_out
) 
```





**Parameters:**


* `p_spi` - spi driver 
* `p_data_out` - data to be written to the SPI bus 



**Returns:**

result&lt;hal::spi::transfer\_t&gt; - success or failure 





        



### function write\_partial 

_Write bytes to a serial port._ 
```C++
inline result< serial::write_t > hal::write_partial (
    serial & p_serial,
    std::span< const hal::byte > p_data_out
) 
```





**Parameters:**


* `p_serial` - the serial port that will be written to 
* `p_data_out` - the data to be written out the port 



**Returns:**

result&lt;serial::write\_t&gt; - get the results of the uart port write operation. 





        



### function write\_then\_read 

_write and then read bytes from target device on_ [_**i2c**_](classhal_1_1i2c.md) _bus_
```C++
inline hal::result< hal::i2c::transaction_t > hal::write_then_read (
    i2c & p_i2c,
    hal::byte p_address,
    std::span< const hal::byte > p_data_out,
    std::span< hal::byte > p_data_in,
    timeout auto p_timeout=hal::never_timeout()
) 
```



This API simply calls transaction. This API is here for consistency across the other other communication protocols such as SPI and serial.




**Parameters:**


* `p_i2c` - [**i2c**](classhal_1_1i2c.md) driver 
* `p_address` - target address 
* `p_data_out` - buffer of bytes to write to the target device 
* `p_data_in` - buffer to read bytes into from target device 
* `p_timeout` - amount of time to execute the transaction



**Returns:**

hal::result&lt;hal::i2c::transaction\_t&gt; - success or failure 





        



### function write\_then\_read 

_write and then read bytes from target device on_ [_**i2c**_](classhal_1_1i2c.md) _bus_
```C++
inline hal::result< hal::i2c::transaction_t > hal::write_then_read (
    i2c & p_i2c,
    hal::byte p_address,
    std::span< const hal::byte > p_data_out,
    std::span< hal::byte > p_data_in
) 
```



This API simply calls transaction. This API is here for consistency across the other other communication protocols such as SPI and serial.


This operation will never time out and should only be used with devices that never perform clock stretching.




**Parameters:**


* `p_i2c` - [**i2c**](classhal_1_1i2c.md) driver 
* `p_address` - target address 
* `p_data_out` - buffer of bytes to write to the target device 
* `p_data_in` - buffer to read bytes into from target device



**Returns:**

hal::result&lt;hal::i2c::transaction\_t&gt; - success or failure 





        



### function write\_then\_read 

_write and then return an array of read bytes from target device on_ [_**i2c**_](classhal_1_1i2c.md) _bus_
```C++
template<size_t BytesToRead>
result< std::array< hal::byte, BytesToRead > > hal::write_then_read (
    i2c & p_i2c,
    hal::byte p_address,
    std::span< const hal::byte > p_data_out,
    timeout auto p_timeout
) 
```



Eliminates the need to create a buffer and pass it into the read function.




**Template parameters:**


* `BytesToRead` - number of bytes to read after write 



**Parameters:**


* `p_i2c` - [**i2c**](classhal_1_1i2c.md) driver 
* `p_address` - target address 
* `p_data_out` - buffer of bytes to write to the target device 
* `p_timeout` - amount of time to execute the transaction 



**Returns:**

result&lt;std::array&lt;hal::byte, BytesToRead&gt;&gt; 





        



### function write\_then\_read 

_write and then return an array of read bytes from target device on_ [_**i2c**_](classhal_1_1i2c.md) _bus_
```C++
template<size_t BytesToRead>
result< std::array< hal::byte, BytesToRead > > hal::write_then_read (
    i2c & p_i2c,
    hal::byte p_address,
    std::span< const hal::byte > p_data_out
) 
```



Eliminates the need to create a buffer and pass it into the read function.




**Template parameters:**


* `BytesToRead` - number of bytes to read after write 



**Parameters:**


* `p_i2c` - [**i2c**](classhal_1_1i2c.md) driver 
* `p_address` - target address 
* `p_data_out` - buffer of bytes to write to the target device 



**Returns:**

result&lt;std::array&lt;hal::byte, BytesToRead&gt;&gt; 





        



### function write\_then\_read 

_Perform a write then read transaction over serial._ 
```C++
inline result< std::span< hal::byte > > hal::write_then_read (
    serial & p_serial,
    std::span< const hal::byte > p_data_out,
    std::span< hal::byte > p_data_in,
    timeout auto p_timeout
) 
```



This is especially useful for devices that use a command and response method of communication.




**Parameters:**


* `p_serial` - the serial port to have the transaction occur on 
* `p_data_out` - the data to be written to the port 
* `p_data_in` - a buffer to receive the bytes back from the port 
* `p_timeout` - timeout callable that indicates when to bail out of the read operation. 



**Returns:**

status - success or failure or [**serial::write()**](classhal_1_1serial.md#function-write) returns an error from the serial port or success. 





        



### function write\_then\_read 

_Perform a write then read transaction over serial._ 
```C++
template<size_t BytesToRead>
result< std::array< hal::byte, BytesToRead > > hal::write_then_read (
    serial & p_serial,
    std::span< const hal::byte > p_data_out,
    timeout auto p_timeout
) 
```



This is especially useful for devices that use a command and response method of communication.




**Template parameters:**


* `BytesToRead` - the number of bytes to read back 



**Parameters:**


* `p_serial` - the serial port to have the transaction occur on 
* `p_data_out` - the data to be written to the port 
* `p_timeout` - timeout callable that indicates when to bail out of the read operation. 



**Returns:**

result&lt;std::array&lt;hal::byte, BytesToRead&gt;&gt; - return an error if a call to [**serial::read**](classhal_1_1serial.md#function-read) or [**serial::write()**](classhal_1_1serial.md#function-write) returns an error from the serial port or an array of read bytes. 





        



### function write\_then\_read 

_Write data to the SPI bus and ignore data sent from peripherals on the bus then read data from the SPI and fill the write line with filler bytes._ 
```C++
inline result< hal::spi::transfer_t > hal::write_then_read (
    spi & p_spi,
    std::span< const hal::byte > p_data_out,
    std::span< hal::byte > p_data_in,
    hal::byte p_filler=spi::default_filler
) 
```



This utility function that fits the use case of many SPI devices where a transaction is not full duplex. In many spi devices, full duplex means that as data is being written to the SPI bus, the peripheral device is sending data back on the read line. In most cases, the protocol is to write data to the bus, and ignore the read line because the peripheral is not writing anything meaningful to that line, then reading from SPI bus and writing nothing meaningful to the write line as the peripheral is ignoring that line.




**Parameters:**


* `p_spi` - spi driver 
* `p_data_out` - bytes to write to the bus 
* `p_data_in` - buffer to receive bytes back from the SPI bus 
* `p_filler` - filler data placed on the bus when the read operation begins. 



**Returns:**

result&lt;hal::spi::transfer\_t&gt; - success or failure 





        



### function write\_then\_read 

_Write data to the SPI bus and ignore data sent from peripherals on the bus then read data from the SPI, fill the write line with filler bytes and return an array of bytes._ 
```C++
template<size_t BytesToRead>
result< std::array< hal::byte, BytesToRead > > hal::write_then_read (
    spi & p_spi,
    std::span< const hal::byte > p_data_out,
    hal::byte p_filler=spi::default_filler
) 
```





**Template parameters:**


* `BytesToRead` - Number of bytes to read from the bus 



**Parameters:**


* `p_spi` - spi driver 
* `p_data_out` - bytes to write to the bus 
* `p_filler` - filler data placed on the bus when the read operation begins. 



**Returns:**

result&lt;std::array&lt;hal::byte, BytesToRead&gt;&gt; 





        
## Public Static Functions Documentation




### function equals 

_Determines if two values are equal within a relative error._ 
```C++
static constexpr static bool hal::equals (
    std::floating_point auto p_value1,
    std::floating_point auto p_value2,
    float p_epsilon=1e-9f
) 
```





**Parameters:**


* `p_value1` - First value to compare. 
* `p_value2` - Second value to compare. 
* `p_epsilon` - Error margin that the difference is compared to. 



**Returns:**

true - difference is less than epsilon 




**Returns:**

false - difference is more than epsilon 





        

------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal/accelerometer.hpp`

