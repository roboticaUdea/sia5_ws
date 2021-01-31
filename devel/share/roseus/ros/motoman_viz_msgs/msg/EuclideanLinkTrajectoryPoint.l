;; Auto-generated. Do not edit!


(when (boundp 'motoman_viz_msgs::EuclideanLinkTrajectoryPoint)
  (if (not (find-package "MOTOMAN_VIZ_MSGS"))
    (make-package "MOTOMAN_VIZ_MSGS"))
  (shadow 'EuclideanLinkTrajectoryPoint (find-package "MOTOMAN_VIZ_MSGS")))
(unless (find-package "MOTOMAN_VIZ_MSGS::EUCLIDEANLINKTRAJECTORYPOINT")
  (make-package "MOTOMAN_VIZ_MSGS::EUCLIDEANLINKTRAJECTORYPOINT"))

(in-package "ROS")
;;//! \htmlinclude EuclideanLinkTrajectoryPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass motoman_viz_msgs::EuclideanLinkTrajectoryPoint
  :super ros::object
  :slots (_pose _time_from_start ))

(defmethod motoman_viz_msgs::EuclideanLinkTrajectoryPoint
  (:init
   (&key
    ((:pose __pose) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:time_from_start __time_from_start) (instance ros::time :init))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _time_from_start __time_from_start)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:time_from_start
   (&optional __time_from_start)
   (if __time_from_start (setq _time_from_start __time_from_start)) _time_from_start)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose[] _pose
    (apply #'+ (send-all _pose :serialization-length)) 4
    ;; duration _time_from_start
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose[] _pose
     (write-long (length _pose) s)
     (dolist (elem _pose)
       (send elem :serialize s)
       )
     ;; duration _time_from_start
       (write-long (send _time_from_start :sec) s) (write-long (send _time_from_start :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose[] _pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _pose)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; duration _time_from_start
     (send _time_from_start :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_from_start :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get motoman_viz_msgs::EuclideanLinkTrajectoryPoint :md5sum-) "1364aa60c4c43a769a773a5e77276f1f")
(setf (get motoman_viz_msgs::EuclideanLinkTrajectoryPoint :datatype-) "motoman_viz_msgs/EuclideanLinkTrajectoryPoint")
(setf (get motoman_viz_msgs::EuclideanLinkTrajectoryPoint :definition-)
      "geometry_msgs/Pose[] pose
duration time_from_start

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :motoman_viz_msgs/EuclideanLinkTrajectoryPoint "1364aa60c4c43a769a773a5e77276f1f")


