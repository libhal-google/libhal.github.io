# 🆕 Creating a new Project

In this example we create a project using the CMake build system.

In order to make a project you need 5 files:

1. `conanfile.txt`: list of project dependencies.
2. `CMakeLists.txt`: instructions describing the project's source files,
   executables and how to build them.
3. `main.cpp`: application software
4. `libhal.tweaks.hpp`: configuration file for libhal
5. `newlib.cpp` : definitions of low level C functions

## Quick Start

Clone this starter project:

```bash
git clone https://github.com/libhal/libhal-starter.git
```

## Creating the `conanfile.txt`

A standard libhal `conanfile.txt` will look like this:

```txt
[requires]
libhal-lpc40xx/0.3.4

[tool_requires]
gnu-arm-embedded-toolchain/11.3.0
cmake-arm-embedded/0.1.1

[generators]
CMakeToolchain
CMakeDeps
```

- `[requires]` lists the project dependencies.
    - Each libhal project needs a target library and this example uses
      `libhal-lpc40xx` which is used for the SJ2 board or the LPC4078 micromod.
- `[tool_requires]` lists the tools that are needed to build the project.
    - `gnu-arm-embedded-toolchain/11.3.0` brings in the ARM GCC cross compiler
      which is used to compile to the code for ARM Cortex microcontroller.
    - `cmake-arm-embedded/0.1.1` brings in cmake helper scripts and toolchain
      files for configuring cmake for the cross compiler.
- `[generators]` list the generators which generate files for the project build
   systems.
    - `CMakeToolchain`: Generates toolchain cmake scripts based on the conan
      package recipe information.
    - `CMakeDeps`: Generates cmake package/configuration files for each library
    which can be

## Making the `CMakeLists.txt` file

Below is the minimal amount of cmake code needed for a libhal project:

```cmake
cmake_minimum_required(VERSION 3.20)

project(project_name.elf VERSION 0.0.1 LANGUAGES CXX)

find_package(libhal-lpc40xx REQUIRED CONFIG)

add_executable(${PROJECT_NAME} main.cpp newlib.cpp)
target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_20)
target_include_directories(${PROJECT_NAME} PUBLIC .)
target_compile_options(${PROJECT_NAME} PRIVATE ${CORTEX_M4F_FLAGS})
target_link_options(${PROJECT_NAME} PRIVATE -T libhal-lpc40xx/lpc4078.ld)
target_link_libraries(${PROJECT_NAME} PRIVATE libhal::lpc40xx)
arm_cortex_post_build(${PROJECT_NAME})
```

If you are unfamiliar with cmake, please take a look at the guide
[An Introduction to Modern CMake](https://cliutils.gitlab.io/modern-cmake/).

There are a few elements of the CMakeList.txt file which do not standard CMake:

1. `${CORTEX_M4F_FLAGS}`: These flags were made available from the toolchain
   file in the `cmake-arm-embedded` tool package.
2. `-T libhal-lpc40xx/lpc4078.ld`: The path to the lpc40xx linker scripts are
   made available from the `libhal-lpc40xx` package, which makes using this
   standard linker script accessible via this linker argument.
3. `arm_cortex_post_build(${PROJECT_NAME})`: Provided by the toolchain
   file in the `cmake-arm-embedded` tool package and it builds the
   `.hex` (intel hex), `.bin` (binary), `.S` (disassembly) and
   `.lst` (disassembly with source interweaved)

## Writing `main.cpp`

Read through the source code below to get an idea of whats needed:

```C++
#include <libhal-armcortex/dwt_counter.hpp>
#include <libhal-armcortex/startup.hpp>
#include <libhal-armcortex/system_control.hpp>
#include <libhal-lpc40xx/output_pin.hpp>
#include <libhal-lpc40xx/system_controller.hpp>
#include <libhal-util/steady_clock.hpp>

int
main()
{
  using namespace hal::literals;
  using namespace std::literals;

  // Initializing the data section initializes global and static variables and
  // is required for the standard C library to run.
  hal::cortex_m::initialize_data_section();
  hal::cortex_m::system_control::initialize_floating_point_unit();

  // Create a hardware counter
  auto& clock = hal::lpc40xx::clock::get();
  auto cpu_frequency = clock.get_frequency(hal::lpc40xx::peripheral::cpu);
  static hal::cortex_m::dwt_counter steady_clock(cpu_frequency);

  // Get an output pin to use as the LED pin control
  auto& led_pin = hal::lpc40xx::output_pin::get<1, 18>().value();

  while (true) {
    (void)led_pin.level(true);
    (void)hal::delay(steady_clock, 500ms);
    (void)led_pin.level(false);
    (void)hal::delay(steady_clock, 500ms);
  }

  return 0;
}

// When libhal.tweaks.hpp includes:
//
// #define BOOST_LEAF_EMBEDDED
// #define BOOST_LEAF_NO_THREADS
//
// Then Boost.LEAF needs this function to be defined
namespace boost {
void
throw_exception([[maybe_unused]] std::exception const& p_error)
{
  std::abort();
}
} // namespace boost
```

## The `newlib.cpp` file

The `newlib.cpp` contains low level APIs used by the standard C library. With an
OS these are implemented with OS APIs. For example, the function that provides
memory to `malloc()` is the newlib API `sbrk()`.

To learn more about how to write `newlib.cpp` see [From Zero to main():
Bootstrapping libc with
Newlib](https://interrupt.memfault.com/blog/boostrapping-libc-with-newlib).

See
[libhal-starter/newlib.cpp](https://github.com/libhal/libhal-starter/blob/main/newlib.cpp)
for the default empty implementations.

## Compiling the project

The commands for compiling the project:

Create `build/` directory:

```
mkdir build
cd build
```

Commands for building:

```
conan install .. -s build_type=Debug --build=missing
cmake .. -D CMAKE_BUILD_TYPE=Debug -D CMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake
make
```
