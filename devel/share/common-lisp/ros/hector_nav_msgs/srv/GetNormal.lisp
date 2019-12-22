; Auto-generated. Do not edit!


(cl:in-package hector_nav_msgs-srv)


;//! \htmlinclude GetNormal-request.msg.html

(cl:defclass <GetNormal-request> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped)))
)

(cl:defclass GetNormal-request (<GetNormal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNormal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNormal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_nav_msgs-srv:<GetNormal-request> is deprecated: use hector_nav_msgs-srv:GetNormal-request instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <GetNormal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_nav_msgs-srv:point-val is deprecated.  Use hector_nav_msgs-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNormal-request>) ostream)
  "Serializes a message object of type '<GetNormal-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNormal-request>) istream)
  "Deserializes a message object of type '<GetNormal-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNormal-request>)))
  "Returns string type for a service object of type '<GetNormal-request>"
  "hector_nav_msgs/GetNormalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNormal-request)))
  "Returns string type for a service object of type 'GetNormal-request"
  "hector_nav_msgs/GetNormalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNormal-request>)))
  "Returns md5sum for a message object of type '<GetNormal-request>"
  "134adf3dd9201d61a4857acd73cf22f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNormal-request)))
  "Returns md5sum for a message object of type 'GetNormal-request"
  "134adf3dd9201d61a4857acd73cf22f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNormal-request>)))
  "Returns full string definition for message of type '<GetNormal-request>"
  (cl:format cl:nil "geometry_msgs/PointStamped point~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNormal-request)))
  "Returns full string definition for message of type 'GetNormal-request"
  (cl:format cl:nil "geometry_msgs/PointStamped point~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNormal-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNormal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNormal-request
    (cl:cons ':point (point msg))
))
;//! \htmlinclude GetNormal-response.msg.html

(cl:defclass <GetNormal-response> (roslisp-msg-protocol:ros-message)
  ((normal
    :reader normal
    :initarg :normal
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass GetNormal-response (<GetNormal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNormal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNormal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_nav_msgs-srv:<GetNormal-response> is deprecated: use hector_nav_msgs-srv:GetNormal-response instead.")))

(cl:ensure-generic-function 'normal-val :lambda-list '(m))
(cl:defmethod normal-val ((m <GetNormal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_nav_msgs-srv:normal-val is deprecated.  Use hector_nav_msgs-srv:normal instead.")
  (normal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNormal-response>) ostream)
  "Serializes a message object of type '<GetNormal-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'normal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNormal-response>) istream)
  "Deserializes a message object of type '<GetNormal-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'normal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNormal-response>)))
  "Returns string type for a service object of type '<GetNormal-response>"
  "hector_nav_msgs/GetNormalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNormal-response)))
  "Returns string type for a service object of type 'GetNormal-response"
  "hector_nav_msgs/GetNormalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNormal-response>)))
  "Returns md5sum for a message object of type '<GetNormal-response>"
  "134adf3dd9201d61a4857acd73cf22f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNormal-response)))
  "Returns md5sum for a message object of type 'GetNormal-response"
  "134adf3dd9201d61a4857acd73cf22f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNormal-response>)))
  "Returns full string definition for message of type '<GetNormal-response>"
  (cl:format cl:nil "geometry_msgs/Vector3 normal~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNormal-response)))
  "Returns full string definition for message of type 'GetNormal-response"
  (cl:format cl:nil "geometry_msgs/Vector3 normal~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNormal-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'normal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNormal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNormal-response
    (cl:cons ':normal (normal msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetNormal)))
  'GetNormal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetNormal)))
  'GetNormal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNormal)))
  "Returns string type for a service object of type '<GetNormal>"
  "hector_nav_msgs/GetNormal")