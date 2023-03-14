# 🔸 Bare-Metal ARM Cortex Target Bring-Up

This guide will step you through making a libhal + conan target library for a
arm processor microcontroller. Unlike libhal applications that can be executed
on a machine running an OS like linux, example Raspberry Pi and Beagle Boards,
you cannot just execute the binary.

This guide assumes that `libhal-library` was used as a template and has already
updated and changed all of the names from `libhal-library` to the appropriate
library name.

In order to build an application that can be loaded and executed onto a
microcontroller you only need:

1. Add `libhal-armcortex` as a dependency
2. Provide a linker script for each microcontroller
3. Determine minimum compiler flags for each microcontroller
4. Provide a library component for that microcontroller

The rest can be handled by the `arm-gnu-embedded-toolchain`'s `crt0`
implementation, the `arm-gnu-embedded-toolchain` conan package and the
`libhal-armcortex` conan package.

## Adding the `libhal-armcortex` dependency

Simply add `libhal-armcortex` to your `requirements()` method:

```python
def requirements(self):
    # ...
    self.requires("libhal-armcortex/[^1.0.1]")
```

## Writing the linker scripts

### Setup linker script directory

Create a `linker_scripts` directory at the root of the library package.
Add `linker_scripts/*` directory to the export sources in the package
`conanfile.py`, like so:

```python
exports_sources = "include/*", "linker_scripts/*", "tests/*", "LICENSE"
```

### Finding linker scripts info

Lets consider the `lpc4074` microcontroller. What you'll need to figure out is:

1. Flash memory memory address & size
2. Ram memory memory address & size

These sections are part of whats called the "memory map". Most modern day
systems use a system called "Memory-mapped I/O" which means that the system uses
the same address space to address both memory and I/O devices. In this case we
simply want to find the addresses of the flash memory and ram memory. This
information can be found in the data sheet or user manual of the chip.

The LPC40 series of microcontrollers will be used for this example:
The memory map can be found on page 52 of the `LPC408X_7X.pdf` data sheet or
page 14 of the `UM10562.pdf` user manual.

![lpc40xx memory map](arm_cortex_bringup/lpc40xx-memory-map.png)

<p style="text-align: center; font-style: italic;">
Figure 1. LPC40xx Memory Map
</p>

Here you can see that flash starts at address `0x00000000` for all sizes of
flash memory. The SRAM locations all start at `0x10000000` for all sizes of
SRAM. This chart does not provide which chips have which ram and flash sizes.

Looking through the data sheet and searching for terms like "part numbers",
"ordering options", or even just the number 512 (the maximum flash size),
eventually this section will appear:

![lpc40xx ordering info part 1](arm_cortex_bringup/lpc40xx-ordering-1.png)

<p style="text-align: center; font-style: italic;">
Figure 2. LPC40xx Part Ordering Info part 1
</p>

![lpc40xx ordering info part 2](arm_cortex_bringup/lpc40xx-ordering-2.png)

<p style="text-align: center; font-style: italic;">
Figure 3. LPC40xx Part Ordering Info part 2
</p>

Now all of the information to write the linker scripts is available:

=== "lpc4072.ld"

    ```ld
    __flash = 0x00000000;
    __flash_size = 64K;
    __ram = 0x10000000;
    __ram_size = 16K;

    INCLUDE "libhal-armcortex/standard.ld"
    ```

=== "lpc4074.ld"

    ```ld
    __flash = 0x00000000;
    __flash_size = 128K;
    __ram = 0x10000000;
    __ram_size = 32K;

    INCLUDE "libhal-armcortex/standard.ld"
    ```

=== "lpc4076.ld"

    ```ld
    __flash = 0x00000000;
    __flash_size = 256K;
    __ram = 0x10000000;
    __ram_size = 64K;

    INCLUDE "libhal-armcortex/standard.ld"
    ```

=== "lpc4078.ld"


    ```ld
    __flash = 0x00000000;
    __flash_size = 512K;
    __ram = 0x10000000;
    __ram_size = 64K;

    INCLUDE "libhal-armcortex/standard.ld"
    ```

