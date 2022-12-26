# Design Philosophy

## D.x Multi Targeted

The `libhal`, `libhal` device libraries, and `libhal` utility libraries, should
work on any target device that also has a toolchain that supports the C++ code.
`libhal` target libraries should be build able for their designated target and
host machines for unit testing.

## D.x Light Weight

`libhal` should keep its interfaces and utility code light weight, meaning
such things do not allocate, and if they do only once, do not perform
long/length copies, unless a copy was the desired operation,

## D.x General

`libhal` interfaces should be general, meaning that they do not include APIs, or
configuration settings that are uncommon in most targets or specific to a
particular target.

## D.x Fast Compilation

`libhal` code should build fast and eliminate/replace any unnecessary
dependencies that cause compile times to be long.

## D.x Tested & Testable

`libhal` code should be as testable and unit tested.

## D.x Simple

`libhal` aims to be as simple as possible and no simpler. Using its interfaces,
utility functions, and libraries should be straight forward for most programmers
to understand with added complexity only when it is necessary and no other
options exist.

## D.x Safe

`libhal` and its style guide aim to use patterns and techniques that help reduce
safety issues.
