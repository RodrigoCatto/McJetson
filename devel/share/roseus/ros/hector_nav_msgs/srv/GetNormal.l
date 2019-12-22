;; Auto-generated. Do not edit!


(when (boundp 'hector_nav_msgs::GetNormal)
  (if (not (find-package "HECTOR_NAV_MSGS"))
    (make-package "HECTOR_NAV_MSGS"))
  (shadow 'GetNormal (find-package "HECTOR_NAV_MSGS")))
(unless (find-package "HECTOR_NAV_MSGS::GETNORMAL")
  (make-package "HECTOR_NAV_MSGS::GETNORMAL"))
(unless (find-package "HECTOR_NAV_MSGS::GETNORMALREQUEST")
  (make-package "HECTOR_NAV_MSGS::GETNORMALREQUEST"))
(unless (find-package "HECTOR_NAV_MSGS::GETNORMALRESPONSE")
  (make-package "HECTOR_NAV_MSGS::GETNORMALRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hector_nav_msgs::GetNormalRequest
  :super ros::object
  :slots (_point ))

(defmethod hector_nav_msgs::GetNormalRequest
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

(defclass hector_nav_msgs::GetNormalResponse
  :super ros::object
  :slots (_normal ))

(defmethod hector_nav_msgs::GetNormalResponse
  (:init
   (&key
    ((:normal __normal) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _normal __normal)
   self)
  (:normal
   (&rest __normal)
   (if (keywordp (car __normal))
       (send* _normal __normal)
     (progn
       (if __normal (setq _normal (car __normal)))
       _normal)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _normal
    (send _normal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _normal
       (send _normal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _normal
     (send _normal :deserialize buf ptr-) (incf ptr- (send _normal :serialization-length))
   ;;
   self)
  )

(defclass hector_nav_msgs::GetNormal
  :super ros::object
  :slots ())

(setf (get hector_nav_msgs::GetNormal :md5sum-) "134adf3dd9201d61a4857acd73cf22f6")
(setf (get hector_nav_msgs::GetNormal :datatype-) "hector_nav_msgs/GetNormal")
(setf (get hector_nav_msgs::GetNormal :request) hector_nav_msgs::GetNormalRequest)
(setf (get hector_nav_msgs::GetNormal :response) hector_nav_msgs::GetNormalResponse)

(defmethod hector_nav_msgs::GetNormalRequest
  (:response () (instance hector_nav_msgs::GetNormalResponse :init)))

(setf (get hector_nav_msgs::GetNormalRequest :md5sum-) "134adf3dd9201d61a4857acd73cf22f6")
(setf (get hector_nav_msgs::GetNormalRequest :datatype-) "hector_nav_msgs/GetNormalRequest")
(setf (get hector_nav_msgs::GetNormalRequest :definition-)
      "geometry_msgs/PointStamped point

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
geometry_msgs/Vector3 normal


================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")

(setf (get hector_nav_msgs::GetNormalResponse :md5sum-) "134adf3dd9201d61a4857acd73cf22f6")
(setf (get hector_nav_msgs::GetNormalResponse :datatype-) "hector_nav_msgs/GetNormalResponse")
(setf (get hector_nav_msgs::GetNormalResponse :definition-)
      "geometry_msgs/PointStamped point

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
geometry_msgs/Vector3 normal


================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")



(provide :hector_nav_msgs/GetNormal "134adf3dd9201d61a4857acd73cf22f6")


