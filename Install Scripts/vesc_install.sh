#!/usr/bin/env bash
# Bash3 VESC Pkg Installation. Copyright (c) 2017-2020, Rodrigo

# Installing Required Pkgs
# Ackermann-msgs Pkg
echo "Installing Ackermann-msgs"
sudo apt-get install ros-melodic-ackermann-msgs
# Serial Pkg
echo "Installing Serial Pkg"
sudo apt-get install ros-melodic-serial

# Install VESC Pkg
# This takes into consideration that Catkin Workspace is under "/catkin_ws/"
echo "Installing VESC Pkg"
cd ~/catkin_ws/src
git clone https://github.com/mit-racecar/vesc
cd ..
catkin_make

# Create the UDEV rule for the VESC
echo "Create UDEV Rule for VESC"
echo 'KERNEL=="ttyACM*", ATTRS{idVendor}=="0483", ATTRS{idProduct}=="5740", MODE:="0666", GROUP:="dialout",  SYMLINK+="vesc"' | sudo tee /etc/udev/rules.d/vesc-V2.rules


echo "UDEV RELOAD"
sudo service udev reload
sleep 2
echo "UDEV RESTART"
sudo service udev restart


# Launch VESC
# source ~/catkin_ws/devel/setup.bash
# cd ~/catkin_ws/src/vesc/vesc_driver/launch
# roslaunch vesc_driver_node.launch

# Send commands to VESC
# rostopic pub -r 20 /commands/motor/speed -- std_msgs/Float64 1000
# rostopic pub -r 20 /commands/servo/position -- std_msgs/Float64 0.8 
