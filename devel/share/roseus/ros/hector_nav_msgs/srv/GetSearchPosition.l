;; Auto-generated. Do not edit!


(when (boundp 'hector_nav_msgs::GetSearchPosition)
  (if (not (find-package "HECTOR_NAV_MSGS"))
    (make-package "HECTOR_NAV_MSGS"))
  (shadow 'GetSearchPosition (find-package "HECTOR_NAV_MSGS")))
(unless (find-package "HECTOR_NAV_MSGS::GETSEARCHPOSITION")
  (make-package "HECTOR_NAV_MSGS::GETSEARCHPOSITION"))
(unless (find-package "HECTOR_NAV_MSGS::GETSEARCHPOSITIONREQUEST")
  (make-package "HECTOR_NAV_MSGS::GETSEARCHPOSITIONREQUEST"))
(unless (find-package "HECTOR_NAV_MSGS::GETSEARCHPOSITIONRESPONSE")
  (make-package "HECTOR_NAV_MSGS::GETSEARCHPOSITIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hector_nav_msgs::GetSearchPositionRequest
  :super ros::object
  :slots (_ooi_pose _distance ))

(defmethod hector_nav_msgs::GetSearchPositionRequest
  (:init
   (&key
    ((:ooi_pose __ooi_pose) (instance geometry_msgs::PoseStamped :init))
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _ooi_pose __ooi_pose)
   (setq _distance (float __distance))
   self)
  (:ooi_pose
   (&rest __ooi_pose)
   (if (keywordp (car __ooi_pose))
       (send* _ooi_pose __ooi_pose)
     (progn
       (if __ooi_pose (setq _ooi_pose (car __ooi_pose)))
       _ooi_pose)))
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _ooi_pose
    (send _ooi_pose :serialization-length)
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _ooi_pose
       (send _ooi_pose :serialize s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _ooi_pose
     (send _ooi_pose :deserialize buf ptr-) (incf ptr- (send _ooi_pose :serialization-length))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hector_nav_msgs::GetSearchPositionResponse
  :super ros::object
  :slots (_search_pose ))

(defmethod hector_nav_msgs::GetSearchPositionResponse
  (:init
   (&key
    ((:search_pose __search_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _search_pose __search_pose)
   self)
  (:search_pose
   (&rest __search_pose)
   (if (keywordp (car __search_pose))
       (send* _search_pose __search_pose)
     (progn
       (if __search_pose (setq _search_pose (car __search_pose)))
       _search_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _search_pose
    (send _search_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _search_pose
       (send _search_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _search_pose
     (send _search_pose :deserialize buf ptr-) (incf ptr- (send _search_pose :serialization-length))
   ;;
   self)
  )

(defclass hector_nav_msgs::GetSearchPosition
  :super ros::object
  :slots ())

(setf (get hector_nav_msgs::GetSearchPosition :md5sum-) "a28d7c2840927c12082b304156df4111")
(setf (get hector_nav_msgs::GetSearchPosition :datatype-) "hector_nav_msgs/GetSearchPosition")
(setf (get hector_nav_msgs::GetSearchPosition :request) hector_nav_msgs::GetSearchPositionRequest)
(setf (get hector_nav_msgs::GetSearchPosition :response) hector_nav_msgs::GetSearchPositionResponse)

(defmethod hector_nav_msgs::GetSearchPositionRequest
  (:response () (instance hector_nav_msgs::GetSearchPositionResponse :init)))

(setf (get hector_nav_msgs::GetSearchPositionRequest :md5sum-) "a28d7c2840927c12082b304156df4111")
(setf (get hector_nav_msgs::GetSearchPositionRequest :datatype-) "hector_nav_msgs/GetSearchPositionRequest")
(setf (get hector_nav_msgs::GetSearchPositionRequest :definition-)
      "

geometry_msgs/PoseStamped ooi_pose
float32 distance

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
---
geometry_msgs/PoseStamped search_pose



================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

(setf (get hector_nav_msgs::GetSearchPositionResponse :md5sum-) "a28d7c2840927c12082b304156df4111")
(setf (get hector_nav_msgs::GetSearchPositionResponse :datatype-) "hector_nav_msgs/GetSearchPositionResponse")
(setf (get hector_nav_msgs::GetSearchPositionResponse :definition-)
      "

geometry_msgs/PoseStamped ooi_pose
float32 distance

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
---
geometry_msgs/PoseStamped search_pose



================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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



(provide :hector_nav_msgs/GetSearchPosition "a28d7c2840927c12082b304156df4111")


