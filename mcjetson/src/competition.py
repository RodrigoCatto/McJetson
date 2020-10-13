#! /usr/bin/env python

import rospy
#! /usr/bin/env python
import rospy
import time
import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal, MoveBaseResult, MoveBaseFeedback

# definition of the feedback callback. This will be called when feedback
# is received from the action server
# it just prints a message indicating a new message has been received
def feedback_callback(feedback):
    
    print('[Feedback] Going to Goal Pose...')

# initializes the action client node
rospy.init_node('move_base_action_client')

# create the connection to the action server
client = actionlib.SimpleActionClient('/move_base', MoveBaseAction)
# waits until the action server is up and running
client.wait_for_server()


goal1 = MoveBaseGoal()
goal1.target_pose.header.frame_id = 'map'
goal1.target_pose.pose.position.x = 0.536989629269
goal1.target_pose.pose.position.y = -3.84424805641
goal1.target_pose.pose.position.z = 0.0
goal1.target_pose.pose.orientation.x = 0.0
goal1.target_pose.pose.orientation.y = 0.0
goal1.target_pose.pose.orientation.z = -0.598102121021
goal1.target_pose.pose.orientation.w = 0.80141989795

goal2 = MoveBaseGoal()
goal2.target_pose.header.frame_id = 'map'
goal2.target_pose.pose.position.x = 1.98187232018
goal2.target_pose.pose.position.y = -3.01903486252
goal2.target_pose.pose.position.z = 0.0
goal2.target_pose.pose.orientation.x = 0.0
goal2.target_pose.pose.orientation.y = 0.0
goal2.target_pose.pose.orientation.z = 0.944016792756
goal2.target_pose.pose.orientation.w = 0.32989740071

goal3 = MoveBaseGoal()
goal3.target_pose.header.frame_id = 'map'
goal3.target_pose.pose.position.x = -2.04235863686
goal3.target_pose.pose.position.y = -2.94409298897
goal3.target_pose.pose.position.z = 0.0
goal3.target_pose.pose.orientation.x = 0.0
goal3.target_pose.pose.orientation.y = 0.0
goal3.target_pose.pose.orientation.z = 0.331192763356
goal3.target_pose.pose.orientation.w = 0.943563115801

while not rospy.is_shutdown():
    # creates a goal to send to the action server
    # sends the goal to the action server, specifying which feedback function
    # to call when feedback received
    client.send_goal(goal1, feedback_cb=feedback_callback)
    client.wait_for_result()
    print('[Result] State: %d'%(client.get_state()))
    client.send_goal(goal2, feedback_cb=feedback_callback)
    client.wait_for_result()
    print('[Result] State: %d'%(client.get_state()))
    client.send_goal(goal3, feedback_cb=feedback_callback)
    client.wait_for_result()
    print('[Result] State: %d'%(client.get_state()))

    

# Uncomment these lines to test goal preemption:
#time.sleep(3.0)
#client.cancel_goal()  # would cancel the goal 3 seconds after starting

# wait until the result is obtained
# you can do other stuff here instead of waiting
# and check for status from time to time 
# status = client.get_state()
# check the client API link below for more info
