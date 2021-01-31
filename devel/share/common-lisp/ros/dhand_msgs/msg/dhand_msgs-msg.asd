
(cl:in-package :asdf)

(defsystem "dhand_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Servo_move" :depends-on ("_package_Servo_move"))
    (:file "_package_Servo_move" :depends-on ("_package"))
  ))