
(cl:in-package :asdf)

(defsystem "hector_nav_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "GetDistanceToObstacle" :depends-on ("_package_GetDistanceToObstacle"))
    (:file "_package_GetDistanceToObstacle" :depends-on ("_package"))
    (:file "GetNormal" :depends-on ("_package_GetNormal"))
    (:file "_package_GetNormal" :depends-on ("_package"))
    (:file "GetRecoveryInfo" :depends-on ("_package_GetRecoveryInfo"))
    (:file "_package_GetRecoveryInfo" :depends-on ("_package"))
    (:file "GetRobotTrajectory" :depends-on ("_package_GetRobotTrajectory"))
    (:file "_package_GetRobotTrajectory" :depends-on ("_package"))
    (:file "GetSearchPosition" :depends-on ("_package_GetSearchPosition"))
    (:file "_package_GetSearchPosition" :depends-on ("_package"))
  ))