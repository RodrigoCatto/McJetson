#!/usr/bin/env python

import numpy as np
import rospy
from sensor_msgs.msg import LaserScan


rospy.init_node('laser_odom_calibration')

def callback_vel_rpm(data):
    global vel_rpm 
    vel_rpm = np.array(data.ranges).round(decimals=2)
    back = vel_rpm[719]
    front = vel_rpm[359]
    if back == 0.0 or front == 0.0:
	pass
    else:
    	print("Front: " + str(front) + " Back: " + str(back) + "  Dist: " + str(front+back))
 
rospy.Subscriber("scan", LaserScan, callback_vel_rpm)


r = rospy.Rate(5)
while not rospy.is_shutdown():



    r.sleep()
    
