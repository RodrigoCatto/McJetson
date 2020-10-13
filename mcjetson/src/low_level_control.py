#!/usr/bin/python

"""
Class for low level control of owr car. It assumes ros-12cpwmboard has been
installed
"""
import rospy
from geometry_msgs.msg import Twist
from std_msgs.msg import Float64
import time


class TkkLowLevelCtrl():
    def __init__(self):
        
        rospy.loginfo("Setting Up the Node...")
        rospy.init_node('tkk_llc')

        #--- Create the Subscriber to Twist commands
        self.ros_sub_twist          = rospy.Subscriber("/cmd_vel", Twist, self.set_actuators_from_cmdvel)
        rospy.loginfo("> Cmd_Vel Subscriber corrrectly initialized")

	#--- Create a Publisher to Servo Commands
        self.ros_pub_servo = rospy.Publisher('/commands/servo/position', Float64, queue_size=1)
        rospy.loginfo("> Servo Publisher corrrectly initialized")

	#--- Create a Publisher to Motor Commands
        self.ros_pub_motor = rospy.Publisher('/commands/motor/speed', Float64, queue_size=1)
        rospy.loginfo("> Motor Publisher corrrectly initialized")

        #--- Get the last time e got a commands
        self._last_time_cmd_rcv     = time.time()
        self._timeout_s             = 5
	
        rospy.loginfo("Initialization complete")
	
    def get_value_out(self, value_in, center_value, range_value, direction):

        self.value = 0.0
        self.center_value = center_value
        self._center = center_value
        self._range = range_value
        self._half_range = 0.5*range_value
        self._dir = direction

        #--- Convert its range in [-1, 1]
        self._sf        = 1.0/self._half_range

        #--- value is in [-1, 1]
        self.value      = value_in
        self.value_out  = self._dir*value_in*self._half_range + self._center
 	
        return(self.value_out)
	
    def set_actuators_from_cmdvel(self, message):
        """
        Get a message from cmd_vel, assuming a maximum input of 1
        """
        #-- Save the time
        self._last_time_cmd_rcv = time.time()
	
        #-- Convert vel into servo values
        self.angulo = self.get_value_out(message.angular.z, 0.5, 0.8, 1)
        self.motor = self.get_value_out(message.linear.x, 0, 8000, 1)

	self.ros_pub_servo.publish(self.angulo)
	self.ros_pub_motor.publish(self.motor)
	
	
    def set_actuators_idle(self):

        self.ros_pub_servo.publish(self.get_value_out(0, 0.5, 0.28, 1))
	self.ros_pub_motor.publish(self.get_value_out(0, 0, 8000, 1))
        
	
    def run(self):
        
        #--- Set the control rate
        rate = rospy.Rate(10)
	
        while not rospy.is_shutdown():
	
            rate.sleep()

if __name__ == "__main__":
	
	
    tk_llc     = TkkLowLevelCtrl()
    tk_llc.run()
