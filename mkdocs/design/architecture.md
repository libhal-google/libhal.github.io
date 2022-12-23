# 🏗️ Architecture

libhal, at its core, is simply a set of interfaces that correspond to hardware
devices and peripherals. These interfaces use runtime polymorphism in order to
decouple application logic from driver implementation details. This decoupling
enables applications to run on any target device that has the necessary
components available.

libhal seeks to be the foundation of an ecosystem of libraries for embedded
systems.

## Always modern C++

libhal uses the modern C++. Meaning that libhal is will follow the most modern
and available compilers available. Older versions will continue to support older
compilers but the latest version of libhal will move to the latest version of
GCC or Clang to gather as many benefits as possible.

### Anticipating UFCS

UFCS (Unified Function Call Syntax) is a proposal for C++23 and C++26. It did
not get into C++23 but is slated for review in 26. For more details see this
page [What is unified function call syntax anyway?](https://brevzin.github.io/c++/2019/04/13/ufcs-history/).

Because of this interfaces have no other class functions besides their private
virtual interfaces and their publicly callable API. All helper and utility
functions are to be made as free functions that take the interface as a
reference as their first parameter. This way, if UFCS does get added to the
standard, libhal can take advantage of it.

## Strongly Leverage Package Managers

Libhal is split up into parts that each come together via a package manager.
libhal is built around the idea that it will leverage a package manager. The
purpose of this design is to achieve:

- Stable version control for each library
- Accessibility of drivers
- Ease of integration

### Stable version control

Stable version control between libraries is critical, specifically for `libhal`.
The version number for `libhal` shall only increment when an actual change to
the APIs/interfaces have changed. This is important to call out as this was not
the case when `libhal` and `libhal-util` were the same project. This meant that
developers could not be sure if a breaking change occurred due to a change in
the interface or due to a change to an obscure utility not used in most
projects.

This provides stability for all packages as their version number reflects the
changes to the package in a way that it is obvious to the developer that uses
these packages.

### Accessibility of Drivers

Making drivers accessible and searchable will allow developers to easily find
what they need to make their project work.

### Ease of integration

Package managers tend to make integrating libraries easier that what came before
in C++ which is copying and pasting files and attempting to make `make`,
`CMAKE`, or what ever other build system work for you. Package managers tend
to make this process straight forward.

## Continuous Integration

libhal utilizes reusable continuous integration to ensure that code quality is
reached for specific metrics. libhal uses github and github action
"workflow_dispatch" to allow other repos to reuse libhal's continuous
integration steps. The actions are configurable via input parameters to allow
libraries to customize and control how the CI works.

libhal's CI attempts to use as many tools as reasonable to make sure that the
C++ source code follows the style guide, C++ core guidelines and retains a
certain level of quality.

Every libhal library in the libhal organization must use the common
libhal/libhal workflow. This will ensure that all projects are held to the
same standard.

The workflow files can be found in `libhal/libhal/.github/workflows`.

## Unit testing with Boost.UT

Boost.UT was chosen for its stunning performance, it easy to use API, and most
importantly, the fact it does not need MACROs to work.
