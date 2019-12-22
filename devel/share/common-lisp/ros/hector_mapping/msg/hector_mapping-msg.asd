
(cl:in-package :asdf)

(defsystem "hector_mapping-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "HectorDebugInfo" :depends-on ("_package_HectorDebugInfo"))
    (:file "_package_HectorDebugInfo" :depends-on ("_package"))
    (:file "HectorIterData" :depends-on ("_package_HectorIterData"))
    (:file "_package_HectorIterData" :depends-on ("_package"))
  ))