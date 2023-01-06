# 🔍 Finding Drivers

To find drivers you can look in three locations

- [libhal](https://github.com/libhal/libhal) organization
- [conan center](https://conan.io/center/) index
- [libhal driver index]() ❌

!!! note
    libhal driver index is not available currently and is key to finding
    drivers around the ecosystem.

Search for the name of the device or target you are interested with with the
prefix `lib` in front of it. Try not to be too specific though. For example,
the `stm32f103c8t6` microcontroller target library drivers will be in the
package `libstm32f10x`. The `mpu6050` accelerometer will be in `libmpu`.

## 📑 Reference Material

Reference material can be found in the `datasheets/` and `schematic/` folders.
The layout of these directories match that `demos/`, where the first layer of
folders are named after the microcontroller or board they describe.

These folders are updated with relevant documents for easy access for our
developers and contributors.
