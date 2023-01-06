# `spi` interface design

See [SPI interface
API](https://libhal.github.io/libhal/api/classhal_1_1spi.html) for details on
the interface and how to use it.

## Supporting just 8-bit frames

8-bit frames are the most common frame size for SPI. 16-bit does work, but this
can be achieved with two 8-bit frames of data. Other frame sizes are very rare
and thus does not warrant the complexity added to the interface,
`hal::spi::settings_t` object, and `hal::spi::configure` function. If additional
frame sizes are needed, then a new `hal::variable_frame_spi` interface would be
created. In the case the `hal::variable_frame_spi`, you pay for the cost of a
more complex implementation.

## Not including chip select

The spi interface gives no control over a chip select pin. There are two reasons
for this:

1. Most SPI peripherals have a single `NSS` or `CS` pin per SPI bus. If the user wants to
   talk to multiple devices on that bus, then the application will need to
   disable that pin and use separate output pins to select the appropriate
   device. Thus the CS pin is useless in this situation.
2. The behavior of a chip select pin is device specific and may not match how
   the peripheral controls the chip select. Drivers must have complete control
   over the chip select pin and how it used, thus that control cannot be given
   to the SPI peripheral.

Because of these two factors SPI driver are decoupled from their respective chip
select pin. Thus ever device driver that accepts a `hal::spi` must also accept
a chip select pin, unless the device does not have an chip select pin and must
exist on the bus all by itself.
