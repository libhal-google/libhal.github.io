# `hal::input_pin` Interface Tutorial

In this tutorial, we'll learn about the `hal::input_pin` interface and how
digital input pins work. This interface provides a hardware abstraction for
digital input pins, making it easier to read the pin state and determine if the
voltage on it is HIGH or LOW.

## What is a Digital Input Pin?

A digital input pin is a pin on a microcontroller that reads the voltage level
applied to it. The pin can read either a HIGH or a LOW voltage level. In most
cases, a HIGH voltage level is represented by the supply voltage (e.g., 3.3V or
5V), while a LOW voltage level is represented by the ground (0V). Digital input
pins are commonly used to read signals from sensors, buttons, and other external
devices.

## Understanding the `hal::input_pin` Interface

The `hal::input_pin` interface is designed to provide a consistent way to
interact with digital input pins across various hardware platforms. It consists
of a few key components:

### 1. `settings` Structure

This structure holds the generic settings for input pins. It currently contains
a single field, `pin_resistor`, which represents the pull resistor
configuration for the input pin. The pull resistor can be set to `pull_up` or
`pull_down`, depending on the hardware requirements.

### 2. `level_t` Structure

The `level_t` structure is used to represent the measured state of the input
pin. It has a single boolean field, `state`, which indicates whether the pin is
at a HIGH voltage level (`true`) or a LOW voltage level (`false`).

### 3. `configure` Method

This method is used to configure the input pin according to the supplied
settings. It takes a `settings` object as an argument and returns a `status`
object indicating success or failure. If the settings cannot be achieved, an
`std::errc::invalid_argument` exception is thrown.

### 4. `level` Method

The `level` method reads the state of the input pin and returns a
`result<level_t>` object. A `true` value indicates a HIGH voltage level, while
a `false` value indicates a LOW voltage level.

### 5. Virtual Driver Methods

The `driver_configure` and `driver_level` methods are virtual and must be
implemented by the derived class for specific hardware platforms. These methods
are responsible for configuring the input pin and reading its level,
respectively.

## Using the `hal::input_pin` Interface

To use the `hal::input_pin` interface, you need to create a derived class that
implements the virtual driver methods for your specific hardware platform.
Here's a basic outline of how to do that:

1. Include the `input_pin.hpp` header file in your project.
2. Create a derived class that inherits from `hal::input_pin`.
3. Implement the `driver_configure` and `driver_level` methods in your derived
   class.

```cpp
#include "input_pin.hpp"

class my_input_pin : public hal::input_pin {
private:
  virtual hal::status driver_configure(const hal::input_pin::settings&
      p_settings) override
  {
    // Implement hardware-specific configuration logic here
  }

  virtual hal::result<hal::input_pin::level_t> driver_level() override
  {
    // Implement hardware-specific level reading logic here
  }
};
```

Once you've created your derived class, you can use the `configure` and `level`
methods to interact with the digital input pin.

```cpp
my_input_pin input_pin;
hal::input_pin::settings pin_settings;
pin_settings.resistor = hal::pin_resistor::pull_up;

auto configStatus = input_pin.configure(pin_settings);
if (configStatus == hal::status::success) {
// Successfully configured the input pin
} else {
// Handle configuration failure
}

// Read the state of the input pin
auto pin_level_result = input_pin.level();
if (pin_level_result) {
  hal::input_pin::level_t pinLevel = pin_level_result.value();
  if (pinLevel.state) {
     // The pin is at a HIGH voltage level
  } else {
     // The pin is at a LOW voltage level
  }
} else {
   // Handle level reading failure
}
```

## Digital Input Pin Tutorial

Now that you understand the `hal::input_pin` interface, let's explore how
digital input pins work in more detail.

Digital input pins are used to read the voltage level applied to them. When a
voltage level is applied to the pin, it compares the voltage to a threshold
value to determine if the pin should read HIGH or LOW. This threshold is often
set at around half of the supply voltage.

When using digital input pins, it's essential to consider pull-up or pull-down
resistors. These resistors help prevent undefined behavior caused by floating
pins. A floating pin is a pin that is not connected to a HIGH or LOW voltage
source and can pick up noise, resulting in unpredictable behavior.

### Pull-Up Resistor

A pull-up resistor connects the digital input pin to the supply voltage (Vcc)
through a resistor. When no external voltage is applied to the pin, the pull-up
resistor pulls the voltage level to Vcc, causing the pin to read HIGH. When an
external device connects the pin to ground (GND), the pin reads LOW.

### Pull-Down Resistor

A pull-down resistor connects the digital input pin to ground (GND) through a
resistor. When no external voltage is applied to the pin, the pull-down
resistor pulls the voltage level to GND, causing the pin to read LOW. When an
external device connects the pin to the supply voltage (Vcc), the pin reads
HIGH.

It's important to choose the appropriate pull resistor configuration based on
your specific hardware and application requirements. The
`hal::input_pin::settings` structure in the `hal::input_pin` interface allows
you to specify the pull resistor configuration for your input pin.

To use the `hal::input_pin` interface with the appropriate pull resistor
configuration, create a derived class as described earlier in the tutorial. In
the `driver_configure` method implementation, configure your hardware platform
to use the specified pull resistor settings. Then, use the `configure` and
`level` methods provided by the `hal::input_pin` interface to interact with the
digital input pin and read its state.