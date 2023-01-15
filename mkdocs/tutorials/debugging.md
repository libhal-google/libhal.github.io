# 🔎 On Chip Software Debugging 🟡

JTAG and SWD debuggers are the standard ways to interact with microcontrollers
in order to halt their actions, inspect memory, and step through code. It can be
used to flash devices, which can sometimes be faster than doing so over serial.
Can be used to perform on device line-by-line code debugging which is a powerful
tool over print statements when it comes to debugging the state and behavior of
a program.

This tutorial uses `PyOCD` because its easy to use, and easy to install. The
other big OCD (on-chip debugging) software is OpenOCD which works as well but is
a bit more complicated to use. One issue with `PyOCD` is that it only works for
ARM processors, so it cannot be used for RISC-V, MIPS, XTensa based devices.

To install `PyOCD` run:

```bash
python3 -m pip install pyocd
```

## Connecting to a Debugger

Connect the debugger (STLinkV2) to your MicroMod Carrier board using the STLink
to SWD connector adapter. Before connecting and powering everything check that
the the ribbon connector is connected to the port with the glowing LED. That is
the correct connection. Using the incorrect connection could cause part damage.

If you are using another type of device with different connections follow this
guide. A connection to ground (`GND`) must be made between the debugger and the
development board in order for the devices to communicate.

!!! Danger

    DOUBLE AND TRIPLE CHECK YOUR CONNECTIONS! Incorrect connects can result in
    breaking a board, debugger or possible your computer.

=== "Connecting SWD"

    Connect jumpers from `GND`, `SWDIO` and `SWDCLK` to the pins on the board.
    If the board supports both `SWD` and `JTAG` like many arm cortex boards do,
    then connect the pins in the following way:

    - `SWDIO` --> `TMS`
    - `SWDCLK` --> `TCK`

=== "Connecting JTAG"

    Connect jumpers from the `GND`, `TDI`, `TMS`, `TCK`, and `TDO` pins on the
    JTAG debugger to the headers on the development board of the same name.

## Using GDB

If you do not know how to use GDB here is a [GDB Cheat
Sheet](http://darkdust.net/files/GDB%20Cheat%20Sheet.pdf).

You should be able to add breakpoints to add breakpoints at this point. A
typical first breakpoint for a program is to set a breakpoint on main.

``` bash
>>> break main
```

Next you will want to reset the program back to the start and halt the CPU using
the following command.

``` bash
>>> monitor reset halt
```

To begin running through the program use the `continue` command.

```bash
>>> continue
```

At this point you should see the source code of your `main.cpp` show up. Now you
can step through your code and set breakpoints using `step`, `next`, `finish`
and `continue`, `break`, etc.

Typically you would use the `run` command to start the code. When performing
firmware testing, the `run` command is not needed as the code is already
"running" on the remote microcontroller.

!!! info

    On boards with a factory bootloader, when you start debugging, you will
    notice that you cannot see the source code lines in the gdb shell. This is
    because the bootloader instructions are not associated with any addresses in
    your code, thus you will not see source code. This is fine. Continue with
    the guide. The LPC40xx family of microcontrollers has such a bootloader.

!!! tip

    Highly recommend using `tui enable` or
    [gdb-dashboard](https://github.com/cyrus-and/gdb-dashboard) which is an
    awesome tool for making command line gdb debugging easier.

## Using `print` and `set variable` commands

A very helpful command for GDB is the `print` command.

```bash
>>> print a + 123
```

The statement above takes any expression and will print its result. For example
one could do something like this:

```bash
>>> print reg.TIM1.CCER
```

The above expression will print the TIMER1 CCER register value.

!!! tip

    If you get an error like:

    ```
    Cannot access memory at address ???
    ```

    This happens because GDB is limiting access to memory that is known at
    link time and is apart of the binary's structure. But if a user wants to
    access peripheral memory not associated with RAM or Flash memory then they
    can execute this command:

    ```
    set mem inaccessible-by-default off
    ```

You can also use the `set variable` command to actually change those values. For
example, if you are within a loop you force the loop `i` iterator variable to 5.
You can also change register values as well.

```bash
>>> set variable i = 5
>>> set variable reg.USART1.CR1 = 1
```