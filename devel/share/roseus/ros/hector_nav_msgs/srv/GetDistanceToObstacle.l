;; Auto-generated. Do not edit!


(when (boundp 'hector_nav_msgs::GetDistanceToObstacle)
  (if (not (find-package "HECTOR_NAV_MSGS"))
    (make-package "HECTOR_NAV_MSGS"))
  (shadow 'GetDistanceToObstacle (find-package "HECTOR_NAV_MSGS")))
(unless (find-package "HECTOR_NAV_MSGS::GETDISTANCETOOBSTACLE")
  (make-package "HECTOR_NAV_MSGS::GETDISTANCETOOBSTACLE"))
(unless (find-package "HECTOR_NAV_MSGS::GETDISTANCETOOBSTACLEREQUEST")
  (make-package "HECTOR_NAV_MSGS::GETDISTANCETOOBSTACLEREQUEST"))
(unless (find-package "HECTOR_NAV_MSGS::GETDISTANCETOOBSTACLERESPONSE")
  (make-package "HECTOR_NAV_MSGS::GETDISTANCETOOBSTACLERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hector_nav_msgs::GetDistanceToObstacleRequest
  :super ros::object
  :slots (_point ))

(defmethod hector_nav_msgs::GetDistanceToObstacleRequest
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::PointStamped :init))
    )
   (send-super :init)
   (setq _point __point)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PointStamped _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PointStamped _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PointStamped _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(defclass hector_nav_msgs::GetDistanceToObstacleResponse
  :super ros::object
  :slots (_distance _end_point ))

(defmethod hector_nav_msgs::GetDistanceToObstacleResponse
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:end_point __end_point) (instance geometry_msgs::PointStamped :init))
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _end_point __end_point)
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:end_point
   (&rest __end_point)
   (if (keywordp (car __end_point))
       (send* _end_point __end_point)
     (progn
       (if __end_point (setq _end_point (car __end_point)))
       _end_point)))
  (:serialization-length
   ()
   (+
    ;; float32 _distance
    4
    ;; geometry_msgs/PointStamped _end_point
    (send _end_point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/PointStamped _end_point
       (send _end_point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/PointStamped _end_point
     (send _end_point :deserialize buf ptr-) (incf ptr- (send _end_point :serialization-length))
   ;;
   self)
  )

(defclass hector_nav_msgs::GetDistanceToObstacle
  :super ros::object
  :slots ())

(setf (get hector_nav_msgs::GetDistanceToObstacle :md5sum-) "db18115f41079cd33136cf1e23b216ad")
(setf (get hector_nav_msgs::GetDistanceToObstacle :datatype-) "hector_nav_msgs/GetDistanceToObstacle")
(setf (get hector_nav_msgs::GetDistanceToObstacle :request) hector_nav_msgs::GetDistanceToObstacleRequest)
(setf (get hector_nav_msgs::GetDistanceToObstacle :response) hector_nav_msgs::GetDistanceToObstacleResponse)

(defmethod hector_nav_msgs::GetDistanceToObstacleRequest
  (:response () (instance hector_nav_msgs::GetDistanceToObstacleResponse :init)))

(setf (get hector_nav_msgs::GetDistanceToObstacleRequest :md5sum-) "db18115f41079cd33136cf1e23b216ad")
(setf (get hector_nav_msgs::GetDistanceToObstacleRequest :datatype-) "hector_nav_msgs/GetDistanceToObstacleRequest")
(setf (get hector_nav_msgs::GetDistanceToObstacleRequest :definition-)
      "




geometry_msgs/PointStamped point

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
float32 distance
geometry_msgs/PointStamped end_point




================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get hector_nav_msgs::GetDistanceToObstacleResponse :md5sum-) "db18115f41079cd33136cf1e23b216ad")
(setf (get hector_nav_msgs::GetDistanceToObstacleResponse :datatype-) "hector_nav_msgs/GetDistanceToObstacleResponse")
(setf (get hector_nav_msgs::GetDistanceToObstacleResponse :definition-)
      "




geometry_msgs/PointStamped point

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
float32 distance
geometry_msgs/PointStamped end_point




================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :hector_nav_msgs/GetDistanceToObstacle "db18115f41079cd33136cf1e23b216ad")


