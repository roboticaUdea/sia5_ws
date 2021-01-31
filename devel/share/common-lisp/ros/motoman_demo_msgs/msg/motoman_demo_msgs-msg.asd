
(cl:in-package :asdf)

(defsystem "motoman_demo_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :moveit_msgs-msg
)
  :components ((:file "_package")
    (:file "HandringPlan" :depends-on ("_package_HandringPlan"))
    (:file "_package_HandringPlan" :depends-on ("_package"))
  ))