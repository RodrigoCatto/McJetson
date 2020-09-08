#!/usr/bin/env python

import math
from math import sin, cos, pi, tan, radians

import rospy
import tf
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Point, Pose, Quaternion, Twist, Vector3
from std_msgs.msg import Float64
from vesc_msgs.msg import VescStateStamped

rospy.init_node('odometry_publisher')

odom_pub = rospy.Publisher("odom", Odometry, queue_size=50)
odom_broadcaster = tf.TransformBroadcaster()

x = 0
y = 0
th = 0
servo_value = 0.5
wheelbase_ = 0.274

current_time = rospy.Time.now()
last_time = rospy.Time.now()

vel_rpm = 0
servo_value = 0.0

def callback_vel_rpm(data):
    global vel_rpm 
    vel_rpm = data.state.speed
    vel_rpm = vel_rpm*120/1000

def callback_cmd_servo(data): 
    global servo_value 
    servo_value = data.data


rospy.Subscriber("/sensors/core", VescStateStamped, callback_vel_rpm)
rospy.Subscriber("/commands/servo/position", Float64, callback_cmd_servo) 

wheel_radius = 0.043 #Meters
convert_rpm_ms =  (2*pi*wheel_radius)/60


r = rospy.Rate(60)
while not rospy.is_shutdown():
    current_time = rospy.Time.now()
    
    vx = vel_rpm * convert_rpm_ms
    vy = 0
    servo_angle_rad = radians(54.5*servo_value-27.25) #rad
    #print(-54.5*servo_value+27.25)
    vth = vx * tan(servo_angle_rad) / wheelbase_ #rad/s

    # compute odometry in a typical way given the velocities of the robot
    dt = (current_time - last_time).to_sec()
    delta_x = (vx * cos(th) - vy * sin(th)) * dt
    delta_y = (vx * sin(th) + vy * cos(th)) * dt
    delta_th = vth * dt

    x += delta_x
    y += delta_y
    th += delta_th
    
    # since all odometry is 6DOF we'll need a quaternion created from yaw
    odom_quat = tf.transformations.quaternion_from_euler(0, 0, th)
    
    # first, we'll publish the transform over tf
    odom_broadcaster.sendTransform(
        (x, y, 0.),
        odom_quat,
        current_time,
        "base_link",
        "odom"
    )

    # next, we'll publish the odometry message over ROS
    odom = Odometry()
    odom.header.stamp = current_time
    odom.header.frame_id = "odom"
    
    # set the position
    odom.pose.pose = Pose(Point(x, y, 0.), Quaternion(*odom_quat))
    
    # set the velocity
    odom.child_frame_id = "base_link"
    odom.twist.twist = Twist(Vector3(vx, vy, 0), Vector3(0, 0, vth))
    
    # publish the message
    odom_pub.publish(odom)
    last_time = current_time
    r.sleep()
    
