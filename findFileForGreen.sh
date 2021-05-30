#!/bin/sh

if test -e /sys/devices/platform/leds/leds/ACT/brightness
then
  echo "Found file for green led on Debian."
  echo "const std::string GREEN = \"/sys/devices/platform/leds/leds/ACT/brightness\";" > green.cpp
else
  if test -e /sys/devices/platform/leds/leds/led0/brightness
  then
    echo "Found file for green led on Raspian."
    echo "const std::string GREEN = \"/sys/devices/platform/leds/leds/led0/brightness\";" > green.cpp
  else
    echo "Sorry. No file for green led found."
    exit 255
  fi
fi

exit 0
