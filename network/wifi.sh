#!/bin/sh

driver=$(ethtool -i wlan0 | awk '/driver:/{print $2;}')
printf "Driver: %s\n" "$driver"

sudo modprobe -r $driver
