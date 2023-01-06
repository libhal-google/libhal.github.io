# 🏫 Guided Tutorial ❌

Make sure to complete [Getting Started](getting_started.md). This guide will
show you all of the steps to building, flashing

## Necessary Parts

In order to complete this tutorial you'll need these parts:

1. STM32F103 MicroMod or LPC4078 MicroMod or BOTH
1. Sparkfun ATP board or SJ3 Board
1. STLink V2
1. STLink V2 to JTAG connector

!!! note
    libhal development kit coming soon!

## ⬇️ Installing Compilers & Tools

TBD

## 🛠️ Building Demos

### Cloning the target libraries

Demos can be found in the `demos/` folder within a target library's github
repositories. So the first step is to clone the repo:

Open a terminal/command line

If you are using the STM32F103 MicroMod, use this command to clone the
libstm32f10x repo.

```bash
git clone https://github.com/libhal/libstm32f10x
cd libstm32f10x
```

If you are using the LPC4078 MicroMod, use this command to clone the liblpc4078
repo.

```bash
git clone https://github.com/libhal/liblpc40xx
cd liblpc40xx
```

Clone both if you have both devices.

Move into the `demos/` directory

```bash
cd demos/
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

If the `arm-none-eabi-gcc` compiler is not available directly on your command
line then you'll need to specify where the compiler is using the
`TOOLCHAIN_PATH` argument like so:

```bash
cmake .. -DCMAKE_BUILD_TYPE=Debug -DTOOLCHAIN_PATH="path/to/arm-none-eabi-gcc/bin/"
```

If this works as intended, then the last step is to use `make` to build the
final executable:

```bash
make -j
```

The `-j` argument tells make to multithread the build process.

When this completes you should have a load of applications in the directory
with names such as `lpc4078_uart` or `stm32f103_blinker`.

## ⚡️ Flashing Demos

TBD

## 🐞 Debugging Applications

TBD
