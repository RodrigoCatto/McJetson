; Auto-generated. Do not edit!


(cl:in-package hector_nav_msgs-srv)


;//! \htmlinclude GetRobotTrajectory-request.msg.html

(cl:defclass <GetRobotTrajectory-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetRobotTrajectory-request (<GetRobotTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobotTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobotTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_nav_msgs-srv:<GetRobotTrajectory-request> is deprecated: use hector_nav_msgs-srv:GetRobotTrajectory-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobotTrajectory-request>) ostream)
  "Serializes a message object of type '<GetRobotTrajectory-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobotTrajectory-request>) istream)
  "Deserializes a message object of type '<GetRobotTrajectory-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobotTrajectory-request>)))
  "Returns string type for a service object of type '<GetRobotTrajectory-request>"
  "hector_nav_msgs/GetRobotTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotTrajectory-request)))
  "Returns string type for a service object of type 'GetRobotTrajectory-request"
  "hector_nav_msgs/GetRobotTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobotTrajectory-request>)))
  "Returns md5sum for a message object of type '<GetRobotTrajectory-request>"
  "c7bd40129c5786fc26351edbd33b8d33")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobotTrajectory-request)))
  "Returns md5sum for a message object of type 'GetRobotTrajectory-request"
  "c7bd40129c5786fc26351edbd33b8d33")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobotTrajectory-request>)))
  "Returns full string definition for message of type '<GetRobotTrajectory-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobotTrajectory-request)))
  "Returns full string definition for message of type 'GetRobotTrajectory-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobotTrajectory-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobotTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobotTrajectory-request
))
;//! \htmlinclude GetRobotTrajectory-response.msg.html

(cl:defclass <GetRobotTrajectory-response> (roslisp-msg-protocol:ros-message)
  ((trajectory
    :reader trajectory
    :initarg :trajectory
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass GetRobotTrajectory-response (<GetRobotTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobotTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobotTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_nav_msgs-srv:<GetRobotTrajectory-response> is deprecated: use hector_nav_msgs-srv:GetRobotTrajectory-response instead.")))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <GetRobotTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_nav_msgs-srv:trajectory-val is deprecated.  Use hector_nav_msgs-srv:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobotTrajectory-response>) ostream)
  "Serializes a message object of type '<GetRobotTrajectory-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobotTrajectory-response>) istream)
  "Deserializes a message object of type '<GetRobotTrajectory-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobotTrajectory-response>)))
  "Returns string type for a service object of type '<GetRobotTrajectory-response>"
  "hector_nav_msgs/GetRobotTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotTrajectory-response)))
  "Returns string type for a service object of type 'GetRobotTrajectory-response"
  "hector_nav_msgs/GetRobotTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobotTrajectory-response>)))
  "Returns md5sum for a message object of type '<GetRobotTrajectory-response>"
  "c7bd40129c5786fc26351edbd33b8d33")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobotTrajectory-response)))
  "Returns md5sum for a message object of type 'GetRobotTrajectory-response"
  "c7bd40129c5786fc26351edbd33b8d33")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobotTrajectory-response>)))
  "Returns full string definition for message of type '<GetRobotTrajectory-response>"
  (cl:format cl:nil "nav_msgs/Path trajectory~%~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobotTrajectory-response)))
  "Returns full string definition for message of type 'GetRobotTrajectory-response"
  (cl:format cl:nil "nav_msgs/Path trajectory~%~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobotTrajectory-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobotTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobotTrajectory-response
    (cl:cons ':trajectory (trajectory msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRobotTrajectory)))
  'GetRobotTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRobotTrajectory)))
  'GetRobotTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotTrajectory)))
  "Returns string type for a service object of type '<GetRobotTrajectory>"
  "hector_nav_msgs/GetRobotTrajectory")