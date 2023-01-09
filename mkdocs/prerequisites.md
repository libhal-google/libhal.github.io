# 🧰 Install Prerequisites

This is the recommended way to setup your system for libhal and conan but this
is not the only way to use libhal.

- `make`: latest available version
- `cmake`: 3.15 or above
- `python`: 3.10 or above
- `conan`: 1.51.3 or above (conan 2.0.0+ not currently supported)
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
    pip3 install conan cmake
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
    pip install conan cmake
    ```

    Install Rosetta (only required for M1 macs):

    ```
    /usr/sbin/softwareupdate --install-rosetta --agree-to-license
    ```

    Rosetta necessary for intel based cross compilers:

=== "Windows"

    Install python: [https://www.python.org/downloads/windows/](https://www.python.org/downloads/windows/).

    Follow the instructions to install MSYS2: [https://www.msys2.org/](https://www.msys2.org/)

    To install GCC open the MSYS2 terminal run the following command to install
    GCC and build essentials.

    ```
    pacman -S base-devel mingw-w64-x86_64-gcc
    ```

    Updating the Environment Paths:

    Open `Windows Powershell` as `Administrator` (right click on it to see the
    option) and execute the following command. This will add gcc and the build
    essentials to your systems environment paths.

    ```PowerShell
    [Environment]::SetEnvironmentVariable(
        "Path",
        [Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::Machine) +
        ";C:\msys64\mingw64\bin;C:\msys64\mingw32\bin;C:\msys64\usr\bin",
        [EnvironmentVariableTarget]::Machine)
    ```

    After this, close powershell and reopen it to check if it worked. Run
    `g++ --version` and you should get a message with version information in it.

    Installing conan & cmake:

    ```
    pip3 install conan cmake
    ```

---

## Setting up Conan

Before you can use conan with libhal, you'll need to change the default conan
profile settings to make your life a bit easier. The profile settings control
which compiler is used for compiling and testing conan packages.

If you've never run conan before run this to generate the default profile:

```bash
conan profile new default --detect
```

## Setting your compiler to GCC 11

Recommended for Linux & Windows users

```bash
conan profile update settings.build_type=Debug default
conan profile update settings.compiler.libcxx=libstdc++ default
conan profile update settings.compiler=gcc default
conan profile update settings.compiler.version=11 default
```

## Setting your compiler to Clang 14

Recommended for MacOSX users

```bash
conan profile update settings.build_type=Debug default
conan profile update settings.compiler.libcxx=libc++ default
conan profile update settings.compiler=clang default
conan profile update settings.compiler.version=14 default
```

## Add libhal-trunk repository to conan remotes

When conan is installed it only knows to look for packages in the conan center
package index. The process and requirements for making an official release to
the conan center takes time. Meaning that there are very few releases on the
conan center for official libhal drivers. To get the latest updates to the
libhal official libraries, add the `libhal-trunk` repository to your list of
conan repos.

```bash
conan remote add libhal-trunk https://libhal.jfrog.io/artifactory/api/conan/trunk-conan --insert
conan config set general.revisions_enabled=True
```