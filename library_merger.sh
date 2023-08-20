#!/bin/bash

set -e

LIBHAL_LIBRARIES=(
  "libhal"

  # Processors
  "libhal-armcortex"

  # platforms
  "libhal-lpc40"
  "libhal-stm32f1"

  # Devices
  "libhal-esp8266"
  "libhal-rmd"
  "libhal-soft"
  "libhal-mpl"

  # Utility
  "libhal-util"
  "libhal-canrouter"
  "libhal-micromod"
  "libhal-mock"
)

rm -rf libraries
mkdir -p libraries
cd libraries
mkdir include

for library in ${LIBHAL_LIBRARIES[@]}
do
    git clone "https://github.com/libhal/$library.git"
    mv $library/include/$library include/
done
