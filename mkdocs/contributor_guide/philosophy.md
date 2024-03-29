# 📜 Design Philosophy

These are the core design tenets that `libhal` and libraries extending it must
seek to achieve with every design choice, line written, and architecture change
made.

## D.1 Multi Targeted

`libhal` and the libraries that extend it, should work anywhere. So long as the
appropriate compiler or cross compiler is used, the driver should do as it is
intended. The exception is `target` libraries which are designated to execute
for a particular target. Even so, those `target` libraries MUST be unit testable
on any host machine.

## D.2 Light Weight

`libhal` should keep its interfaces and utility code light weight, meaning
such things do not allocate, and if they do only once, do not perform
long/length copies, unless a copy was the desired operation,

## D.3 General

`libhal` interfaces should be general, meaning that they do not include APIs, or
configuration settings that are uncommon in most targets or specific to a
particular target.

## D.4 Minimalist

`libhal` aims to be as simple as possible and no simpler. Interfaces, utility
functions, and libraries should be straight forward for most programmers
to understand with added complexity only when it is necessary and no other
options exist.

## D.5 Safe & Reliable

`libhal` and its style guide aim to use patterns, techniques, and documentation
to help reduce safety issues and improve reliability.

## D.6 Tested & Testable

`libhal` code should be as testable and unit tested.

## D.7 Compiled Quickly

`libhal` code should build fast and eliminate/replace any unnecessary
dependencies that cause compile times to be long.

## D.8 Portable

`libhal` code should not require or depend on any OS or target specific code or
behaviors. `libhal` is designed to work anywhere and should not rely on OS.
