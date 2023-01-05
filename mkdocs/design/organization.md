# 🗃️ Organization

This section will explain the different parts/repos of libhal organization and
ecosystem and how they are organized.

## Target Libraries

Target libraries depend on processor/OS libraries. The target libraries will
include drivers for peripherals contained within their chip packages or, in
the case of development boards and SBC (single board computers), these can also
contain drivers external to the main chip. Processor/OS libraries contain
APIs specific to those platforms for doing such things as handling interrupt
service routines, initializing memory and more.

``` mermaid
flowchart LR
    libhal
    subgraph processor/OS
      libriscvmcu
      libarmcortex
      libhal-linux
    end
    subgraph arm-targets
      liblpc40xx
      libstm32f10x
    end
    subgraph riscv-targets
      libgv32f10x
      libsifive
    end
    subgraph linux-targets
      libhal-linux-generic
      libraspi
    end

    libhal-->libhal-linux
    libhal-->libriscvmcu
    libhal-->libarmcortex

    libarmcortex-->liblpc40xx
    libarmcortex-->libstm32f10x

    libriscvmcu-->libgv32f10x
    libriscvmcu-->libsifive

    libhal-linux-->libhal-linux-generic
    libhal-linux-->libraspi
```

## Device Libraries

Device driver libraries have a very simple relationship tree. Device libraries
just need the libhal interfaces to work. The implementations of those interfaces
will come from a target library in the application.

``` mermaid
flowchart TD
    libhal
    libhal-->libhal-soft
    libhal-->libmpu
    libhal-->libesp8266
    libhal-->libdrv
    libhal-->libwii
    libhal-->liballegro-micro
    libhal-->libdisplay-ssd
    libhal-->libled-apa-sk
    libhal-->libmatrix
```

## Typical Application

Lets consider an application such as "Pong". A game of pong where we use an
LED matrix and two Wii controllers using the STM32F103 microcontroller.

``` mermaid
flowchart LR
    libhal-->libmatrix-->app
    libhal-->libarmcortex-->libstm32f10x -->app
    libhal-->libwii-->app
```

The `conanfile.txt` would look something like this:

```
[requires]
libstm32f10x/1.1.0
libmatrix/1.0.2
libwii/1.5.2

[generators]
CMakeToolchain
CMakeDeps
VirtualRunEnv
```

## Process Libraries

Process libraries are effectively applications with no specific dependency on a
particular target. The point of a process library is to deploy a fully fledged
application, but with customizable drivers. For example, the pong game mentioned
earlier doesn't require a wii controller or a LED matrix specifically. You could
take a `hal::display` interface (not currently available) and some
`pong::gamepad` interface defined by the process library that the developer can
implement themselves. Then the pong process can take your display, gamepad and
additional information like, "paddle size" and "font size" and use it to
generate a game of pong. The developer gets the opportunity to choose which
parts they want for each. Maybe they want a very large TFT display or they
want to use a LED matrix. Maybe they want to use a Stadia controller or maybe
they want to make a controller out of capacitive sensors and bananas. The
choices are endless.
