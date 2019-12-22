;; Auto-generated. Do not edit!


(when (boundp 'hector_nav_msgs::GetRobotTrajectory)
  (if (not (find-package "HECTOR_NAV_MSGS"))
    (make-package "HECTOR_NAV_MSGS"))
  (shadow 'GetRobotTrajectory (find-package "HECTOR_NAV_MSGS")))
(unless (find-package "HECTOR_NAV_MSGS::GETROBOTTRAJECTORY")
  (make-package "HECTOR_NAV_MSGS::GETROBOTTRAJECTORY"))
(unless (find-package "HECTOR_NAV_MSGS::GETROBOTTRAJECTORYREQUEST")
  (make-package "HECTOR_NAV_MSGS::GETROBOTTRAJECTORYREQUEST"))
(unless (find-package "HECTOR_NAV_MSGS::GETROBOTTRAJECTORYRESPONSE")
  (make-package "HECTOR_NAV_MSGS::GETROBOTTRAJECTORYRESPONSE"))

(in-package "ROS")



(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass hector_nav_msgs::GetRobotTrajectoryRequest
  :super ros::object
  :slots ())

(defmethod hector_nav_msgs::GetRobotTrajectoryRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass hector_nav_msgs::GetRobotTrajectoryResponse
  :super ros::object
  :slots (_trajectory ))

(defmethod hector_nav_msgs::GetRobotTrajectoryResponse
  (:init
   (&key
    ((:trajectory __trajectory) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _trajectory __trajectory)
   self)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _trajectory
    (send _trajectory :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _trajectory
       (send _trajectory :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;;
   self)
  )

(defclass hector_nav_msgs::GetRobotTrajectory
  :super ros::object
  :slots ())

(setf (get hector_nav_msgs::GetRobotTrajectory :md5sum-) "c7bd40129c5786fc26351edbd33b8d33")
(setf (get hector_nav_msgs::GetRobotTrajectory :datatype-) "hector_nav_msgs/GetRobotTrajectory")
(setf (get hector_nav_msgs::GetRobotTrajectory :request) hector_nav_msgs::GetRobotTrajectoryRequest)
(setf (get hector_nav_msgs::GetRobotTrajectory :response) hector_nav_msgs::GetRobotTrajectoryResponse)

(defmethod hector_nav_msgs::GetRobotTrajectoryRequest
  (:response () (instance hector_nav_msgs::GetRobotTrajectoryResponse :init)))

(setf (get hector_nav_msgs::GetRobotTrajectoryRequest :md5sum-) "c7bd40129c5786fc26351edbd33b8d33")
(setf (get hector_nav_msgs::GetRobotTrajectoryRequest :datatype-) "hector_nav_msgs/GetRobotTrajectoryRequest")
(setf (get hector_nav_msgs::GetRobotTrajectoryRequest :definition-)
      "




---
nav_msgs/Path trajectory



================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get hector_nav_msgs::GetRobotTrajectoryResponse :md5sum-) "c7bd40129c5786fc26351edbd33b8d33")
(setf (get hector_nav_msgs::GetRobotTrajectoryResponse :datatype-) "hector_nav_msgs/GetRobotTrajectoryResponse")
(setf (get hector_nav_msgs::GetRobotTrajectoryResponse :definition-)
      "




---
nav_msgs/Path trajectory



================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :hector_nav_msgs/GetRobotTrajectory "c7bd40129c5786fc26351edbd33b8d33")


