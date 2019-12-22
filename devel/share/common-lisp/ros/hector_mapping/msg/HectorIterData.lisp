; Auto-generated. Do not edit!


(cl:in-package hector_mapping-msg)


;//! \htmlinclude HectorIterData.msg.html

(cl:defclass <HectorIterData> (roslisp-msg-protocol:ros-message)
  ((hessian
    :reader hessian
    :initarg :hessian
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (conditionNum
    :reader conditionNum
    :initarg :conditionNum
    :type cl:float
    :initform 0.0)
   (determinant
    :reader determinant
    :initarg :determinant
    :type cl:float
    :initform 0.0)
   (conditionNum2d
    :reader conditionNum2d
    :initarg :conditionNum2d
    :type cl:float
    :initform 0.0)
   (determinant2d
    :reader determinant2d
    :initarg :determinant2d
    :type cl:float
    :initform 0.0))
)

(cl:defclass HectorIterData (<HectorIterData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HectorIterData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HectorIterData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_mapping-msg:<HectorIterData> is deprecated: use hector_mapping-msg:HectorIterData instead.")))

(cl:ensure-generic-function 'hessian-val :lambda-list '(m))
(cl:defmethod hessian-val ((m <HectorIterData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_mapping-msg:hessian-val is deprecated.  Use hector_mapping-msg:hessian instead.")
  (hessian m))

(cl:ensure-generic-function 'conditionNum-val :lambda-list '(m))
(cl:defmethod conditionNum-val ((m <HectorIterData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_mapping-msg:conditionNum-val is deprecated.  Use hector_mapping-msg:conditionNum instead.")
  (conditionNum m))

(cl:ensure-generic-function 'determinant-val :lambda-list '(m))
(cl:defmethod determinant-val ((m <HectorIterData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_mapping-msg:determinant-val is deprecated.  Use hector_mapping-msg:determinant instead.")
  (determinant m))

(cl:ensure-generic-function 'conditionNum2d-val :lambda-list '(m))
(cl:defmethod conditionNum2d-val ((m <HectorIterData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_mapping-msg:conditionNum2d-val is deprecated.  Use hector_mapping-msg:conditionNum2d instead.")
  (conditionNum2d m))

(cl:ensure-generic-function 'determinant2d-val :lambda-list '(m))
(cl:defmethod determinant2d-val ((m <HectorIterData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_mapping-msg:determinant2d-val is deprecated.  Use hector_mapping-msg:determinant2d instead.")
  (determinant2d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HectorIterData>) ostream)
  "Serializes a message object of type '<HectorIterData>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'hessian))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'conditionNum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'determinant))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'conditionNum2d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'determinant2d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HectorIterData>) istream)
  "Deserializes a message object of type '<HectorIterData>"
  (cl:setf (cl:slot-value msg 'hessian) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'hessian)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'conditionNum) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'determinant) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'conditionNum2d) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'determinant2d) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HectorIterData>)))
  "Returns string type for a message object of type '<HectorIterData>"
  "hector_mapping/HectorIterData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HectorIterData)))
  "Returns string type for a message object of type 'HectorIterData"
  "hector_mapping/HectorIterData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HectorIterData>)))
  "Returns md5sum for a message object of type '<HectorIterData>"
  "ecedaa7e26b5fc817a1add44c17fec5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HectorIterData)))
  "Returns md5sum for a message object of type 'HectorIterData"
  "ecedaa7e26b5fc817a1add44c17fec5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HectorIterData>)))
  "Returns full string definition for message of type '<HectorIterData>"
  (cl:format cl:nil "float64[9] hessian~%float64 conditionNum~%float64 determinant~%float64 conditionNum2d~%float64 determinant2d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HectorIterData)))
  "Returns full string definition for message of type 'HectorIterData"
  (cl:format cl:nil "float64[9] hessian~%float64 conditionNum~%float64 determinant~%float64 conditionNum2d~%float64 determinant2d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HectorIterData>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'hessian) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HectorIterData>))
  "Converts a ROS message object to a list"
  (cl:list 'HectorIterData
    (cl:cons ':hessian (hessian msg))
    (cl:cons ':conditionNum (conditionNum msg))
    (cl:cons ':determinant (determinant msg))
    (cl:cons ':conditionNum2d (conditionNum2d msg))
    (cl:cons ':determinant2d (determinant2d msg))
))
