# 🔗 Interfaces in Software Development and libhal

In software development, an interface is a shared boundary across which two
separate components of a computer program exchange information. The exchange
can be between software, computer hardware, peripheral devices, humans, and
combinations of these. Technically, it refers to a software component (a class,
a module, etc.) that encapsulates a specific functionality and that can be used
by other components.

Interfaces work by specifying the methods that a class must implement, without
including the implementation of the methods themselves. This allows different
classes to implement the same interface in different ways, providing a level of
abstraction between the interface and the implementation.

In the context of libhal (Hardware Abstraction Layer Library), interfaces are
used to define a standard way of interacting with different types of hardware.
This makes the software portable because it can interact with the hardware
through the interface, without needing to know the specifics of how the hardware
is implemented. This means that if the underlying hardware changes, only the
implementation of the interface needs to change, not the software that uses it.

## Driver Types in libhal

### Digital

=== "Input Pin"

    See API: [`hal::input_pin`](https://libhal.github.io/libhal/api/classhal_1_1input__pin.html)

    The Input Pin interface (`hal::input_pin`) in libhal is used for reading the
    state of a digital input pin. This is useful in situations where you need to
    determine if the voltage on a pin is HIGH or LOW.

    In the libhal library, the Input Pin interface provides methods to configure
    the input pin according to the settings supplied and to read the state of
    the input pin.

=== "Output Pin"

    See API: [`hal::output_pin`](https://libhal.github.io/libhal/api/classhal_1_1output__pin.html)

    The Output Pin interface in libhal is used for controlling the state of a
    digital output pin. This is useful in situations where you need to send a
    control signal or turn on or off an LED.

    In the libhal library, the Output Pin interface provides methods to
    configure the output pin according to the settings supplied, to set the
    state of the pin, and to read the current state of the output pin.

=== "Interrupt Pin"

    See API: [`hal::interrupt_pin`](https://libhal.github.io/libhal/api/classhal_1_1interrupt__pin.html)

    The Interrupt Pin interface in libhal is used for automatically calling a
    function when a pin's state has transitioned. This is useful in situations
    where you need to respond to changes in the state of a pin.

    In the libhal library, the Interrupt Pin interface provides methods to
    configure the interrupt pin according to the settings supplied and to set
    the callback for when the interrupt occurs.

### Analog

=== "ADC (Analog-to-Digital Converter)"

    See API: [`hal::adc`](https://libhal.github.io/libhal/api/classhal_1_1adc.html)

    The ADC interface in libhal is used to convert an analog signal into a
    digital one. This is useful in situations where the hardware device is
    producing an analog signal, such as a sensor reading, but the software works
    with digital values.

    In the libhal library, the ADC interface provides methods to read the
    voltage from the ADC as a percentage of the reference voltage.

=== "DAC (Digital-to-Analog Converter)"

    See API: [`hal::dac`](https://libhal.github.io/libhal/api/classhal_1_1dac.html)

    The DAC interface in libhal is used to convert a digital signal into an
    analog one. This is useful in situations where the software is producing
    digital values, but the hardware device requires an analog signal.

    In the libhal library, the DAC interface provides methods to write a voltage
    to the DAC, as a percentage of the reference voltage.

=== "PWM (Pulse Width Modulation)"

    See API: [`hal::pwm`](https://libhal.github.io/libhal/api/classhal_1_1pwm.html)

    The PWM interface in libhal is used to control the waveform generation of a
    square wave and its properties such as frequency and duty cycle. PWM is used
    for power control like motor control, lighting, transmitting signals to
    servos, sending telemetry and much more.

    In the libhal library, the PWM interface provides methods to set the PWM
    waveform frequency and duty cycle.

### Time & Timers

=== "Timer"

    See API: [`hal::timer`](https://libhal.github.io/libhal/api/classhal_1_1timer.html)

    The Timer interface in libhal is used for scheduling events to occur after a
    specified amount of time. This is useful in situations where you need to
    perform an action after a certain amount of time has passed.

    In the libhal library, the Timer interface provides methods to check if the
    timer is running, cancel a scheduled event, and schedule a new event.

=== "Steady Clock"

    See API: [`hal::steady_clock`](https://libhal.github.io/libhal/api/classhal_1_1steady__clock.html)

    The Steady Clock interface in libhal is used for a steady clock mechanism.
    This clock is steady meaning that subsequent calls to get the uptime of this
    clock cannot decrease as physical time moves forward and the time between
    ticks of this clock are constant and defined by the clock's frequency.

    In the libhal library, the Steady Clock interface provides methods to get
    the operating frequency of the steady clock and to get the current value of
    the steady clock.

    This completes the descriptions for all the interfaces in the libhal
    library. Each of these interfaces provides a way to interact with different
    types of hardware in a consistent and portable way, making it easier to
    write embedded software that can run on different platforms.

### Serial Communication Protocols

=== "SPI (Serial Peripheral Interface)"

    See API: [`hal::spi`](https://libhal.github.io/libhal/api/classhal_1_1spi.html)

    The SPI interface in libhal is used for communication over a Serial
    Peripheral Interface (SPI). This is a synchronous serial communication
    interface specification used for short-distance communication, primarily in
    embedded systems.

    In the libhal library, the SPI interface provides methods to configure the
    SPI bus and perform an SPI transaction.

=== "I2C (Inter-Integrated Circuit)"

    See API: [`hal::i2c`](https://libhal.github.io/libhal/api/classhal_1_1i2c.html)

    The I2C interface in libhal is used for communication over an
    Inter-Integrated Circuit (I2C) bus. This is a multi-master, multi-slave,
    packet switched, single-ended, serial computer bus invented by Philips
    Semiconductor.

    In the libhal library, the I2C interface provides methods to configure the
    I2C bus and perform an I2C transaction.

=== "Serial"

    See API: [`hal::serial`](https://libhal.github.io/libhal/api/classhal_1_1serial.html)

    The Serial interface in libhal is used for hardware that implements a serial
    protocol like UART, RS232, RS485, and others that use a similar
    communication protocol but may use different voltage schemes.

    In the libhal library, the Serial interface provides methods to configure
    the serial to match the settings supplied, to write data to the transmitter
    line of the serial port, to copy bytes from the working buffer into the
    passed buffer, and to flush the working buffer.

    Unfortunately, I encountered an error while trying to access the Steady
    Clock interface file in the libhal repository. I'll try again to retrieve
    its content.

=== "CAN (Controller Area Network)"

    See API: [`hal::can`](https://libhal.github.io/libhal/api/classhal_1_1can.html)

    The CAN interface in libhal is used for communication over a Controller Area
    Network (CAN bus). This is a robust vehicle bus standard designed to allow
    microcontrollers and devices to communicate with each other's applications
    without a host computer.

    In the libhal library, the CAN interface provides methods to configure the
    CAN bus, send a CAN message, and set a message reception handler.

### Actuators

=== "Motor"

    See API: [`hal::motor`](https://libhal.github.io/libhal/api/classhal_1_1motor.html)

    The Motor interface in libhal is used for controlling an open loop
    rotational actuator. This can represent a variety of things such as a driver
    for a motor controller IC like the DRV8801, a driver for a motor with an
    integrated controller & serial interface, a unidirectional motor controlled
    by a single transistor, or a servo with open loop motor control.

    In the libhal library, the Motor driver provides methods to apply power to
    the motor. The power applied is a percentage of the total available power.

=== "Servo"

    See API: [`hal::servo`](https://libhal.github.io/libhal/api/classhal_1_1servo.html)

    The Servo interface in libhal is used for controlling a closed loop position
    controlled rotational actuator. Servos are devices that can rotate to a
    specified position.

    In the libhal library, the Servo interface provides methods to set the
    position of the servo's output shaft.

### Sensors

=== "Temperature Sensor"

    See API: [`hal::temperature_sensor`](https://libhal.github.io/libhal/api/classhal_1_1temperature__sensor.html)

    The Temperature Sensor interface in libhal is used for reading the current
    temperature measured by a device. This is useful in situations where you
    need to monitor the temperature of a device or environment.

    In the libhal library, the Temperature Sensor interface provides a method to
    read the current temperature.

=== "Accelerometer"

    See API: [`hal::accelerometer`](https://libhal.github.io/libhal/api/classhal_1_1accelerometer.html)

    The Accelerometer interface in libhal is used for sensing acceleration.
    Accelerometers are devices that measure the rate of change of velocity with
    respect to time (acceleration).

    In the libhal library, the Accelerometer interface provides methods to read
    the acceleration sensed by the device in the X, Y, and Z axes.

    Accelerometers are commonly used to determine orientation or tilt of an
    object.

=== "Gyroscope"

    See API: [`hal::gyroscope`](https://libhal.github.io/libhal/api/classhal_1_1gyroscope.html)

    The Gyroscope interface in libhal is used for sensing angular velocity.
    Gyroscopes are devices that measure the rotational speed around an axis.

    In the libhal library, the Gyroscope interface provides methods to read the
    angular velocity sensed by the device in the X, Y, and Z axes.

=== "Magnetometer"

    See API: [`hal::magnetometer`](https://libhal.github.io/libhal/api/classhal_1_1magnetometer.html)

    The Magnetometer interface in libhal is used for sensing magnetic field
    strength. Magnetometers are devices that measure the strength and direction
    of a magnetic field.

    In the libhal library, the Magnetometer interface provides methods to read
    the magnetic field strength sensed by the device in the X, Y, and Z axes.

    Such devices are commonly used as a compass in order to provide heading
    information to a device.

=== "Distance Sensor"

    See API: [`hal::distance_sensor`](https://libhal.github.io/libhal/api/classhal_1_1distance__sensor.html)

    The Distance Sensor interface in libhal is used for sensing linear distance.
    Distance sensors can be used in a variety of applications, such as measuring
    the distance to an object or determining the position of an object.

    In

    the libhal library, the Distance Sensor interface provides methods to read
    the current distance measured by the device.

=== "Rotation Sensor"

    See API: [`hal::rotation_sensor`](https://libhal.github.io/libhal/api/classhal_1_1rotation__sensor.html)

    The Rotation Sensor interface in libhal is used for sensing a single axis of
    rotation. Rotation sensors can be used in a variety of applications, such as
    measuring the rotation to an object or determining the angular position of
    an object.

    In the libhal library, the Rotation Sensor interface provides methods to
    read the current angle, in degrees, measured by the device.

---

=== "⏳ Current Sensor"

    **API not available yet**

    A Current Sensor driver in libhal would be used for sensing electrical
    current. Current sensors are devices that detect the current of current
    flowing through a circuit.

    In the libhal library, the Current Sensor interface provides methods to
    read the current as a unit of `amperes`.

=== "⏳ Voltage Sensor"

    **API not available yet**

    A Voltage Sensor driver in libhal would be used for sensing electrical
    voltage. Voltage sensors are devices that can measure the voltage potential
    difference between two points in an electrical circuit. When available, the
    Voltage Sensor driver would provide methods to read the voltage sensed by
    the device.

    In the libhal library, the Voltage Sensor interface provides methods to
    read the current as a unit of `volts`.

=== "⏳ GPS"

    **API not available yet**

    A GPS (Global Positioning System) driver in libhal would be used for
    receiving and interpreting GPS signals, which provide geolocation and time
    information to a GPS receiver anywhere on or near the Earth. When available,
    the GPS driver would provide methods to read the current location, speed,
    time, and other relevant data from the GPS signals.

    In the libhal library, the GPS interface provides methods to read location
    in longitude and latitude, get the current time, and get velocity.

    **NOTE:** that more investigation is needed to determine what fields make sense
    for this sensor and if it should be broken up into multiple interfaces like
    `hal::geolocation`, `hal::heading`, `hal::clock` and `hal::velocity`.

## The Myth about Virtual: Understanding Dynamic Polymorphism in C++

There's a common misconception in the C++ community that dynamic polymorphism
inherently requires dynamic memory (heap memory), and that it's slower or more
memory-intensive than other forms of polymorphism. This is not necessarily true.
Let's debunk these myths.

### Dynamic Polymorphism and Dynamic Memory

Dynamic polymorphism in C++ is achieved through virtual functions, which allow
us to override functions in derived classes. This provides a way to use a base
class pointer or reference to call the appropriate function based on the actual
object type at runtime.

While it's true that dynamic memory can be used in conjunction with dynamic
polymorphism (for instance, when creating objects of derived classes and storing
them in base class pointers), it's not a requirement. You can have dynamic
polymorphism without dynamic memory.

Consider a scenario where you have a base class `Base` and a derived class
`Derived`. If you have a function that takes a reference to `Base`, you can pass
an instance of `Derived` to that function without needing to allocate `Derived`
on the heap:

```cpp
void someFunction(Base& baseRef) {
    baseRef.someVirtualFunction();
}

Derived derived;
someFunction(derived);  // No dynamic memory involved
```

In this case, `someFunction` will call the correct version of
`someVirtualFunction` based on the actual type of the object, even though it's
passed as a reference to `Base`. This is dynamic polymorphism in action, without
any dynamic memory.

### Performance of Dynamic Polymorphism

Another myth is that dynamic polymorphism is slower than other forms of
polymorphism, such as using a struct with function pointers (akin to C-style
interfaces). In reality, the performance difference is negligible in most cases.

When a virtual function is called, the compiler needs to look up the function
address in the virtual table (vtable) of the object. This is essentially a
pointer dereference, which is the same operation needed to call a function
through a function pointer in a struct. Therefore, the performance of these two
approaches is comparable.

### Memory Overhead of Virtual Polymorphism

The memory overhead of dynamic polymorphism is also often overstated. Each class
with virtual functions has a vtable, which is essentially a static array of
function pointers. This vtable is shared among all instances of the class, so it
doesn't increase the per-instance memory overhead.

The vtable does increase the size of the binary, but the increase is usually
small. Each vtable entry is just a function pointer. For a class hierarchy with
a reasonable number of virtual functions, this overhead is typically negligible.

In addition to the function pointers, the vtable contains two more pointers: one
for the parent class's vtable (for supporting inheritance) and one for Run-Time
Type Information (RTTI, used for `dynamic_cast` and `typeid`). These are fixed
overheads per class, not per object.

In conclusion, while dynamic polymorphism in C++ does have some overhead, it's
often smaller than people think. It doesn't inherently require dynamic memory,
its performance is comparable to other forms of polymorphism, and its memory
overhead is typically small. Therefore, it's a powerful tool for creating
flexible and reusable code in C++.
