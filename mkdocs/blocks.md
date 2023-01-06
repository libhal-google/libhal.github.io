# 🧱 Interface Building Blocks

## `hal::result<T>` & `hal::status`

`hal::result<T>` is an alias for the `boost::leaf::result<T>` type. This type
can either be the value `T` or an error. The type is not a variant but can be
considered closer to a `std::pair<T, bool>`. It holds both and the bool
indicates if the object is an error or not. No errors are held in the status
structure. The error data is either dropped or saved to the variable within the
handler statement within a `hal::attempt` block (which is an alias for
`boost::leaf::try_handle_some`). `hal::status` is simply a concise alias for the
type `boost::leaf::result<void>`.

See [Boost.LEAF](https://boostorg.github.io/leaf/) for more details about it and
how it works.

The main reasons why Boost.LEAF was used can be found in [Architecture:
Boost.LEAF for error handling](architecture/#a13-boostleaf-for-error-handling).

## `libhal/units.hpp`

This file contains the definition of the common base units used in libhal as
well UDL (user defined literals) that help to make unit conversions easier.
Although most of the units are simply floats, giving them names in the APIs
helps with clarity and readability.

## `hal::timeout` concept

A `timeout` in `libhal` is a "callable" that takes no arguments and returns a
`hal::status` as such `using timeout = hal::status(void)` as defined in
`libhal/timeout.hpp`. A "callable" is something that can be called such as
function, functor, lambda, etc. The purpose of `hal::timeout` is to indicate
when an operation has run out of time. `hal::timeout` will emit a
`std::errc::timed_out` value if it timed out. Because it returns a `hal::status`
it can also emit other errors. The other errors should be passed up the stack
rather than handled by the operation. And because of this, if a `hal::timeout`
ever emits something other than a `std::errc::timed_out`, then the operation
stops and the error is bubbled up to the appropriate handler.

Timeout callable objects are used rather than a time duration because the source
of an timeout may not be time based but based on an interrupt signal from
another system. Using a time duration for a timeout means that the system would
either need (and have to manage) a global clock or take a singular clock like
source at construction time. Using this gives the most flexibility to the user.
