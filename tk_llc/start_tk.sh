#!/bin/bash

nvpmodel -m 0
/usr/bin/jetson_clocks

screen -dmS ROBO bash
screen -S ROBO -X screen -t CORE  bash -ic "roscore"
sleep 15
screen -S ROBO -X screen -t LAUNCH  bash -ic "roslaunch tk_llc manual.launch"

echo 0

