# 🎚️ Configuration

## `hal::on_error_callback`

Libhal provides a simple mechanism for handling calling a function when an error
occurs. The error handler is defined as follows:

```cpp
using error_handler = void(void);
inline error_handler* on_error_callback = nullptr;
```

The `on_error_callback` is a pointer to a function that takes no arguments and
returns no value. If this variable is set to something other than `nullptr`,
then the function it points to is called before the error object is returned.
`hal::new_error()` must be used to get this behavior. Calling
`boost::leaf::new_error` will bypass this behavior.

This error handler is useful for logging when errors occur. It allows developers
to capture information about the state of your program at the time of the error,
which can be helpful for debugging.

Most importantly, the error handler is very useful for generating a stack trace.
A stack trace provides a snapshot of the call stack at a specific point in time.
This can be invaluable for understanding the sequence of function calls that led
to an error. However, generating a stack trace is only possible at this depth in
the call stack, which is why the error handler is so important.

To use the error handler, you simply need to define a function that matches the
`error_handler` type, and then assign the address of this function to
`on_error_callback`. Here's an example:

```cpp
void my_error_handler() {
    // Code to execute when an error occurs
}

int main() {
    hal::on_error_callback = &my_error_handler;

    // Rest of your code
}
```

In this example, `my_error_handler` will be called whenever an error occurs in
your code. You can put any code you want in this function to handle the error in
a way that makes sense for your application.

Note that this pointer is global and care should be taken when modifying it.
