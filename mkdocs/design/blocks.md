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

This concept is used to define types such as `hal::function_ref<hal::timeout>`
which are used to refer to a callable (something that can be called such as
function, functor, lambda, etc). The type for `hal::timeout` is

```C++
using timeout_function = status(void);

template<class T>
concept timeout = std::convertible_to<T, hal::function_ref<timeout_function>>;
```

It is a callable that returns a `hal::status` when called. It emits a
`std::errc::timed_out` value if it timed out. Because it returns `hal::status`
it can also return any other error.

Why all this fuss? Why not just take a `hal::time_duration` which is
`std::chrono::nanoseconds`? The purpose is give the developer the freedom to
choose their timeout and how it works.

Lets look at an example to get a better idea. Lets take a look at
`hal::i2c::transaction`.

```C++
[[nodiscard]] status transaction(
    hal::byte p_address,
    std::span<const hal::byte> p_data_out,
    std::span<hal::byte> p_data_in,
    hal::function_ref<hal::timeout_function> p_timeout);
```

The purpose of `p_timeout` is kick the function out if the i2c transaction takes
too long. For example a chip is holding the clock line down for too long during
a read operation.

Now if we choose `hal::time_duration` how would a driver implement this wait?
The driver has a few options:

1. Use a global "uptime" function and returns a `hal::time_duration` since boot
1. Take and store a function that acts as an "uptime" source
1. Take and store a `hal::steady_clock` or `hal::timeout` at construction

!!! note There are more options than this and more when you consider including
    an operating system.

Lets break them down 1 by 1.

1. The problem with a "global" uptime is that we now need to consider who sets
   up the global. Does libhal handle this? And if so, libhal has to ensure that
   access to that global uptime is customizable and thread safe. Or push that
   responsibility to the developer to do before using libhal. This seems like a
   ton of unnecessary coupling. And what if differing parts of the system have
   different timing precision requirements? This method forces all of them to
   use the same source rather than allow them to choose their own sources.
1. You can take a function that generates "uptime" values. This is great and
   fixes our coupling issue for the module. But this means that our coupling is
   to each i2c call.
1. This works but now your driver has to take one of either of these to work.
   Potentially more if in the future there are more time keeping interfaces.
   This adds complexity and additional work for each driver implementor
   resulting in inefficiency and code bloat.

So at this point the best option is to abstract away, totally, how time is being
being kept. Most of the time developers will only want to make the timeout's
behavior time based. But what if you want this to come from where else? Lets say
there is an external timer device that raises a GPIO from LOW to HIGH and that
indicates that time has run out. Taking a timeout in time wouldn't work in this
case. Threads or interrupts would be required at this point to interrupt the
`i2c::transaction` without a chance for clean up.

So the best solution is to simply abstract away the timeout information and let
the developer choose it.ß
