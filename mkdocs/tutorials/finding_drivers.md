# 🔍 Finding Drivers

To find drivers you can look in two locations

- [libhal](https://github.com/libhal/libhal) organization
- [conan center](https://conan.io/center/) index

Search for the name of the device or target you are interested with with the
prefix `lib` in front of it. Try not to be too specific though. For example,
the `stm32f103c8t6` microcontroller target library drivers will be in the
package `libstm32f10x`. The `mpu6050` accelerometer will be in `libmpu`.
