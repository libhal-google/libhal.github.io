# About

The world of embedded systems is written almost entirely in C and C++. More and
more of the embedded world move away from C and towards C++. This has to do with
the many benefits of C++ such as type safety, compile time features,
meta-programming, multi-paradigm and much more. When these features are used
correctly, they can result in smaller binary sizes and higher performance code
than in C.

But a problem that embedded C++ software suffers is that there isn't a
consistent and common API for embedded libraries. Looking around, you will find
that each hardware vendor has their own set of libraries and tools for their
specific products. If you write a driver on top of their libraries, you will
find that your code will only work for that specific platform/product. In some
cases you may also be limited to just their toolchain. You as the developer are
locked in to this one specific setup. And if you move to another platform, you
must do the work of rewriting all of your code again.

libhal seeks to solve this issue by creating a set of generic interfaces for
embedded system concepts such as serial communication (UART), analog to digital
conversion (ADC), inertial measurement units (IMU), pulse width modulation (PWM)
and much more. The advantage of building a system on top of libhal is that
higher level drivers can be used with any target platform whether it is a stm32,
a nxp micro controller, a RISC-V, or is on an embedded linux.

This project is inspired by the work of Rust's embedded_hal and follows many of
the same design goals.

libhal's design goals:

1. Serve as a foundation for building an ecosystem of platform agnostic drivers.
2. Must abstract away device specific details like registers and bitmaps.
3. Must be generic across devices such that any platform can be supported.
4. Must be minimal for boosting performance and reducing size costs.
5. Must be composable such that higher level drivers can build on top of these.
6. Be accessible through package mangers so that developers can easily pick and
   choose which drivers they want to use.

## Software Copyrights

This source code is licensed under the Apache License 2.0 as described in the
LICENSE file.

## Third Party Library Licenses

- [Boost.LEAF](https://github.com/boostorg/leaf), BOOST license
- [tl-function-ref/1.0.0](https://github.com/TartanLlama/function_ref), CC0
