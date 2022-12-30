# `i2c` interface design

See [I2C interface
API](https://libhal.github.io/libhal/api/classhal_1_1i2c.html) for details on
the interface and how to use it.

## `i2c::transaction()`

The singular transaction API can support all forms of standard i2c communication
operations such as read, write, and write then read. It also comes with a
timeout parameter which indicates to the i2c driver when a transaction should
abort. Normally applications and drivers will use `hal::never_timeout` for
parameter, unless an external device has the capability/need to perform clock
stretching on the bus.

The APIs for transaction were not split up into a separate `read()`, `write()`
and `write_then_read()` functions in order to reduce vtable size to just two
entries. Many i2c implementations incorporate all of these operations in the
same algorithm or interrupt state machine which matches the current API
structure.

The separate operations can be made available using the i2c utility functions in
`libhal-util`.

## `i2c::configure()`

There is not much to say about configuration for i2c. There really is only one
option that is variable with i2c an that is clock speed. Everything else is
device and target specific.
