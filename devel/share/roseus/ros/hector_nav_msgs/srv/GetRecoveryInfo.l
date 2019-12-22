;; Auto-generated. Do not edit!


(when (boundp 'hector_nav_msgs::GetRecoveryInfo)
  (if (not (find-package "HECTOR_NAV_MSGS"))
    (make-package "HECTOR_NAV_MSGS"))
  (shadow 'GetRecoveryInfo (find-package "HECTOR_NAV_MSGS")))
(unless (find-package "HECTOR_NAV_MSGS::GETRECOVERYINFO")
  (make-package "HECTOR_NAV_MSGS::GETRECOVERYINFO"))
(unless (find-package "HECTOR_NAV_MSGS::GETRECOVERYINFOREQUEST")
  (make-package "HECTOR_NAV_MSGS::GETRECOVERYINFOREQUEST"))
(unless (find-package "HECTOR_NAV_MSGS::GETRECOVERYINFORESPONSE")
  (make-package "HECTOR_NAV_MSGS::GETRECOVERYINFORESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass hector_nav_msgs::GetRecoveryInfoRequest
  :super ros::object
  :slots (_request_time _request_radius ))

(defmethod hector_nav_msgs::GetRecoveryInfoRequest
  (:init
   (&key
    ((:request_time __request_time) (instance ros::time :init))
    ((:request_radius __request_radius) 0.0)
    )
   (send-super :init)
   (setq _request_time __request_time)
   (setq _request_radius (float __request_radius))
   self)
  (:request_time
   (&optional __request_time)
   (if __request_time (setq _request_time __request_time)) _request_time)
  (:request_radius
   (&optional __request_radius)
   (if __request_radius (setq _request_radius __request_radius)) _request_radius)
  (:serialization-length
   ()
   (+
    ;; time _request_time
    8
    ;; float64 _request_radius
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _request_time
       (write-long (send _request_time :sec) s) (write-long (send _request_time :nsec) s)
     ;; float64 _request_radius
       (sys::poke _request_radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _request_time
     (send _request_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _request_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _request_radius
     (setq _request_radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass hector_nav_msgs::GetRecoveryInfoResponse
  :super ros::object
  :slots (_trajectory_radius_entry_pose_to_req_pose _radius_entry_pose _req_pose ))

(defmethod hector_nav_msgs::GetRecoveryInfoResponse
  (:init
   (&key
    ((:trajectory_radius_entry_pose_to_req_pose __trajectory_radius_entry_pose_to_req_pose) (instance nav_msgs::Path :init))
    ((:radius_entry_pose __radius_entry_pose) (instance geometry_msgs::PoseStamped :init))
    ((:req_pose __req_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _trajectory_radius_entry_pose_to_req_pose __trajectory_radius_entry_pose_to_req_pose)
   (setq _radius_entry_pose __radius_entry_pose)
   (setq _req_pose __req_pose)
   self)
  (:trajectory_radius_entry_pose_to_req_pose
   (&rest __trajectory_radius_entry_pose_to_req_pose)
   (if (keywordp (car __trajectory_radius_entry_pose_to_req_pose))
       (send* _trajectory_radius_entry_pose_to_req_pose __trajectory_radius_entry_pose_to_req_pose)
     (progn
       (if __trajectory_radius_entry_pose_to_req_pose (setq _trajectory_radius_entry_pose_to_req_pose (car __trajectory_radius_entry_pose_to_req_pose)))
       _trajectory_radius_entry_pose_to_req_pose)))
  (:radius_entry_pose
   (&rest __radius_entry_pose)
   (if (keywordp (car __radius_entry_pose))
       (send* _radius_entry_pose __radius_entry_pose)
     (progn
       (if __radius_entry_pose (setq _radius_entry_pose (car __radius_entry_pose)))
       _radius_entry_pose)))
  (:req_pose
   (&rest __req_pose)
   (if (keywordp (car __req_pose))
       (send* _req_pose __req_pose)
     (progn
       (if __req_pose (setq _req_pose (car __req_pose)))
       _req_pose)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _trajectory_radius_entry_pose_to_req_pose
    (send _trajectory_radius_entry_pose_to_req_pose :serialization-length)
    ;; geometry_msgs/PoseStamped _radius_entry_pose
    (send _radius_entry_pose :serialization-length)
    ;; geometry_msgs/PoseStamped _req_pose
    (send _req_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _trajectory_radius_entry_pose_to_req_pose
       (send _trajectory_radius_entry_pose_to_req_pose :serialize s)
     ;; geometry_msgs/PoseStamped _radius_entry_pose
       (send _radius_entry_pose :serialize s)
     ;; geometry_msgs/PoseStamped _req_pose
       (send _req_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _trajectory_radius_entry_pose_to_req_pose
     (send _trajectory_radius_entry_pose_to_req_pose :deserialize buf ptr-) (incf ptr- (send _trajectory_radius_entry_pose_to_req_pose :serialization-length))
   ;; geometry_msgs/PoseStamped _radius_entry_pose
     (send _radius_entry_pose :deserialize buf ptr-) (incf ptr- (send _radius_entry_pose :serialization-length))
   ;; geometry_msgs/PoseStamped _req_pose
     (send _req_pose :deserialize buf ptr-) (incf ptr- (send _req_pose :serialization-length))
   ;;
   self)
  )

(defclass hector_nav_msgs::GetRecoveryInfo
  :super ros::object
  :slots ())

(setf (get hector_nav_msgs::GetRecoveryInfo :md5sum-) "edd6e579a08e5c27f2b7fcfa4c39b7bb")
(setf (get hector_nav_msgs::GetRecoveryInfo :datatype-) "hector_nav_msgs/GetRecoveryInfo")
(setf (get hector_nav_msgs::GetRecoveryInfo :request) hector_nav_msgs::GetRecoveryInfoRequest)
(setf (get hector_nav_msgs::GetRecoveryInfo :response) hector_nav_msgs::GetRecoveryInfoResponse)

(defmethod hector_nav_msgs::GetRecoveryInfoRequest
  (:response () (instance hector_nav_msgs::GetRecoveryInfoResponse :init)))

(setf (get hector_nav_msgs::GetRecoveryInfoRequest :md5sum-) "edd6e579a08e5c27f2b7fcfa4c39b7bb")
(setf (get hector_nav_msgs::GetRecoveryInfoRequest :datatype-) "hector_nav_msgs/GetRecoveryInfoRequest")
(setf (get hector_nav_msgs::GetRecoveryInfoRequest :definition-)
      "



time request_time
float64 request_radius
---
nav_msgs/Path trajectory_radius_entry_pose_to_req_pose
geometry_msgs/PoseStamped radius_entry_pose
geometry_msgs/PoseStamped req_pose



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

(setf (get hector_nav_msgs::GetRecoveryInfoResponse :md5sum-) "edd6e579a08e5c27f2b7fcfa4c39b7bb")
(setf (get hector_nav_msgs::GetRecoveryInfoResponse :datatype-) "hector_nav_msgs/GetRecoveryInfoResponse")
(setf (get hector_nav_msgs::GetRecoveryInfoResponse :definition-)
      "



time request_time
float64 request_radius
---
nav_msgs/Path trajectory_radius_entry_pose_to_req_pose
geometry_msgs/PoseStamped radius_entry_pose
geometry_msgs/PoseStamped req_pose



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



(provide :hector_nav_msgs/GetRecoveryInfo "edd6e579a08e5c27f2b7fcfa4c39b7bb")


