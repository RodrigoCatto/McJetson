; Auto-generated. Do not edit!


(cl:in-package hector_nav_msgs-srv)


;//! \htmlinclude GetDistanceToObstacle-request.msg.html

(cl:defclass <GetDistanceToObstacle-request> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped)))
)

(cl:defclass GetDistanceToObstacle-request (<GetDistanceToObstacle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDistanceToObstacle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDistanceToObstacle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_nav_msgs-srv:<GetDistanceToObstacle-request> is deprecated: use hector_nav_msgs-srv:GetDistanceToObstacle-request instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <GetDistanceToObstacle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_nav_msgs-srv:point-val is deprecated.  Use hector_nav_msgs-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDistanceToObstacle-request>) ostream)
  "Serializes a message object of type '<GetDistanceToObstacle-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDistanceToObstacle-request>) istream)
  "Deserializes a message object of type '<GetDistanceToObstacle-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDistanceToObstacle-request>)))
  "Returns string type for a service object of type '<GetDistanceToObstacle-request>"
  "hector_nav_msgs/GetDistanceToObstacleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDistanceToObstacle-request)))
  "Returns string type for a service object of type 'GetDistanceToObstacle-request"
  "hector_nav_msgs/GetDistanceToObstacleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDistanceToObstacle-request>)))
  "Returns md5sum for a message object of type '<GetDistanceToObstacle-request>"
  "db18115f41079cd33136cf1e23b216ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDistanceToObstacle-request)))
  "Returns md5sum for a message object of type 'GetDistanceToObstacle-request"
  "db18115f41079cd33136cf1e23b216ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDistanceToObstacle-request>)))
  "Returns full string definition for message of type '<GetDistanceToObstacle-request>"
  (cl:format cl:nil "~%~%~%~%~%geometry_msgs/PointStamped point~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDistanceToObstacle-request)))
  "Returns full string definition for message of type 'GetDistanceToObstacle-request"
  (cl:format cl:nil "~%~%~%~%~%geometry_msgs/PointStamped point~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDistanceToObstacle-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDistanceToObstacle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDistanceToObstacle-request
    (cl:cons ':point (point msg))
))
;//! \htmlinclude GetDistanceToObstacle-response.msg.html

(cl:defclass <GetDistanceToObstacle-response> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (end_point
    :reader end_point
    :initarg :end_point
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped)))
)

(cl:defclass GetDistanceToObstacle-response (<GetDistanceToObstacle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDistanceToObstacle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDistanceToObstacle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_nav_msgs-srv:<GetDistanceToObstacle-response> is deprecated: use hector_nav_msgs-srv:GetDistanceToObstacle-response instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <GetDistanceToObstacle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_nav_msgs-srv:distance-val is deprecated.  Use hector_nav_msgs-srv:distance instead.")
  (distance m))

(cl:ensure-generic-function 'end_point-val :lambda-list '(m))
(cl:defmethod end_point-val ((m <GetDistanceToObstacle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_nav_msgs-srv:end_point-val is deprecated.  Use hector_nav_msgs-srv:end_point instead.")
  (end_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDistanceToObstacle-response>) ostream)
  "Serializes a message object of type '<GetDistanceToObstacle-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDistanceToObstacle-response>) istream)
  "Deserializes a message object of type '<GetDistanceToObstacle-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDistanceToObstacle-response>)))
  "Returns string type for a service object of type '<GetDistanceToObstacle-response>"
  "hector_nav_msgs/GetDistanceToObstacleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDistanceToObstacle-response)))
  "Returns string type for a service object of type 'GetDistanceToObstacle-response"
  "hector_nav_msgs/GetDistanceToObstacleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDistanceToObstacle-response>)))
  "Returns md5sum for a message object of type '<GetDistanceToObstacle-response>"
  "db18115f41079cd33136cf1e23b216ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDistanceToObstacle-response)))
  "Returns md5sum for a message object of type 'GetDistanceToObstacle-response"
  "db18115f41079cd33136cf1e23b216ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDistanceToObstacle-response>)))
  "Returns full string definition for message of type '<GetDistanceToObstacle-response>"
  (cl:format cl:nil "float32 distance~%geometry_msgs/PointStamped end_point~%~%~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDistanceToObstacle-response)))
  "Returns full string definition for message of type 'GetDistanceToObstacle-response"
  (cl:format cl:nil "float32 distance~%geometry_msgs/PointStamped end_point~%~%~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDistanceToObstacle-response>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDistanceToObstacle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDistanceToObstacle-response
    (cl:cons ':distance (distance msg))
    (cl:cons ':end_point (end_point msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDistanceToObstacle)))
  'GetDistanceToObstacle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDistanceToObstacle)))
  'GetDistanceToObstacle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDistanceToObstacle)))
  "Returns string type for a service object of type '<GetDistanceToObstacle>"
  "hector_nav_msgs/GetDistanceToObstacle")