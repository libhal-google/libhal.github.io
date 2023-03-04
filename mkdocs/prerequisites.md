# 🧰 Install Prerequisites

This is the recommended way to setup your system for libhal and conan but this
is not the only way to use libhal.

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

    Set `make` as your default generator:

    ```powershell
    [System.Environment]::SetEnvironmentVariable('CMAKE_GENERATOR','Unix Makefiles')
    ```

---

## Setting up Conan

In order to use Conan a conan profile must be created. To learn more about
profiles see
[Conan Profiles](https://docs.conan.io/en/latest/reference/profiles.html).

First lets create a default profile:

```bash
conan profile new default --detect
```

## Add `libhal-trunk` repository to conan remotes

This allows conan to search for packages in the `libhal-trunk` repository, which
is updated with every change to the libhal organizations code base.

```bash
conan remote add libhal-trunk https://libhal.jfrog.io/artifactory/api/conan/trunk-conan
```

## Profile setting for GCC 11 users

!!! critical

    This section has been broken by Conan 2. In order to make these changes,
    please update your `.conan2/profiles/default` file directly using a text
    editor.

    See https://docs.conan.io/2/tutorial/consuming_packages/build_simple_cmake_project.html
    for the steps to update your profile. Use the profile contents below.

    A better and simpler solution is being worked on, please be patient.

**Recommended for Linux & Windows:**

```bash
conan profile update settings.build_type=Debug default
conan profile update settings.compiler.libcxx=libstdc++ default
conan profile update settings.compiler=gcc default
conan profile update settings.compiler.version=11 default
```

## Profile setting for Clang 14 users

**Recommended for MacOSX users:**

```bash
conan profile update settings.build_type=Debug default
conan profile update settings.compiler.libcxx=libc++ default
conan profile update settings.compiler=clang default
conan profile update settings.compiler.version=14 default
```
