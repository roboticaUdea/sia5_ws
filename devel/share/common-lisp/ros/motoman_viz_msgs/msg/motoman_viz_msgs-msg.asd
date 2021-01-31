
(cl:in-package :asdf)

(defsystem "motoman_viz_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BoundingBox" :depends-on ("_package_BoundingBox"))
    (:file "_package_BoundingBox" :depends-on ("_package"))
    (:file "BoundingBoxArray" :depends-on ("_package_BoundingBoxArray"))
    (:file "_package_BoundingBoxArray" :depends-on ("_package"))
    (:file "EuclideanLinkTrajectory" :depends-on ("_package_EuclideanLinkTrajectory"))
    (:file "_package_EuclideanLinkTrajectory" :depends-on ("_package"))
    (:file "EuclideanLinkTrajectoryPoint" :depends-on ("_package_EuclideanLinkTrajectoryPoint"))
    (:file "_package_EuclideanLinkTrajectoryPoint" :depends-on ("_package"))
  ))