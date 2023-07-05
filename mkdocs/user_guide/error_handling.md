# 🪤 Error Handling in libhal using Boost.LEAF

Libhal uses Boost.LEAF for error handling. Boost.LEAF is a lightweight error
handling library for C++11. It is designed for maximum efficiency and does not
require dynamic memory allocations, even with heavy payloads. It can be used
with or without exception handling and supports multi-thread programming.

## Basic Concepts

Boost.LEAF introduces a few key concepts for error handling:

- **Error Objects**: These are instances of any type that you want to associate
  with an error. They can be error codes, strings, or any other type of object
  that provides information about the error.

- **Context**: This is a scope where error objects can be loaded and associated
  with a specific error. It is usually local to a `try_handle_all`,
  `try_handle_some`, or `try_catch` scope.

- **Error ID**: This is a unique identifier for an error. It is generated when
  an error is reported using `new_error` or `exception`.

## Error Handling Process

The error handling process in Boost.LEAF involves the following steps:

1. **Detecting an Error**: When an error is detected in your code, you can
   report it by calling `new_error` or `exception`. These functions generate a
   new error ID and return it. You can also pass any number of error objects to
   these functions to associate them with the error.

2. **Loading Error Objects**: Error objects can be loaded into an active context
   using the `load` function. These objects become associated with a specific
   error ID. If storage is not available, the error objects are discarded.

3. **Handling Errors**: When an error is reported, it is forwarded up the call
   stack until it reaches an error-handling scope. This scope probes the context
   for any error objects associated with the error ID and processes a list of
   user-provided error handlers. The first handler that can be supplied with the
   available error objects is called to handle the error.

## Boost.LEAF Aliases

libhal creates aliases for a few of the APIs in Boost.LEAF to shorten their
names and use the `hal` namespace. The mapping can be found in
[libhal/error.hpp](https://github.com/libhal/libhal/blob/main/include/libhal/error.hpp).

Including `libhal/error.hpp` will pull in all of the Boost.LEAF libraries, so
if you prefer to use them directly, you can do so.

## Example

Here is an example of how you can use Boost.LEAF for error handling in libhal:

```cpp
#include <libhal/error.hpp>

enum class error_code
{
    bad_command_line = 1,
    open_error,
    read_error,
    size_error,
    eof_error,
    output_error
};

hal::result<void> do_something()
{
    // Some operation that may fail...
    if (/* failure condition */)
    {
        return hal::new_error(open_error, leaf::e_errno{errno});
    }

    return {};
}

int main(int argc, char const *argv[])
{
    return hal::attempt_all(
        []() -> hal::result<int>
        {
            HAL_CHECK(do_something());
            return 0;
        },
        [](hal::match<error_code, open_error>, leaf::e_errno const &errn)
        {
            // Do something here
            return 2;
        },
        []()
        {
            // Unknown error, handle it here
            return 6;
        });
}
```

In this example, `do_something` is a function that may fail. If it fails, it
reports an error by calling `new_error` and associates the error with an
`open_error` error code and the system `errno`. The `main` function calls
`do_something` and handles any errors that it reports. It uses `try_handle_all`
to handle all errors and

provides two error handlers. The first handler handles `open_error` errors and
includes the system `errno`. The second handler handles any other errors.

Please note that this is a basic example. Boost.LEAF provides many more features
for error handling, such as error object composition, error object accumulation,
and error object matching. You can use these features to create more
sophisticated error handling systems.

For more information, please refer to the [Boost.LEAF
documentation](https://www.boost.org/doc/libs/1_77_0/libs/leaf/doc/html/index.html).

## RAM Usage when using an RTOS

To be written...

## Error Types in libhal

To be written...
