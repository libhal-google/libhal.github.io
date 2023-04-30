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

Clone the target library you would like to run the demos for. You can download
just one or both if you have both devices.

=== "LPC4078"

    ```bash
    git clone https://github.com/libhal/libhal-lpc40
    cd libhal-lpc40/demo
    ```

=== "STM32F103 ❌"

    ```bash
    git clone https://github.com/libhal/libhal-stm32f1
    cd libhal-stm32f1/demo
    ```

### Building using Conan & CMake

To build using conan and cmake, you just need to run the following:

```bash
conan build . -b missing
```

!!! note

    You only have to include `-b missing` if you get an error stating that the
    prebuilt binaries are missing. `-b missing` will build them locally for
    your machine. After which those libraries will be cached on your machine
    and you'll no longer need to include those arguments.

!!! tip

    If you want to create release packages which enables optimizations,
    you will need to add the `-s build_type=Release` to your conan build
    command:

    ```bash
    conan build . -b missing -s build_type=Release
    ```

When this completes you should have some applications in the `build/Debug/` with
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

    !!! tip

        On Ubuntu 22.04 you will need to use the command `python3.9` because
        the default python is usually 3.8.

        ```bash
        python3.9 -m pip install nxpprog
        ```

    ```bash
    nxpprog --control --binary "build/Debug/lpc4078_uart.elf.bin" --device "/dev/tty.usbserial-140"
    ```

    - Replace `/dev/tty.usbserial-140` with the correct port.
    - Use `"build/Debug/lpc4078_uart.elf.bin"` or replace it with any other application to
      be uploaded.

=== "STM32F10X ❌"

    Install the [`stm32loader`](https://pypi.org/project/stm32loader/) flashing
    software for STM32 devices:

    ```bash
    python3 -m pip install stm32loader
    ```

    ```bash
    stm32loader.py -p /dev/tty.usbserial-140 -e -w -v "build/Debug/stm32f103_uart.elf.bin"
    ```

    - Replace `/dev/tty.usbserial-140` with the correct port.
    - Use `"build/Debug/stm32f103_uart.elf.bin"` or replace it with any other application to
      be uploaded.