=== "lpc4088.ld"

    ```ld
    __flash = 0x00000000;
    __flash_size = 512K;
    __ram = 0x10000000;
    __ram_size = 64K;

    INCLUDE "libhal-armcortex/standard.ld"
    ```

---

!!! question

    You may be wondering why the RAM size is 64kB and not 96kB for some of the
    linker scripts and thats due to the fact that the LPC40xx series has a dual
    SRAM architecture. To keep this simple, only the largest RAM block is
    supported.

The linker script only needs 4 lines as `libhal-armcortex` provides a standard
linker script for ARM microcontrollers supporting 1 flash memory and 1 ram
device. Defining the `__flash`, `__flash_size`, `__ram`, and `__ram_size`
linker script variables is all that is needed to make a usable linker script.

There are plans to support dual flash, dual ram and other varieties of flash
and ram combinations in the future in `libhal-armcortex`.

!!! warning

    Many of the microcontrollers come in different packages and may have some
    differences in the number of peripherals they support, pins they have and
    performance. The linker script does not need to worry about such
    differences and thus, a linker script should **NOT** be made for every
    possible chip variety in the series but for the common flash sizes and ram
    sizes for each.

## Compiler flags

### Processor flags

The data sheet will include information about the processor. The compiler flag
will match the following based on the CPU:

- `-mcpu=cortex-m0`
- `-mcpu=cortex-m0plus` (cortex-M0+)
- `-mcpu=cortex-m1`
- `-mcpu=cortex-m3`
- `-mcpu=cortex-m4`
- `-mcpu=cortex-m7`
- `-mcpu=cortex-m23`
- `-mcpu=cortex-m33`
- `-mcpu=cortex-m35p`
- `-mcpu=cortex-m55`
- `-mcpu=cortex-m85`
- `-mcpu=cortex-m1.small-multiply`
- `-mcpu=cortex-m0.small-multiply`
- `-mcpu=cortex-m0plus.small-multiply`

### Floating Point Support

After one of the following to the architecture flags:

- `-mfloat-abi=soft`: if the processor is an cortex-m3 or below
- `-mfloat-abi=softfp`: if the processor is a cortex-m4 and above AND also has
  a floating point unit. This can be determined by searching the data sheet.

## Creating components for the library

libhal target library's split up the library into components, one for each
microcontroller variant. For LPC40 that split would look like:
`libhal::lpc4072`, `libhal::lpc4074`, `libhal::lpc4076`, `libhal::lpc4078`, and
`libhal::lpc4088`. When a build system, for example, uses the `libhal::lpc4078`
component, it includes the necessary compiler flags and linker script selection.

Along with these components, will be a special generic component named
`libhal::lpc` which does not provide any compiler flags or linker script. This
special target is used for applications that want to use their own linker
script, or for software running on a host machine like simulations or unit
tests.

To add components it must be added in the `package_info` method of the
`ConanFile` package class. Here is what it looks like for the `libhal-lpc`
library. Copy this section and tailor it to your needs.

