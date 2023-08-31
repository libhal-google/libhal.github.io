# ⚖️ Policies & FAQ

## 1. How does libhal ensure consistency across different platforms?

There are only one way to ensure consistency of an interface across different
platforms.

1. Have clearly defined and unambiguous rules and documentation for interface
   APIs describing how all possible inputs result in specific behavior.
2. Creating a testing mechanism to ensure compliance.

libhal resolves the first criteria, but the second is not yet setup as a part
of the CI, simulated or real. We do plan to develop a compliance test that can
either be run on a device or as part of CI. For now, manual testing and inspect
is needed.

You may be thinking, what about unit tests? Host side unit tests for embedded
systems are great for purely software libraries. Once you have to mock the i2c,
input pin, or canbus, you've already left the realm of testing the actual
device, but your simulation. This is only useful after you've proven that the
code work with the device in question, then wrote unit tests to codify the
current behavior. Higher level conceptual conceptual and application code can
leverage this, but low level drivers tend to be poor candidates for unit
testing.

## 2. How are drivers developed for libhal?

> Are they actively developed for a specific mcu/device or is it automated/code
> generated? For example, if a new product is announced tomorrow, is that
> something your project would support immediately on launch, or would you need
> to update your codebase to support it?

Code is hand written by developers. The issue with automated approaches to
firmware drivers as they tend to either be inefficient, or they don't work well
across many devices. Unless the device follows some sort of standard like NMEA
or JEDEC, automated code generation cannot get you very far. With that being
said, the usage of tools to take and convert SVD files into bit mask ranges
will be entertained so long as there aren't any licensing issues.

## 3. Can OEM's object to libhal software?

> What sort of legal protections, if any, does libhal have in place to protect
> from a vendor objecting to their product being supported on libhal?

This is a problem if libhal used OEM developed SDKs or software libraries. SDKs
like those from NXP or STM come with licenses that only allow the code to be
executed on their devices or executed on other systems with the end goal of the
code be executed on one of their products. This may seem like a fair as you
tend to never run stm32f1 code on anything other than a stm32f1 MCU. But there
are chips that have implemented IP blocks nearly identical to the stm32f1 MCU
and thus can use the same exact drivers, albeit with different register map
locations.

So long as the software is written by our engineers on their time, and based on
the OEMs publicly available user manual, then the libhal project should be
fine. It is possible that exceptions to this will arise and they will be handled
in a per situation basis.

## 4. Does libhal utilize vendor SDKs?

> And if so how does it manage licensed APIs?
> How will that translate to the end developer?
> What would the end license be for the software package?

Currently no. libhal will NOT use an SDK with a restrictive license or a license
that is not compatible with Apache 2.0 and the like. For example the NXP and
STM licenses. Where as the ESP32 software is Apache 2.0, so technically could
be used.

## 5. How are devices without a publicly available user manual handled?

If a device does not have a publicly available user manual then the first
instinct of libhal is to NOT make a library for it. For the following reasons:

1. If the user manual is not public, then exposing a driver for it would also
   expose private information about the product or device.
2. Not having a user manual means that user cannot inspect the code. The code
   becomes a black box where all of the constants/addresses/commands are
   affectively magic numbers with no reference to check against. This would make
   the task of debugging a task in reverse engineering.

Now drivers can be made for devices or MCUs without publicly available user
manuals can still be made. In these situations the source code would also be
private as well. In general, libhal will only support open source libraries in
its organization.
