# `adc` interface design

See [ADC interface
API](https://libhal.github.io/libhal/api/classhal_1_1adc.html) for details on
the interface and how to use it.

## Discussing `read_t`

`read_t` only has a singular field and that is `percentage`. The reason a
floating point number between -1.0 and 1.0 is to erase information like voltage
and bit-resolution.

### Erasing Voltage

The actual voltage on an ADC pin is not usually determinable by a ADC driver.
The only thing an ADC peripheral can determine is the proportion of the read
voltage relative to a voltage reference. That voltage reference could be
anything, and therefore, there's no reason to try to embed that information into
the ADC interface.

### Erasing Bit Resolution

In general, analog to digital converters have a fixed bit resolution. In what
cases would knowing the ADC resolution at runtime be useful? It wouldn't be
useful in terms of calculating the voltage because you can use the floating
point value for that.

No, the only reason why a developer or driver would need the bit resolution to
discriminate against an ADC, emitting an error that indicates that the
resolution of an ADC is not high enough for the driver or application to work.
But this would violate the [D.4 Safe](philosophy.md#d5-safe) design
philosophy that drivers should NOT hold code that attempts to check for problems
of architecture.
