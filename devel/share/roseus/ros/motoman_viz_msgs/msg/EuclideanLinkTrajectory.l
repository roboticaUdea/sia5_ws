;; Auto-generated. Do not edit!


(when (boundp 'motoman_viz_msgs::EuclideanLinkTrajectory)
  (if (not (find-package "MOTOMAN_VIZ_MSGS"))
    (make-package "MOTOMAN_VIZ_MSGS"))
  (shadow 'EuclideanLinkTrajectory (find-package "MOTOMAN_VIZ_MSGS")))
(unless (find-package "MOTOMAN_VIZ_MSGS::EUCLIDEANLINKTRAJECTORY")
  (make-package "MOTOMAN_VIZ_MSGS::EUCLIDEANLINKTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude EuclideanLinkTrajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass motoman_viz_msgs::EuclideanLinkTrajectory
  :super ros::object
  :slots (_header _link_names _points ))

(defmethod motoman_viz_msgs::EuclideanLinkTrajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:link_names __link_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:points __points) (let (r) (dotimes (i 0) (push (instance motoman_viz_msgs::EuclideanLinkTrajectoryPoint :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _link_names __link_names)
   (setq _points __points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:link_names
   (&optional __link_names)
   (if __link_names (setq _link_names __link_names)) _link_names)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _link_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _link_names)) 4
    ;; motoman_viz_msgs/EuclideanLinkTrajectoryPoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _link_names
     (write-long (length _link_names) s)
     (dolist (elem _link_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; motoman_viz_msgs/EuclideanLinkTrajectoryPoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _link_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _link_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _link_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; motoman_viz_msgs/EuclideanLinkTrajectoryPoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance motoman_viz_msgs::EuclideanLinkTrajectoryPoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get motoman_viz_msgs::EuclideanLinkTrajectory :md5sum-) "3441963936bb9e1e795c3899e3694140")
(setf (get motoman_viz_msgs::EuclideanLinkTrajectory :datatype-) "motoman_viz_msgs/EuclideanLinkTrajectory")
(setf (get motoman_viz_msgs::EuclideanLinkTrajectory :definition-)
      "Header header
string[] link_names
EuclideanLinkTrajectoryPoint[] points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: motoman_viz_msgs/EuclideanLinkTrajectoryPoint
geometry_msgs/Pose[] pose
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



(provide :motoman_viz_msgs/EuclideanLinkTrajectory "3441963936bb9e1e795c3899e3694140")


