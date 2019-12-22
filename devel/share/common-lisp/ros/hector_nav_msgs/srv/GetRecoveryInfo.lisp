; Auto-generated. Do not edit!


(cl:in-package hector_nav_msgs-srv)


;//! \htmlinclude GetRecoveryInfo-request.msg.html

(cl:defclass <GetRecoveryInfo-request> (roslisp-msg-protocol:ros-message)
  ((request_time
    :reader request_time
    :initarg :request_time
    :type cl:real
    :initform 0)
   (request_radius
    :reader request_radius
    :initarg :request_radius
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetRecoveryInfo-request (<GetRecoveryInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRecoveryInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRecoveryInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_nav_msgs-srv:<GetRecoveryInfo-request> is deprecated: use hector_nav_msgs-srv:GetRecoveryInfo-request instead.")))

(cl:ensure-generic-function 'request_time-val :lambda-list '(m))
(cl:defmethod request_time-val ((m <GetRecoveryInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_nav_msgs-srv:request_time-val is deprecated.  Use hector_nav_msgs-srv:request_time instead.")
  (request_time m))

(cl:ensure-generic-function 'request_radius-val :lambda-list '(m))
(cl:defmethod request_radius-val ((m <GetRecoveryInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_nav_msgs-srv:request_radius-val is deprecated.  Use hector_nav_msgs-srv:request_radius instead.")
  (request_radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRecoveryInfo-request>) ostream)
  "Serializes a message object of type '<GetRecoveryInfo-request>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'request_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'request_time) (cl:floor (cl:slot-value msg 'request_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'request_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRecoveryInfo-request>) istream)
  "Deserializes a message object of type '<GetRecoveryInfo-request>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'request_radius) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRecoveryInfo-request>)))
  "Returns string type for a service object of type '<GetRecoveryInfo-request>"
  "hector_nav_msgs/GetRecoveryInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRecoveryInfo-request)))
  "Returns string type for a service object of type 'GetRecoveryInfo-request"
  "hector_nav_msgs/GetRecoveryInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRecoveryInfo-request>)))
  "Returns md5sum for a message object of type '<GetRecoveryInfo-request>"
  "edd6e579a08e5c27f2b7fcfa4c39b7bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRecoveryInfo-request)))
  "Returns md5sum for a message object of type 'GetRecoveryInfo-request"
  "edd6e579a08e5c27f2b7fcfa4c39b7bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRecoveryInfo-request>)))
  "Returns full string definition for message of type '<GetRecoveryInfo-request>"
  (cl:format cl:nil "~%~%~%~%time request_time~%float64 request_radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRecoveryInfo-request)))
  "Returns full string definition for message of type 'GetRecoveryInfo-request"
  (cl:format cl:nil "~%~%~%~%time request_time~%float64 request_radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRecoveryInfo-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRecoveryInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRecoveryInfo-request
    (cl:cons ':request_time (request_time msg))
    (cl:cons ':request_radius (request_radius msg))
))
;//! \htmlinclude GetRecoveryInfo-response.msg.html

(cl:defclass <GetRecoveryInfo-response> (roslisp-msg-protocol:ros-message)
  ((trajectory_radius_entry_pose_to_req_pose
    :reader trajectory_radius_entry_pose_to_req_pose
    :initarg :trajectory_radius_entry_pose_to_req_pose
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (radius_entry_pose
    :reader radius_entry_pose
    :initarg :radius_entry_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (req_pose
    :reader req_pose
    :initarg :req_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass GetRecoveryInfo-response (<GetRecoveryInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRecoveryInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRecoveryInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_nav_msgs-srv:<GetRecoveryInfo-response> is deprecated: use hector_nav_msgs-srv:GetRecoveryInfo-response instead.")))

(cl:ensure-generic-function 'trajectory_radius_entry_pose_to_req_pose-val :lambda-list '(m))
(cl:defmethod trajectory_radius_entry_pose_to_req_pose-val ((m <GetRecoveryInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_nav_msgs-srv:trajectory_radius_entry_pose_to_req_pose-val is deprecated.  Use hector_nav_msgs-srv:trajectory_radius_entry_pose_to_req_pose instead.")
  (trajectory_radius_entry_pose_to_req_pose m))

(cl:ensure-generic-function 'radius_entry_pose-val :lambda-list '(m))
(cl:defmethod radius_entry_pose-val ((m <GetRecoveryInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_nav_msgs-srv:radius_entry_pose-val is deprecated.  Use hector_nav_msgs-srv:radius_entry_pose instead.")
  (radius_entry_pose m))

(cl:ensure-generic-function 'req_pose-val :lambda-list '(m))
(cl:defmethod req_pose-val ((m <GetRecoveryInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_nav_msgs-srv:req_pose-val is deprecated.  Use hector_nav_msgs-srv:req_pose instead.")
  (req_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRecoveryInfo-response>) ostream)
  "Serializes a message object of type '<GetRecoveryInfo-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory_radius_entry_pose_to_req_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radius_entry_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'req_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRecoveryInfo-response>) istream)
  "Deserializes a message object of type '<GetRecoveryInfo-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory_radius_entry_pose_to_req_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radius_entry_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'req_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRecoveryInfo-response>)))
  "Returns string type for a service object of type '<GetRecoveryInfo-response>"
  "hector_nav_msgs/GetRecoveryInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRecoveryInfo-response)))
  "Returns string type for a service object of type 'GetRecoveryInfo-response"
  "hector_nav_msgs/GetRecoveryInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRecoveryInfo-response>)))
  "Returns md5sum for a message object of type '<GetRecoveryInfo-response>"
  "edd6e579a08e5c27f2b7fcfa4c39b7bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRecoveryInfo-response)))
  "Returns md5sum for a message object of type 'GetRecoveryInfo-response"
  "edd6e579a08e5c27f2b7fcfa4c39b7bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRecoveryInfo-response>)))
  "Returns full string definition for message of type '<GetRecoveryInfo-response>"
  (cl:format cl:nil "nav_msgs/Path trajectory_radius_entry_pose_to_req_pose~%geometry_msgs/PoseStamped radius_entry_pose~%geometry_msgs/PoseStamped req_pose~%~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRecoveryInfo-response)))
  "Returns full string definition for message of type 'GetRecoveryInfo-response"
  (cl:format cl:nil "nav_msgs/Path trajectory_radius_entry_pose_to_req_pose~%geometry_msgs/PoseStamped radius_entry_pose~%geometry_msgs/PoseStamped req_pose~%~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRecoveryInfo-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory_radius_entry_pose_to_req_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radius_entry_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'req_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRecoveryInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRecoveryInfo-response
    (cl:cons ':trajectory_radius_entry_pose_to_req_pose (trajectory_radius_entry_pose_to_req_pose msg))
    (cl:cons ':radius_entry_pose (radius_entry_pose msg))
    (cl:cons ':req_pose (req_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRecoveryInfo)))
  'GetRecoveryInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRecoveryInfo)))
  'GetRecoveryInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRecoveryInfo)))
  "Returns string type for a service object of type '<GetRecoveryInfo>"
  "hector_nav_msgs/GetRecoveryInfo")