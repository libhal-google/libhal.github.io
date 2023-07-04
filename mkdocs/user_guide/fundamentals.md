# 🧱 Fundamentals of libhal

At its core, libhal is a set of interfaces that correspond to hardware devices
and peripherals. These interfaces use runtime polymorphism to decouple
application logic from driver implementation details. This decoupling enables
applications to run on any platform device that has the necessary components
available.

## Types of Libraries

In libhal, libraries are categorized into platform, utility, device, process,
and application/operating system libraries.

- **Processor Libraries**: Contain the driver implementations for specific
  processor. Generally, these libraries are not direct dependencies in an
  application. These are depended upon by platform libraries, which use them to
  make their own drivers work.
- **Platform Libraries**: Contain the driver implementations for specific
  platforms. Every application that uses libhal will need one of these libraries
  in order to work on any hardware.
- **Utility Libraries**: Software libraries to make writing libhal code easier.
- **Device Libraries**: Libraries containing drivers for specific hardware
  devices or modules, such as a sensor, display, or a motor controller. They are
  generally platform agnostic and should be usable on any system that can
  support the driver requirements, memory requirements and performance
  requirements.
- **Process Libraries**: Code that performs some work. This work usually
  requires one or more drivers in order to work. This is similar to an
  application on a device like a desktop computer or smartphone, but on an
  embedded system. These processes can be called multiple times to perform work
  or be used as the function for a thread.
- **Application Libraries**: Full applications that typically handle and take
  over the whole system.
- **RTOS Libraries**: RTOS stands for Real Time Operating System and using these
  libraries will enable multi-tasking and multi-threading capability to the
  application.
- **Software Libraries:** These libraries are purely software-based and do not
  directly interact with hardware. They provide useful utilities, data
  structures, algorithms, and other software components that can be used across
  different parts of an application. Examples might include an efficient
  circular buffer implementation, a data structure for facilitating cross-driver
  communication, or a driver that performs a specific algorithm on data. These
  libraries are platform-agnostic and can be used in any application that meets
  their requirements.

## Interfaces

Interfaces are the basic building blocks of libhal and enable the flexibility
needed to be portable and flexible. An interface is a contract of functions that
an implementing class must adhere to. Any software that implements (inherits) an
interface must provide implementations for each function in the interface,
otherwise the compiler will generate a compiler error.

Not all libraries will implement an interface. Some drivers are

## Driver Types

- **Peripheral Drivers**: Drivers for a platform that is embedded within the
  platform or development board and therefore cannot be removed from the chip
  and is fixed in number.
- **Device Drivers**: Drivers for devices external to a platform. In order to
  communicate with such a device the platform must have the necessary peripherals
  and peripheral drivers to operate correctly.
- **Soft Drivers**: Drivers that do not have any specific underlying hardware
  associated with them. They are used to emulate, give context to, or alter the
  behavior of interfaces.

## Concrete Drivers

In libhal, not all drivers are designed to implement an interface. These
drivers, referred to as "Concrete Drivers", are unique in that they typically do
not contain virtual functions and cannot be passed in a generic form. Despite
this, they play a crucial role in the library due to their specific
functionality and support for certain hardware components.

Concrete Drivers are fully realized classes that provide direct, specific
functionality. They are designed to interact with a particular piece of hardware
or perform a specific task, and their methods provide a direct interface to that
hardware or task. Because they do not implement an interface, they cannot be
used polymorphically like other drivers in libhal. However, their specificity
allows them to provide robust, efficient, and direct control over their
associated hardware.

These drivers are particularly useful in scenarios where a specific piece of
hardware or a specific task does not neatly fit into one of the existing libhal
interfaces, or when the overhead of virtual functions is not desirable. Despite
not conforming to a specific interface, Concrete Drivers adhere to the same
design principles as other components of libhal, ensuring consistency and
reliability across the library.

In libhal, not all drivers are designed to implement an interface. These
drivers, referred to as "Concrete Drivers", are unique in that they typically do
not contain virtual functions and cannot be passed in a generic form. Despite
this, they play a crucial role in the library due to their specific
functionality and support for certain hardware components.

Note that this isn't a distinct type outside of the list of Driver types
mentioned above. Concrete drivers can be a peripheral, device and soft driver.
They simply do not implement an interface.

### Multi-Interface Support

Many Concrete Drivers can actually support multiple interfaces at once. For
example, a driver for the RMD-X6 smart motor can act as a servo, a motor, a
temperature sensor (for itself), a voltage sensor (for the bus it is connected
to), a current sensor (for how much current it's consuming), and a rotation
sensor (for its output shaft's position). To create these drivers from the
concrete driver, an adaptor class must be used. These adaptor classes take the
concrete class and use its methods in order to implement the interface APIs.

### Adaptor Factory Functions

In libhal, there is a common language policy for adaptors. To create them you
must call a factory function called `make_<name of interface>()` and it will
return a `hal::result<adaptor_object>`. There is an overload for every driver
that implements a particular interface. For example, in order to generate a
servo from an RMD X6 servo object, it would look like this:

```C++
auto smart_servo_driver = HAL_CHECK(make_servo(rmd_x6_driver));
```

This approach allows for a consistent and efficient way to create adaptors for
various interfaces from a single concrete driver. It ensures that the concrete
driver can be utilized to its full potential, providing access to all its
capabilities through the appropriate interfaces.

## Return Types `hal::result<T>` and `hal::status`

`hal::result<T>` is an alias for the `boost::leaf::result<T>` type. This type
can either be the value T or an error. `hal::status` is simply a concise alias
for the type `boost::leaf::result<void>`. See
[Boost.LEAF](https://boostorg.github.io/leaf/) for more details about it and
how it works.

`HAL_CHECK()` is a macro that takes an expression that evaluates to a
`hal::result`.
