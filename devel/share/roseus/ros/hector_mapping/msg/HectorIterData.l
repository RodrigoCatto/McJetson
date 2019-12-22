;; Auto-generated. Do not edit!


(when (boundp 'hector_mapping::HectorIterData)
  (if (not (find-package "HECTOR_MAPPING"))
    (make-package "HECTOR_MAPPING"))
  (shadow 'HectorIterData (find-package "HECTOR_MAPPING")))
(unless (find-package "HECTOR_MAPPING::HECTORITERDATA")
  (make-package "HECTOR_MAPPING::HECTORITERDATA"))

(in-package "ROS")
;;//! \htmlinclude HectorIterData.msg.html


(defclass hector_mapping::HectorIterData
  :super ros::object
  :slots (_hessian _conditionNum _determinant _conditionNum2d _determinant2d ))

(defmethod hector_mapping::HectorIterData
  (:init
   (&key
    ((:hessian __hessian) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:conditionNum __conditionNum) 0.0)
    ((:determinant __determinant) 0.0)
    ((:conditionNum2d __conditionNum2d) 0.0)
    ((:determinant2d __determinant2d) 0.0)
    )
   (send-super :init)
   (setq _hessian __hessian)
   (setq _conditionNum (float __conditionNum))
   (setq _determinant (float __determinant))
   (setq _conditionNum2d (float __conditionNum2d))
   (setq _determinant2d (float __determinant2d))
   self)
  (:hessian
   (&optional __hessian)
   (if __hessian (setq _hessian __hessian)) _hessian)
  (:conditionNum
   (&optional __conditionNum)
   (if __conditionNum (setq _conditionNum __conditionNum)) _conditionNum)
  (:determinant
   (&optional __determinant)
   (if __determinant (setq _determinant __determinant)) _determinant)
  (:conditionNum2d
   (&optional __conditionNum2d)
   (if __conditionNum2d (setq _conditionNum2d __conditionNum2d)) _conditionNum2d)
  (:determinant2d
   (&optional __determinant2d)
   (if __determinant2d (setq _determinant2d __determinant2d)) _determinant2d)
  (:serialization-length
   ()
   (+
    ;; float64[9] _hessian
    (* 8    9)
    ;; float64 _conditionNum
    8
    ;; float64 _determinant
    8
    ;; float64 _conditionNum2d
    8
    ;; float64 _determinant2d
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[9] _hessian
     (dotimes (i 9)
       (sys::poke (elt _hessian i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _conditionNum
       (sys::poke _conditionNum (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _determinant
       (sys::poke _determinant (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _conditionNum2d
       (sys::poke _conditionNum2d (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _determinant2d
       (sys::poke _determinant2d (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[9] _hessian
   (dotimes (i (length _hessian))
     (setf (elt _hessian i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _conditionNum
     (setq _conditionNum (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _determinant
     (setq _determinant (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _conditionNum2d
     (setq _conditionNum2d (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _determinant2d
     (setq _determinant2d (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hector_mapping::HectorIterData :md5sum-) "ecedaa7e26b5fc817a1add44c17fec5f")
(setf (get hector_mapping::HectorIterData :datatype-) "hector_mapping/HectorIterData")
(setf (get hector_mapping::HectorIterData :definition-)
      "float64[9] hessian
float64 conditionNum
float64 determinant
float64 conditionNum2d
float64 determinant2d

")



(provide :hector_mapping/HectorIterData "ecedaa7e26b5fc817a1add44c17fec5f")


