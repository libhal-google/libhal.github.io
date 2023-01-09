# 🏫 Guided Tutorial

## Necessary Parts

In order to complete this tutorial you'll need these parts:

1. STM32F103 MicroMod or LPC4078 MicroMod or BOTH
1. Sparkfun ATP board or SJ3 Board
1. STLink V2
1. STLink V2 to JTAG connector

!!! note

    libhal development kit coming soon!


## 🛠️ Building Demos

Make sure to complete [🧰 Install Prerequisites](prerequisites.md)

### ⬇️ Installing Cross Compilers

Follow the [`libarmcortex` cross compiler installation
guide](https://github.com/libhal/libarmcortex#installing-arm-cortex-m-cross-compiler).

### Cloning the target libraries

Clone the library repos to get their demos within their `demos/` directory.

=== "LPC4078"

    ```bash
    git clone https://github.com/libhal/liblpc40xx
    cd liblpc40xx/demo
    ```

=== "STM32F10X"

    ```bash
    git clone https://github.com/libhal/libstm32f10x
    cd libstm32f10x/demo
    ```

### Building using Conan & CMake

To build using conan and cmake, you will first need a build directory to contain
all of the generated files. First create a `build` directory within the `demos`
directory.

```bash
mkdir build
```

Next, move into the `build/` directory

```bash
cd build
```

From the `build/` directory we can execute conan:

```bash
conan install .. -s build_type=Debug
```

* `install` argument  indicates to conan that it should install a package.
  `install ..` tells conan to look for the installation information from a
  `conanfile.txt`. the `conanfile.txt` is located in the `demo/` directory.

    !!! note

        The `conanfile.txt` includes the list of dependencies for the
        project as well as the build system it should generate files for. For
        libstm32f10x this will look something like this:

        ```
        [requires]
        libstm32f10x/0.3.1

        [generators]
        CMakeToolchain
        CMakeDeps
        VirtualRunEnv
        ```

        See the
        [`conanfile.txt`](https://docs.conan.io/en/latest/reference/conanfile_txt.html)
        reference for more details.

* `-s build_type=Debug` argument tells conan to override the default global
  build type settings. In this case we override the build type setting and set
  it to `Debug`. This will generate the conan files for each dependency and
  configure them for a "Debug" build. Debug builds are less optimized than a
  `Release` build, but they make stepping through code, reading stack traces and
  testing easier.

    !!! warning

        If you omit this section and the build type between CMake and
        conan are different you will get an error "File not found" errors for
        headers at compile time and linker errors at link time.

After generating the conan files, we can now run CMake to generate our build
files.

```bash
cmake .. -D CMAKE_BUILD_TYPE=Debug
```

!!! note

    If the `arm-none-eabi-gcc` compiler is included in your PATH variable (meaning
    running the command `arm-none-eabi-gcc` results in a "Command not found" error),
    then you'll need to specify where the compiler is using the `TOOLCHAIN_PATH`
    argument like so:

    ```bash
    cmake .. -DCMAKE_BUILD_TYPE=Debug -DTOOLCHAIN_PATH="path/to/arm-none-eabi-gcc/bin/"
    ```

Finally, to build the final binary, run `make`

```bash
make -j
```

!!! note

    The `-j` argument tells make to multithread the build process.

When this completes you should have some applications in the directory with
names such as `lpc4078_uart` or `stm32f103_blinker`.

## ⚡️ Flashing Demos

There are python programs built for uploading binary files to devices.

First step is connecting your MicroMod carrier board to your computer using the
USB-C connector.

=== "LPC4078"

    Install the [`nxpprog`](https://pypi.org/project/nxpprog/) flashing software
    for LPC devices:

    ```bash
    pip3 install nxpprog
    ```

    ```bash
    nxpprog --control --binary="lpc4078_uart.bin" --device="/dev/tty.usbserial-140"
    ```

    Replace `/dev/tty.usbserial-140` with the correct port.
    Use `"lpc4078_uart.bin"` or replace it with any other application to be
    flashed.

=== "STM32F10X"

    Install the [`stm32loader`](https://pypi.org/project/stm32loader/) flashing
    software for STM32 devices:

    ```bash
    pip3 install stm32loader
    ```

    ```bash
    stm32loader.py -p /dev/tty.usbserial-140 -e -w -v "stm32f103_uart.bin"
    ```

    Replace `/dev/tty.usbserial-140` with the correct port.
    Use `"stm32f103_uart.bin"` or replace it with any other application to be
    flashed.


## 🐞 Debugging Applications

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
pip3 install pyocd
```

### Prerequisite Knowledge

SWD stands for Serial Wire Debug and is the favored solution for libhal due to
its lower pin count compared to JTAG. SWD uses two pins for debugging, the
`SWCLK`, clock reference pin, and the `SWDIO`, data input/output pin. Some
development boards will omit the `SW` prefix to save space and will simply show
`CLK` and `DIO`.

JTAG can also be used, but has far more pins such as the following `TDI`, `TMS`,
`TCK`, and `TDO`.

With both of these standards, you will need to connect a jumper wire between the
SWD pins on the debugger device and the development board.

### Connecting to a Debugger

Connect the debugger (STLinkV2) to your MicroMod Carrier board using the STLink
to SWD connector adapter. Before connecting and powering everything check that
the the ribbon connector is connected to the port with the glowing LED. That is
the correct connection. Using the incorrect connection could cause part damage.

If you are using another type of device with different connections follow this
guide. A connection to ground (`GND`) must be made between the debugger and the
development board in order for the devices to communicate.

!!! Danger

    DOUBLE AND TRIPLE CHECK YOUR CONNECTIONS! Incorrect connects can result in breaking a board, debugger or
    possible your computer.

=== "Connecting SWD"

    Connect jumpers from `GND`, `SWDIO` and `SWDCLK` to the pins on the board.
    If the board supports both `SWD` and `JTAG` like many arm cortex boards do,
    then connect the pins in the following way:

    - `SWDIO` --> `TMS`
    - `SWDCLK` --> `TCK`

=== "Connecting JTAG"

    Connect jumpers from the `GND`, `TDI`, `TMS`, `TCK`, and `TDO` pins on the
    JTAG debugger to the headers on the development board of the same name.

### Using GDB

If you do not know how to use GDB here is a [GDB Cheat
Sheet](http://darkdust.net/files/GDB%20Cheat%20Sheet.pdf).

At this point the board has been halted. You should be able to add breakpoints
to add breakpoints at this point. A typical first breakpoint for a program is to
set a breakpoint on main.

``` bash
>>> break main
```

Next you will want to reset the program back to the start using the following
command.

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

On boards with a factory bootloader, when you start debugging, you will notice
that you cannot see the source code lines in the gdb shell. This is because the
bootloader instructions are not associated with any addresses in your code, thus
you will not see source code. This is fine. Continue with the guide. The LPC40xx
family of microcontrollers has such a bootloader.

!!! Note

    Highly recommend using `tui enable` or
    [gdb-dashboard](https://github.com/cyrus-and/gdb-dashboard) which is an
    awesome tool for making command line gdb debugging easier.

### Using `print` and `set variable` commands

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

!!! info

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
