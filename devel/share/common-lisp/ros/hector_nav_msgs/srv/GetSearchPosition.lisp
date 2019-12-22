; Auto-generated. Do not edit!


(cl:in-package hector_nav_msgs-srv)


;//! \htmlinclude GetSearchPosition-request.msg.html

(cl:defclass <GetSearchPosition-request> (roslisp-msg-protocol:ros-message)
  ((ooi_pose
    :reader ooi_pose
    :initarg :ooi_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetSearchPosition-request (<GetSearchPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSearchPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSearchPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_nav_msgs-srv:<GetSearchPosition-request> is deprecated: use hector_nav_msgs-srv:GetSearchPosition-request instead.")))

(cl:ensure-generic-function 'ooi_pose-val :lambda-list '(m))
(cl:defmethod ooi_pose-val ((m <GetSearchPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_nav_msgs-srv:ooi_pose-val is deprecated.  Use hector_nav_msgs-srv:ooi_pose instead.")
  (ooi_pose m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <GetSearchPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_nav_msgs-srv:distance-val is deprecated.  Use hector_nav_msgs-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSearchPosition-request>) ostream)
  "Serializes a message object of type '<GetSearchPosition-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ooi_pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSearchPosition-request>) istream)
  "Deserializes a message object of type '<GetSearchPosition-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ooi_pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSearchPosition-request>)))
  "Returns string type for a service object of type '<GetSearchPosition-request>"
  "hector_nav_msgs/GetSearchPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSearchPosition-request)))
  "Returns string type for a service object of type 'GetSearchPosition-request"
  "hector_nav_msgs/GetSearchPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSearchPosition-request>)))
  "Returns md5sum for a message object of type '<GetSearchPosition-request>"
  "a28d7c2840927c12082b304156df4111")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSearchPosition-request)))
  "Returns md5sum for a message object of type 'GetSearchPosition-request"
  "a28d7c2840927c12082b304156df4111")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSearchPosition-request>)))
  "Returns full string definition for message of type '<GetSearchPosition-request>"
  (cl:format cl:nil "~%~%geometry_msgs/PoseStamped ooi_pose~%float32 distance~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSearchPosition-request)))
  "Returns full string definition for message of type 'GetSearchPosition-request"
  (cl:format cl:nil "~%~%geometry_msgs/PoseStamped ooi_pose~%float32 distance~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSearchPosition-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ooi_pose))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSearchPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSearchPosition-request
    (cl:cons ':ooi_pose (ooi_pose msg))
    (cl:cons ':distance (distance msg))
))
;//! \htmlinclude GetSearchPosition-response.msg.html

(cl:defclass <GetSearchPosition-response> (roslisp-msg-protocol:ros-message)
  ((search_pose
    :reader search_pose
    :initarg :search_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass GetSearchPosition-response (<GetSearchPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSearchPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSearchPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_nav_msgs-srv:<GetSearchPosition-response> is deprecated: use hector_nav_msgs-srv:GetSearchPosition-response instead.")))

(cl:ensure-generic-function 'search_pose-val :lambda-list '(m))
(cl:defmethod search_pose-val ((m <GetSearchPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_nav_msgs-srv:search_pose-val is deprecated.  Use hector_nav_msgs-srv:search_pose instead.")
  (search_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSearchPosition-response>) ostream)
  "Serializes a message object of type '<GetSearchPosition-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'search_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSearchPosition-response>) istream)
  "Deserializes a message object of type '<GetSearchPosition-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'search_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSearchPosition-response>)))
  "Returns string type for a service object of type '<GetSearchPosition-response>"
  "hector_nav_msgs/GetSearchPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSearchPosition-response)))
  "Returns string type for a service object of type 'GetSearchPosition-response"
  "hector_nav_msgs/GetSearchPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSearchPosition-response>)))
  "Returns md5sum for a message object of type '<GetSearchPosition-response>"
  "a28d7c2840927c12082b304156df4111")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSearchPosition-response)))
  "Returns md5sum for a message object of type 'GetSearchPosition-response"
  "a28d7c2840927c12082b304156df4111")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSearchPosition-response>)))
  "Returns full string definition for message of type '<GetSearchPosition-response>"
  (cl:format cl:nil "geometry_msgs/PoseStamped search_pose~%~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSearchPosition-response)))
  "Returns full string definition for message of type 'GetSearchPosition-response"
  (cl:format cl:nil "geometry_msgs/PoseStamped search_pose~%~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSearchPosition-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'search_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSearchPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSearchPosition-response
    (cl:cons ':search_pose (search_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSearchPosition)))
  'GetSearchPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSearchPosition)))
  'GetSearchPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSearchPosition)))
  "Returns string type for a service object of type '<GetSearchPosition>"
  "hector_nav_msgs/GetSearchPosition")