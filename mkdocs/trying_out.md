# 🚀 Trying out libhal

## Necessary Parts

In order to complete this tutorial you'll need these parts:

1. STM32F103 MicroMod or LPC4078 MicroMod or SJ2 Board
1. Sparkfun ATP board or SJ3 Board or SJ2 Board
1. STLink V2
1. STLink V2 to JTAG connector

!!! info

    libhal development kit is in development

## 🛠️ Building Demos

Make sure to complete [🧰 Install Prerequisites](prerequisites.md)

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

!!! tip

    If you get an [ERROR: Missing prebuilt package]() message you'll need to
    run the comamnd like so:

    ```bash
    conan install .. -s build_type=Debug --build=missing
    ```

    This happens if you are installing packages that do not have cached binary
    files for your particular system. This usually happens with older versions
    of OSes and specifically with the toolchain packages. You only need to use
    `--build=missing` once.

After generating the conan files, we can now run CMake to generate our build
files.

```bash
cmake .. -D CMAKE_BUILD_TYPE=Debug -D CMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake
```

#### Breaking down the Conan install command

Finally, to build the final binary, run `make`

```bash
make -j
```

!!! info

    The `-j` argument tells make to multithread the build process.

When this completes you should have some applications in the directory with
names such as `lpc4078_uart.elf` or `stm32f103_blinker.elf`.

## 💾 Uploading Demos to Device

There are python programs built for uploading binary files to devices.

First step is connecting your MicroMod carrier board to your computer using the
USB-C connector.

!!! question

    Don't know which serial port to use? Use this guide [Find Arduino Port
    on Windows, Mac, and
    Linux](https://www.mathworks.com/help/supportpkg/arduinoio/ug/find-arduino-port-on-windows-mac-and-linux.html)
    from the MATLAB docs to help. Simply ignore that its made for Arduino, this
    guide will work for any serial USB device.

=== "LPC4078"

    Install the [`nxpprog`](https://pypi.org/project/nxpprog/) flashing software
    for LPC devices:

    ```bash
    python3 -m pip install nxpprog
    ```

    ```bash
    nxpprog --control --binary="lpc4078_uart.elf.bin" --device="/dev/tty.usbserial-140"
    ```

    - Replace `/dev/tty.usbserial-140` with the correct port.
    - Use `"lpc4078_uart.elf.bin"` or replace it with any other application to
      be uploaded.

=== "STM32F10X"

    Install the [`stm32loader`](https://pypi.org/project/stm32loader/) flashing
    software for STM32 devices:

    ```bash
    python3 -m pip install stm32loader
    ```

    ```bash
    stm32loader.py -p /dev/tty.usbserial-140 -e -w -v "stm32f103_uart.elf.bin"
    ```

    - Replace `/dev/tty.usbserial-140` with the correct port.
    - Use `"stm32f103_uart.elf.bin"` or replace it with any other application to
      be uploaded.
