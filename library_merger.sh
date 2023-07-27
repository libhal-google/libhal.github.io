#!/bin/bash

set -e

LIBHAL_LIBRARIES=(
  "libhal"
  "libhal-armcortex"
  "libhal-esp8266"
  "libhal-lpc40"
  "libhal-mock"
  "libhal-rmd"
  "libhal-soft"
  "libhal-stm32f1"
  "libhal-util"
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
