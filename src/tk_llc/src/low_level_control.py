#!/usr/bin/python

"""
Class for low level control of owr car. It assumes ros-12cpwmboard has been
installed
"""
import rospy
from geometry_msgs.msg import Twist
from std_msgs.msg import UInt16MultiArray
import time


servo_list = UInt16MultiArray()
servo_list.data = []

class TkkLowLevelCtrl():
    def __init__(self, center_value = 105, range = 60, direction=1):

        self.value = 0.0
        self.center_value = center_value
        self._center = center_value
        self._range = range
        self._half_range = 0.5*range
        self._dir = direction

        #--- Convert its range in [-1, 1]
        self._sf        = 1.0/self._half_range
        
        rospy.loginfo("Setting Up the Node...")
        rospy.init_node('tkk_llc')

        #--- Create the Subscriber to Twist commands
        self.ros_sub_twist          = rospy.Subscriber("/cmd_vel", Twist, self.set_actuators_from_cmdvel)
        rospy.loginfo("> Subscriber corrrectly initialized")

        self.ros_pub_servo_array = rospy.Publisher('/servo', UInt16MultiArray, queue_size=1)
        rospy.loginfo("> Publisher corrrectly initialized")

        #--- Get the last time e got a commands
        self._last_time_cmd_rcv     = time.time()
        self._timeout_s             = 5
	
        rospy.loginfo("Initialization complete")
	
    def get_value_out(self, value_in):
        #--- value is in [-1, 1]
        self.value      = value_in
        self.value_out  = int(self._dir*value_in*self._half_range + self._center)
 	
        return(self.value_out)
	
    def set_actuators_from_cmdvel(self, message):
        """
        Get a message from cmd_vel, assuming a maximum input of 1
        """
        #-- Save the time
	
        self._last_time_cmd_rcv = time.time()
	
        #-- Convert vel into servo values
        self.angulo = self.get_value_out(message.angular.z)
        self.motor = self.get_value_out(message.linear.x)


        servo_list.data = [self.angulo, self.motor]
        self.ros_pub_servo_array.publish(servo_list)
	
	
    def set_actuators_idle(self):
        #-- Convert vel into servo values
        #wiringpi.pwmWrite(12, self.get_value_out(0))
        #servo.set_servo(12, self.get_value_out(0))
        servo_list.data = [self.get_value_out(0), self.get_value_out(0)]
        self.ros_pub_servo_array.publish(servo_list)
        
	
    def is_controller_connected(self):
        print time.time() - self._last_time_cmd_rcv
        return(time.time() - self._last_time_cmd_rcv < self._timeout_s)
	
    def run(self):
        
        
        #--- Set the control rate
        rate = rospy.Rate(10)
	
        while not rospy.is_shutdown():
            
            if not self.is_controller_connected:
                self.set_actuators_idle()
	
            rate.sleep()

if __name__ == "__main__":
	
	
    tk_llc     = TkkLowLevelCtrl()
    tk_llc.run()
