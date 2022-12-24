# 🏗️ Architectural Design Decisions

## A.x Always use modern C++

libhal uses the modern C++. Meaning that libhal is will follow the most modern
and available compilers available. When a sufficient number of features have
become available in both GCC & Clang and are determined to be useful to libhal
libhal will increment its major number to indicate that it has upgraded compiler
versions.

This decision exists to escape the issues of vendor and toolchain lock in thats
prevalant in the C++ and embedded industry. With sufficient testing, upgrading
compilers shouldn't result in bugs in applications.

## A.x No utility methods in interfaces (UFCS)

Utility functions shall not exist in interface definitions. For example,
`hal::i2c` could have a `hal::i2c::write()` and `hal::i2c::read()` function
implemented in its interface.

This has the effect of reducing the number of headers in the interface files and
dependencies. This, in turn, results in an interface that is minimal, clean, and
simple.

The major purpose of this is to keep compile times down as much possible for
each interface. This also ensures that the "pay-for-what-you-use" model is
followed. No need to pay for a utility you never planned to use.

The final reason is in preparation for UFCS (Unified Function Call Syntax).
UFCS is a proposal for C++23 and C++26. It did not get into C++23 but is slated
for review in 26. For more details see this page
[What is unified function call syntax anyway?](https://brevzin.github.io/c++/2019/04/13/ufcs-history/).

## A.x Strongly Leverage Package Managers

Finding and integration libraries into C++ programs is a pain. Doing the same
thing for embedded is doubly so, especially if there is vendor IDE lock in.
libhal seeks to escape this by using the available package managers and indexes.

Libhal was designed around and split up into parts that each come together via
these package managers. The purpose of this design is to achieve:

- Stable version and release control for each library
- Can be easily found the indexes
- Ease of integration

## A.x Foundation & Interface Stability

`libhal-util`, `libhal-mock` and `libhal-soft` were all apart of `libhal`
originally, but due to the constant changes and API breaks in those categories
of code, the version number of `libhal` would increment constantly, shifting the
foundation of the ecosystem. To prevent constant churn and API breaks `libahl`
was split into those 4 libraries.

The goal is to keep the version number for `libhal` constant for long periods of
time to prevent breaking down stream libraries, drivers, and applications.

## A.x libhal driver directory

One of the libhal repos will contain a directory of libhal libraries that extend
it along with which interfaces it implements and what type of library it is.

Official libhal libraries must go into the directory. Developers outside of the
libhal organization can also contribute to and opt into this directory by
making a PR to the repo containing the directory.

The purpose of this is to make finding and exploring the available set of
drivers easier for the end developer by having them all in one place.

## A.x Github Actions & Remote Workflows

libhal uses github and github action "workflow_dispatch" to allow other repos to
reuse libhal's continuous integration steps. The actions are configurable via
input parameters to allow libraries to customize and control how the CI works.

libhal's CI attempts to use as many tools as reasonable to make sure that the
C++ source code follows the style guide, C++ core guidelines and retains a
certain level of quality. All offical libhal libaries must opt in to the common
libhal/libhal workflow.

This helps to ensure that all projects are held to the same standard and
quality. The workflow files can be found in `libhal/libhal/.github/workflows`.

## A.x Boost.UT as our unit testing framework

Boost.UT was chosen for its lack of macros, stunning compile time performance,
and its ease of use.

## A.x Boost.LEAF for error handling

One major issue with any project is handling errors. Because the `libhal`
interfaces can be used in such broad environments, it is hard to determine what
the BEST error type in advance could work for all users. Some use error codes,
some use `std::expected<T, E>`, and some use exceptions.

Error codes are problematic as they tend to lack details and context around an
error. Sometimes the documentation along with the error code provides all of
the necessary context, but many times more context is needed.

`std::expected<T, E>` seems like a better alternative to error codes, but... is
it really? What should `E` be? An error code? What if we have it be an error
code and a const string. What if we want a file name and function name? What
about a line number? What about 16 bytes for holding context information about
the error? That should be enough, right? What about- what about- what about?
... wait, how big is this error type? 32 bytes? Wasn't this supposed to be light
weight? Unfortunately, `std::expected` is not a good choice for interfaces with
extremely broad and unknowable of error states. This forces the error type to
be massive to accommodate everything and everyone.

Exceptions somewhat fix this issue but are still lacking. The benefit of
exceptions is that you can throw just about anything, meaning the developer can
provide loads of information in the thrown object. But exceptions fail on 4
counts:

  - Exceptions tend to not be available for embedded systems, either due to a
    toolchain not compiling with them enabled or because a project has strict
    requirements that forbid exceptions.
  - When exceptions do occur, the amount of time it takes to reach its catch can
    take a long time, longer than what real time applications can handle.
  - Normally requires heap allocation
  - Exceptions can only throw one type and the cost of those thrown exceptions
    are always paid for.

Boost.LEAF has the following properties:

  - Portable single-header format, no dependencies.
  - Tiny code size when configured for embedded development.
  - No dynamic memory allocations, even with very large payloads.
  - Deterministic unbiased efficiency on the "happy" path and the "sad" path.
  - Error objects are handled in constant time, independent of call stack depth.
  - Can be used with or without exception handling.
  - Can throw more than 1 error at a time

All of these features are critical for libhal to have the performance for real
time applications.

The last feature is important for debugging, bug reports, and context specific
error handling. Boost.LEAF gives the driver the choice to emit several error
types and allows the user to pick out which one they would like to opt to catch
if any of them. This can be used to capture an error code as well as s snapshot
of the register map of a peripheral, the object's current state or even a debug
message.
