# 🚀 Trying out libhal

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


### Building using Conan & CMake

To build using conan and cmake, you just need to run the following:

```bash
conan build . -pr lpc4078 -s build_type=MinSizeRel
```

!!! note

    You may need to add the argument `-b missing` at the end of the above
    command if you get an error stating that the prebuilt binaries are missing.
    `-b missing` will build them locally for your machine. After which those
    libraries will be cached on your machine and you'll no longer need to
    include those arguments.

!!! tip

    The following build types, `build_type` argument are available:

    - ❌ **Debug**: No optimization, do not recommend, normally used for unit
      testing.
    - 🧪 **RelWithDebInfo**: Turn on some optimizations to reduce binary size and
      improve performance while still maintaining the structure to make
      debugging easier. Recommended for testing and prototyping.
    - ⚡️ **Release**: Turn on optimizations and favor higher performance
      optimizations over space saving optimizations.
    - 🗜️ **MinSizeRel**: Turn on optimizations and favor higher space saving
      optimizations over higher performance.

    Note that `Release` and `MinSizeRel` build types both usually produce
    binaries faster and smaller than `RelWithDebInfo` and thus should definitely
    be used in production.

When this completes you should have some applications in the `build/lpc4078/MinSizeRel/` with
names such as `uart.elf` or `blinker.elf`.

!!! error

    You can get this error if the arm gnu toolchain wasn't installed correctly
    and the cmake toolchain was already generated.

    ```
    -- Using Conan toolchain: /Users/kammce/git/libhal/libhal-lpc40/demos/build/lpc4088/MinSizeRel/generators/conan_toolchain.cmake
    -- Conan toolchain: C++ Standard 20 with extensions ON
    CMake Error at CMakeLists.txt:18 (project):
      The CMAKE_CXX_COMPILER:

        /Users/kammce/.conan2/p/b/arm-ged7418b49387e/p/bin/bin/arm-none-eabi-g++

      is not a full path to an existing compiler tool.

      Tell CMake where to find the compiler by setting either the environment
      variable "CXX" or the CMake cache entry CMAKE_CXX_COMPILER to the full path
      to the compiler, or to the compiler name if it is in the PATH.


    -- Configuring incomplete, errors occurred!
    See also "/Users/kammce/git/libhal/libhal-lpc40/demos/build/lpc4088/MinSizeRel/CMakeFiles/CMakeOutput.log".
    See also "/Users/kammce/git/libhal/libhal-lpc40/demos/build/lpc4088/MinSizeRel/CMakeFiles/CMakeError.log".
    ```

    Fix this by deleting the `build/` in the `demo` directory like so:

    ```
    rm -r demos/build
    ```

## 💾 Uploading Demos to Device

### Necessary Parts

In order to complete this tutorial you'll need either a

- LPC4078 MicroMod with Sparkfun ATP board
or
- or SJ2 Board

### Uploading Applications

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

        On Ubuntu 22.04 you will need to use the command `python3.10` because
        the default python is usually 3.8.

        ```bash
        python3.10 -m pip install nxpprog
        ```

    ```bash
    nxpprog --control --binary "build/lpc4078/MinSizeRel/uart.elf.bin" --device "/dev/tty.usbserial-140"
    ```

    - Replace `/dev/tty.usbserial-140` with the correct port.
    - Replace `uart.elf.bin` with any other application found in the
      `demos/applications/` directory.
