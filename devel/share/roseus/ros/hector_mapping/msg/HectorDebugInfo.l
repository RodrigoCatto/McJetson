;; Auto-generated. Do not edit!


(when (boundp 'hector_mapping::HectorDebugInfo)
  (if (not (find-package "HECTOR_MAPPING"))
    (make-package "HECTOR_MAPPING"))
  (shadow 'HectorDebugInfo (find-package "HECTOR_MAPPING")))
(unless (find-package "HECTOR_MAPPING::HECTORDEBUGINFO")
  (make-package "HECTOR_MAPPING::HECTORDEBUGINFO"))

(in-package "ROS")
;;//! \htmlinclude HectorDebugInfo.msg.html


(defclass hector_mapping::HectorDebugInfo
  :super ros::object
  :slots (_iterData ))

(defmethod hector_mapping::HectorDebugInfo
  (:init
   (&key
    ((:iterData __iterData) (let (r) (dotimes (i 0) (push (instance hector_mapping::HectorIterData :init) r)) r))
    )
   (send-super :init)
   (setq _iterData __iterData)
   self)
  (:iterData
   (&rest __iterData)
   (if (keywordp (car __iterData))
       (send* _iterData __iterData)
     (progn
       (if __iterData (setq _iterData (car __iterData)))
       _iterData)))
  (:serialization-length
   ()
   (+
    ;; hector_mapping/HectorIterData[] _iterData
    (apply #'+ (send-all _iterData :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; hector_mapping/HectorIterData[] _iterData
     (write-long (length _iterData) s)
     (dolist (elem _iterData)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; hector_mapping/HectorIterData[] _iterData
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _iterData (let (r) (dotimes (i n) (push (instance hector_mapping::HectorIterData :init) r)) r))
     (dolist (elem- _iterData)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hector_mapping::HectorDebugInfo :md5sum-) "4d33c0696c0c536f5c1447c260756674")
(setf (get hector_mapping::HectorDebugInfo :datatype-) "hector_mapping/HectorDebugInfo")
(setf (get hector_mapping::HectorDebugInfo :definition-)
      "HectorIterData[] iterData
================================================================================
MSG: hector_mapping/HectorIterData
float64[9] hessian
float64 conditionNum
float64 determinant
float64 conditionNum2d
float64 determinant2d

")



(provide :hector_mapping/HectorDebugInfo "4d33c0696c0c536f5c1447c260756674")


