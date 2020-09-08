#!/bin/bash

echo  'KERNEL=="ttyACM*", ATTRS{idVendor}=="2341", ATTRS{idProduct}=="003d", MODE:="0666", GROUP:="dialout",  SYMLINK+="arduino"' >/etc/udev/rules.d/arduino-V2.rules

service udev reload
sleep 2
service udev restart