```python
def package_info(self):
  # Specify, for the component, all requirements of the package
  requirements_list = ["libhal::libhal",
                       "libhal-util::libhal-util",
                       "libhal-armcortex::libhal-armcortex",
                       "ring-span-lite::ring-span-lite"]

  # List of REQUIRED compiler flags for the gnu-arm-embedded-toolchain for some
  # of the chips. These are determined by the capabilities of the chip.
  # For example all but the lpc4072 and lpc4074 have hardware floating point
  # arithmetic support so they ought to use "float-abi=softfp" which uses the
  # floating point hardware BUT is ABI compatible with the software
  # implementation.
  m4f_architecture_flags = [
      "-mcpu=cortex-m4",
      "-mfloat-abi=softfp",
  ]

  # List of REQUIRED compiler flags for the gnu-arm-embedded-toolchain for
  # some of the chips. These are determined by the capabilities of the chip.
  # For example the lpc4072 and lpc4074 do not have hardware floating point
  # arithmetic support so they must use "float-abi=soft" for a software
  # implementation.
  m4_architecture_flags = [
      "-mcpu=cortex-m4",
      "-mfloat-abi=soft"
  ]

  # Create a path to the linker_script directory which resides in the
  # package's package_folder.
  linker_path = os.path.join(self.package_folder, "linker_script")

  # Set the cmake file name
  self.cpp_info.set_property("cmake_file_name", "libhal-lpc")
  # All the package to be found in anyway with cmake
  self.cpp_info.set_property("cmake_find_mode", "both")

  # Create the special/generic component "lpc" and set its component name
  self.cpp_info.components["lpc"].set_property(
      "cmake_target_name",  "libhal::lpc")

  # This is where we add the path to our linker scripts to the set of linker
  # flags.
  self.cpp_info.components["lpc"].exelinkflags.append("-L " + linker_path)

  # Add the list of requirements to the generic component
  self.cpp_info.components["lpc"].requires = requirements_list

  # Helper function for creating components
  def create_component(self, component, flags):

      link_script = "-T libhal-lpc/" + component + ".ld"
      component_name = "libhal::" + component
      self.cpp_info.components[component].set_property(
          "cmake_target_name", component_name)
      # Make the special component the only requirement for the component,
      # inheriting all of the transitive dependencies.
      self.cpp_info.components[component].requires = ["lpc"]
      # Add the link script and flags to the component's linker flags and
      # compiler flags
      self.cpp_info.components[component].exelinkflags.append(link_script)
      self.cpp_info.components[component].exelinkflags.extend(flags)
      # Add flags to the cflags & cxxflags to ensure that each compilation unit
      # Knows the instruction set and float ABI
      self.cpp_info.components[component].cflags = flags
      self.cpp_info.components[component].cxxflags = flags

  # Create the components for each chip.
  create_component(self, "lpc4072", m4_architecture_flags)
  create_component(self, "lpc4074", m4_architecture_flags)
  create_component(self, "lpc4076", m4f_architecture_flags)
  create_component(self, "lpc4078", m4f_architecture_flags)
  create_component(self, "lpc4088", m4f_architecture_flags)
```

## Step 4. Verifying

### Step 4.1 Creating the package

Run `conan create .` in the folder with the `conanfile.py` recipe in it.
The test package and build stages should show something like this during the
cmake phase:

```
-- Conan: Component target declared 'libhal::lpc'
-- Conan: Component target declared 'libhal::lpc4072'
-- Conan: Component target declared 'libhal::lpc4074'
-- Conan: Component target declared 'libhal::lpc4076'
-- Conan: Component target declared 'libhal::lpc4078'
-- Conan: Component target declared 'libhal::lpc4088'
```

### Step 4.2 Testing out a demo

Create a demo and have it require the library. In this case the demo
`conafile.py` may include:

```python
from conan import ConanFile
from conan.tools.cmake import CMake, cmake_layout


class Lpc40xxDemos(ConanFile):
    settings = "compiler", "build_type"
    generators = "CMakeToolchain", "CMakeDeps", "VirtualBuildEnv"

    def requirements(self):
        self.requires("libhal-lpc/1.1.4") # <-- change this
        self.requires("libhal-util/[^1.0.0]") # <-- update this if necessary
        self.tool_requires("gnu-arm-embedded-toolchain/11.3.0")
        self.tool_requires("cmake-arm-embedded/0.1.1")

    def layout(self):
        cmake_layout(self)

    def build(self):
        cmake = CMake(self)
        cmake.configure()
        cmake.build()
```

Change the library name to the library you are creating.

```python
self.tool_requires("gnu-arm-embedded-toolchain/11.3.0")
self.tool_requires("cmake-arm-embedded/0.1.1")
```

The above two requirements are required to download and install the
toolchain/compiler and the cmake toolchain/helper files. The project should
compile if everything was done correctly.
