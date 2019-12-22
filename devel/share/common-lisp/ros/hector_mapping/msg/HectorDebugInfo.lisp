; Auto-generated. Do not edit!


(cl:in-package hector_mapping-msg)


;//! \htmlinclude HectorDebugInfo.msg.html

(cl:defclass <HectorDebugInfo> (roslisp-msg-protocol:ros-message)
  ((iterData
    :reader iterData
    :initarg :iterData
    :type (cl:vector hector_mapping-msg:HectorIterData)
   :initform (cl:make-array 0 :element-type 'hector_mapping-msg:HectorIterData :initial-element (cl:make-instance 'hector_mapping-msg:HectorIterData))))
)

(cl:defclass HectorDebugInfo (<HectorDebugInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HectorDebugInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HectorDebugInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_mapping-msg:<HectorDebugInfo> is deprecated: use hector_mapping-msg:HectorDebugInfo instead.")))

(cl:ensure-generic-function 'iterData-val :lambda-list '(m))
(cl:defmethod iterData-val ((m <HectorDebugInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_mapping-msg:iterData-val is deprecated.  Use hector_mapping-msg:iterData instead.")
  (iterData m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HectorDebugInfo>) ostream)
  "Serializes a message object of type '<HectorDebugInfo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'iterData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'iterData))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HectorDebugInfo>) istream)
  "Deserializes a message object of type '<HectorDebugInfo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'iterData) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'iterData)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hector_mapping-msg:HectorIterData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HectorDebugInfo>)))
  "Returns string type for a message object of type '<HectorDebugInfo>"
  "hector_mapping/HectorDebugInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HectorDebugInfo)))
  "Returns string type for a message object of type 'HectorDebugInfo"
  "hector_mapping/HectorDebugInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HectorDebugInfo>)))
  "Returns md5sum for a message object of type '<HectorDebugInfo>"
  "4d33c0696c0c536f5c1447c260756674")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HectorDebugInfo)))
  "Returns md5sum for a message object of type 'HectorDebugInfo"
  "4d33c0696c0c536f5c1447c260756674")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HectorDebugInfo>)))
  "Returns full string definition for message of type '<HectorDebugInfo>"
  (cl:format cl:nil "HectorIterData[] iterData~%================================================================================~%MSG: hector_mapping/HectorIterData~%float64[9] hessian~%float64 conditionNum~%float64 determinant~%float64 conditionNum2d~%float64 determinant2d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HectorDebugInfo)))
  "Returns full string definition for message of type 'HectorDebugInfo"
  (cl:format cl:nil "HectorIterData[] iterData~%================================================================================~%MSG: hector_mapping/HectorIterData~%float64[9] hessian~%float64 conditionNum~%float64 determinant~%float64 conditionNum2d~%float64 determinant2d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HectorDebugInfo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'iterData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HectorDebugInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'HectorDebugInfo
    (cl:cons ':iterData (iterData msg))
))
