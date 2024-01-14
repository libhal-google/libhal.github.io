

# Namespace hal::mock



[**Namespace List**](namespaces.md) **>** [**hal**](namespacehal.md) **>** [**mock**](namespacehal_1_1mock.md)




















## Classes

| Type | Name |
| ---: | :--- |
| struct | [**adc**](structhal_1_1mock_1_1adc.md) <br>_Mock adc implementation for use in unit tests and simulations._  |
| struct | [**can**](structhal_1_1mock_1_1can.md) <br>_Mock can implementation for use in unit tests and simulations._  |
| struct | [**dac**](structhal_1_1mock_1_1dac.md) <br>_Mock dac implementation for use in unit tests and simulations with a spy function for_ [_**write()**_](classhal_1_1dac.md#function-write) __ |
| struct | [**input\_pin**](structhal_1_1mock_1_1input__pin.md) <br>_mock_ [_**input\_pin**_](structhal_1_1mock_1_1input__pin.md) _implementation for use in unit tests and simulations._ |
| struct | [**interrupt\_pin**](structhal_1_1mock_1_1interrupt__pin.md) <br>_mock_ [_**interrupt\_pin**_](structhal_1_1mock_1_1interrupt__pin.md) _implementation for use in unit tests and simulations._ |
| struct | [**motor**](structhal_1_1mock_1_1motor.md) <br>_Mock motor implementation for use in unit tests and simulations with a spy function for_ [_**power()**_](classhal_1_1motor.md#function-power) __ |
| struct | [**output\_pin**](structhal_1_1mock_1_1output__pin.md) <br>_mock output pin for use in unit tests and simulations_  |
| struct | [**pwm**](structhal_1_1mock_1_1pwm.md) <br>_Mock pwm implementation for use in unit tests and simulations with spy functions for_ [_**frequency()**_](classhal_1_1pwm.md#function-frequency) _and_[_**duty\_cycle()**_](classhal_1_1pwm.md#function-duty_cycle) _._ |
| struct | [**servo**](structhal_1_1mock_1_1servo.md) <br>_Mock servo implementation for use in unit tests and simulations with a spy function for_ [_**position()**_](classhal_1_1servo.md#function-position) __ |
| struct | [**steady\_clock**](structhal_1_1mock_1_1steady__clock.md) <br>_mock_ [_**steady\_clock**_](structhal_1_1mock_1_1steady__clock.md) _implementation for use in unit tests and simulations._ |
| struct | [**timer**](structhal_1_1mock_1_1timer.md) <br>_Mock timer implementation for use in unit tests and simulations with spy functions for_ [_**schedule()**_](classhal_1_1timer.md#function-schedule) _, clear(), and_[_**is\_running()**_](classhal_1_1timer.md#function-is_running) __ |
| struct | [**write\_only\_spi**](structhal_1_1mock_1_1write__only__spi.md) <br>_Mock spi implementation for use in unit tests and simulations with a spy functions for_ [_**configure()**_](classhal_1_1spi.md#function-configure) _and a record for the_[_**transfer()**_](classhal_1_1spi.md#function-transfer) _out data. The record ignores the in buffer and just stores the data being sent so it can be inspected later._ |



















































------------------------------
The documentation for this class was generated from the following file `libraries/include/libhal-mock/adc.hpp`

