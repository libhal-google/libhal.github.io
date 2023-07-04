# 🎯 Debugging Code with PyOCD

## Introduction

PyOCD is an open-source Python package for programming and debugging Arm
Cortex-M microcontrollers using CMSIS-DAP. It's a highly flexible and
easy-to-use tool, but it's important to note that it only supports ARM
processors.

PyOCD stands out for its user-friendly approach compared to other On-Chip
Debugging (OCD) tools like OpenOCD, despite being slightly limited in terms of
the range of processors it supports.

For the full documentation for PyOCD see https://pyocd.io/.

## Installation

To install PyOCD, run the following command in your terminal:

```bash
python3 -m pip install pyocd
```

## Connecting a Debugger to your Device

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
    then connect the pins in the following way: `SWDIO` --> `TMS` and
    `SWDCLK` --> `TCK`.

=== "Connecting JTAG"

    Connect jumpers from the `GND`, `TDI`, `TMS`, `TCK`, and `TDO` pins on the
    JTAG debugger to the headers on the development board of the same name.

## Connecting to device using PyOCD

The following commands will use `pyocd` and your debugger to connect to your
target platform.

=== "lpc40"

    ```bash
    pyocd gdbserver --target=lpc4088 --persist
    ```

=== "stm32f1"

    ```bash
    pyocd gdbserver --target=stm32f103rc --persist
    ```

To find all of the available platforms use `pyocd list --targets`.

## Using arm-none-eabi-gdb

`arm-none-eabi-gdb` is a version of GDB (GNU Debugger) configured for debugging
Arm Cortex-M devices.

To start a GDB debugging session, open an additional terminal or terminal
window. Then execute the following command:

```bash
arm-none-eabi-gdb -ex "target remote :3333" -tui path/to/yourfile.elf
```

- `-tui`: GDB TUI provides a text window interface for debugging. To start GDB
  in TUI mode, use the `-tui` option
- `-ex "target remote :3333"`: `-ex` executes a GDB command. And the command
  `target remote :3333` connects to a remote gdb server, in this case, the pyocd
  server (with default port `:3333`).

## Starting the Debugging Process

Here is a cheat sheet for using [GDB Cheat
Sheet](http://darkdust.net/files/GDB%20Cheat%20Sheet.pdf).

A typical first breakpoint for a program is to set a breakpoint on main.

```gdb
b main
```

Next you will want to reset the program back to the start and halt the CPU using
the following command.

```gdb
monitor reset halt
```

To begin running through the program use the `continue` or `c` command.

```gdb
c
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

## Stepping Through Code

Once in a GDB session, you can step through your code using the following
commands:

- `next` or `n`: Executes the next line in the source code. If the line contains
  a function call, it treats the entire function as one instruction and executes
  it in one go.
- `step` or `s`: Executes the next line, but if it contains a function call,
  `step` will go into that function so you can continue debugging inside it.
- `finish`: Runs until the current function is finished.
- `continue` or `c`: Continues execution until the next breakpoint or
  watchpoint.
- `until lineno`: Continues execution until a line number greater than the
  current one is reached. Useful for loops.

Remember that you can use the `help` command in GDB to get information about any
other command.

## Inspecting Variables and Registers

You can inspect the state of your program by examining variables and registers:

- `print variable` or `p variable`: Prints the current value of the specified
  variable.
- `info registers`: Shows the current state of all CPU registers.
- `info register regname`: Shows the current state of a specific CPU register.
- `print gpio_reg->CTRL`: Shows the value of a register

!!! tip

    If you get an error like:

    ```
    Cannot access memory at address ???
    ```

    This happens because GDB is limiting access to memory that is known at
    link time and is apart of the binary's structure. But if a user wants to
    access peripheral memory not associated with RAM or Flash memory then they
    can execute this command:

    ```gdb
    set mem inaccessible-by-default off
    ```

## Setting Breakpoints and Watchpoints

Breakpoints allow you to pause program execution at a particular point, and
watchpoints let you pause execution whenever a particular variable changes:

- `break function` or `b function`: Sets a breakpoint at the beginning of the
  specified function.
- `break filename:lineno` or `b filename:lineno`: Sets a breakpoint at a
  specific line in a specific file.
- `watch variable`: Sets a watchpoint on a variable. The program will stop
  executing whenever the variable's value changes.
- `info breakpoints`: Lists all the breakpoints that are currently set.
- `delete n`: Deletes breakpoint number `n`. Use `info breakpoints` to see
  breakpoint numbers.
- `delete`: Deletes all breakpoints if used without a number.

## Flashing a Device using GDB

In GDB, you can also use the `load` command to flash your device. The `load`
command automatically uses the target specified when you started the GDB
session.

```gdb
(gdb) load
```

This command will load the program onto your device.

You can build the elf file in another terminal, then run `load` again to update
the program. It may or may not reset the core back to the start so
`monitor reset halt` may be needed.
