# 🗃️ Organization

This section will explain the different parts/repos of libhal organization and
ecosystem and how they are organized.

## Target Libraries

``` mermaid
flowchart LR
    libhal
    subgraph processors
      libriscvmcu
      libarmcortex
      libhal-linux
    end
    subgraph arm-targets
      liblpc40xx
      libstm32f10x
      libmsp430
    end
    subgraph riscv-targets
      libgv32f10x
      libair32f10x
      libsifive
    end
    subgraph linux-targets
      libhal-linux-generic
      libraspi
      libbeaglebone
    end

    libhal-->libhal-linux
    libhal-->libriscvmcu
    libhal-->libarmcortex

    libarmcortex-->liblpc40xx
    libarmcortex-->libstm32f10x
    libarmcortex-->libmsp430

    libriscvmcu-->libgv32f10x
    libriscvmcu-->libair32f10x
    libriscvmcu-->libsifive

    libhal-linux-->libhal-linux-generic
    libhal-linux-->libraspi
    libhal-linux-->libbeaglebone
```

## Device Libraries

Device driver libraries have a very simple relationship tree. They all simple
and only include libhal and any supporting libraries to work. They only need the
interfaces to make their driver work.

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
