# 🧰 Install Prerequisites

What you will need in order to get started with libhal.

- `make`: latest available version
- `cmake`: 3.15 or above
- `python`: 3.10 or above
- `conan`: 1.57.0
- Suitable Compiler for running host tests (can be either of these):
    - `gcc`: 11.3.0 or above
    - `clang`: 14 and above

=== "Ubuntu 22.04"

    Python 3.10 is default installed, no need to install it.

    Install GCC and build essentials:

    ```
    sudo apt update && sudo apt upgrade
    sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
    sudo apt install -y build-essential g++-11
    ```

    Installing conan & cmake:

    ```
    python3 -m pip install conan cmake
    ```

=== "Ubuntu 20.04"

    Install python3.9:

    ```
    sudo apt-get install python3.9
    ```

    Install GCC and build essentials:

    ```
    sudo apt update && sudo apt upgrade
    sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
    sudo apt install -y build-essential g++-11
    ```

    Installing conan & cmake:

    ```
    python3.9 -m pip install conan cmake
    ```

=== "MacOS X"

    Install Homebrew:

    ```
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

    Install latest version of Python 3.x:

    ```
    brew install python
    ```

    Install conan & cmake:

    ```
    python3 -m pip install conan cmake
    ```

    Install Rosetta (only required for M1 macs):

    ```
    /usr/sbin/softwareupdate --install-rosetta --agree-to-license
    ```

    Rosetta necessary for intel based cross compilers:

=== "Windows"

    We recommend using the `choco` package manager for windows as it allows
    easy installation of tools via the command line.

    To install `choco`, open PowerShell as an administrator and run the
    following command:

    ```powershell
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    ```

    !!! tip

        If the `choco` command doesn't work after running this script try
        closing and opening again PowerShell.

    Now install `python`:

    ```powershell
    choco install python
    ```

    Install `gcc` via the `mingw`:

    ```powershell
    choco install mingw
    ```

    Install `make` for cmake:

    ```powershell
    choco install make
    ```

    Installing conan & cmake:

    ```powershell
    python3 -m pip install -U conan cmake
    ```

---

## Setting up Conan

First lets create a default profile:

```bash
conan profile detect --force
```

## Add `libhal-trunk` repository to conan remotes

This allows conan to search for packages in the `libhal-trunk` repository, which
is updated with every change to the libhal organizations code base.

```bash
conan remote add libhal-trunk https://libhal.jfrog.io/artifactory/api/conan/trunk-conan
```

## Profile setting for GCC 11 users

=== "Intel Linux"

    If your host machine is using an intel core processor as its CPU then you'll
    want to use this default configuration.

    ```bash
    conan config install -sf profiles/x86_64/linux/ -tf profiles https://github.com/libhal/conan-config.git
    ```

=== "ARM64 Linux"

    It is less likely your host desktop is an ARM64. This section is mostly for
    building applications and tests on a Raspberry PI or other SBC. But if you
    do have a laptop powered by an ARM64 core, then this is the correct
    configuration for you.

    ```bash
    conan config install -sf profiles/armv8/linux/ -tf profiles https://github.com/libhal/conan-config.git
    ```

=== "M1 Mac"

    If your macbook uses an M1 processor then you'll want to use this default
    configuration.

    ```bash
    conan config install -sf profiles/armv8/mac/ -tf profiles https://github.com/libhal/conan-config.git
    ```

=== "Intel Mac"

    If your macbook uses an Intel processor then you'll want to use this default
    configuration.

    ```bash
    conan config install -sf profiles/x86_64/mac/ -tf profiles https://github.com/libhal/conan-config.git
    ```

=== "Intel Windows"

    If your windows machine uses an Intel processor then you'll want to use this
    default configuration.

    ```bash
    conan config install -sf profiles/x86_64/windows/ -tf profiles https://github.com/libhal/conan-config.git
    ```

=== "ARM64 Windows"

    If you have a modern surface laptop with ARM64, then this may be the right
    choice for you.

    ```bash
    conan config install -sf profiles/armv8/windows/ -tf profiles https://github.com/libhal/conan-config.git
    ```

---
