<div align="center">
<img style="height:200px" src="https://raw.githubusercontent.com/libhal/.github/main/profile/logo.png">
<h1>Welcome to libhal</h1>
</div>

## Abstract

libhal exists to make hardware drivers **🚚 portable**, **🦾 flexible**,
**📦 accessible**, and **🍰 easy to use**. libhal seeks to provide a foundation
for embedded drivers, allowing those drivers to be used across different
processors, microcontrollers, systems, and devices.

The design philosophy of libhal is to be:

1. Portable & Cross Platform
2. Light Weight
3. General
4. Minimalist
5. Safe & Reliable
6. Tested & Testable
7. Compiled Quickly
8. OS Agnostic

## The Basics

libhal, at its core, is simply a set of interfaces that correspond to hardware
devices and peripherals. These interfaces use runtime polymorphism in order to
decouple application logic from driver implementation details. This decoupling
enables applications to run on any platform device that has the necessary
components available.

A quick example is a blinker program. The required interfaces for such a program
is a `hal::output_pin` for controlling the LED and a `hal::steady_clock` for
keeping time. Now your application takes both of these drivers without having to
consider their implementation details and blink and LED at a specified interval.

## Support

- [libhal discord](https://discord.gg/p5A6vzv8tm) server (preferred)
- [GitHub issues](https://github.com/libhal/libhal/issues)
- [Cpplang Slack](https://cpplang.slack.com/) #embedded channel

## Distribution

- [Conan](https://conan.io/center/libhal) package manager
- Source code is hosted on [GitHub](https://github.com/libhal/libahl)
- `vcpkg` package manager (planned for the future)

There are plans to support to more C++ package managers
