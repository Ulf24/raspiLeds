#!/bin/sh

if test -e /sys/devices/platform/leds/leds/PWR/brightness
then
  echo "Found file for red led on Debian."
  echo "const std::string RED = \"/sys/devices/platform/leds/leds/PWR/brightness\";" > red.cpp
else
  if test -e /sys/devices/platform/leds/leds/led1/brightness
  then
    echo "Found file for red led on Raspian."
    echo "const std::string RED = \"/sys/devices/platform/leds/leds/led1/brightness\";" > red.cpp
  else
    echo "Sorry. No file for red led found."
    exit 255
  fi
fi

exit 0
