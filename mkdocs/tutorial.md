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
        If you omit this section and the build type between CMake and conan are
        different you will get an error "File not found" errors for headers at
        compile time and linker errors at link time.

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
    pip install nxpprog
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
    pip install stm32loader
    ```

    ```bash
    stm32loader.py -p /dev/tty.usbserial-140 -e -w -v "stm32f103_uart.bin"
    ```

    Replace `/dev/tty.usbserial-140` with the correct port.
    Use `"stm32f103_uart.bin"` or replace it with any other application to be
    flashed.


## 🐞 Debugging Applications

TBD
