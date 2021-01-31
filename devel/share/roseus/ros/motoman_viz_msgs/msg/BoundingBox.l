;; Auto-generated. Do not edit!


(when (boundp 'motoman_viz_msgs::BoundingBox)
  (if (not (find-package "MOTOMAN_VIZ_MSGS"))
    (make-package "MOTOMAN_VIZ_MSGS"))
  (shadow 'BoundingBox (find-package "MOTOMAN_VIZ_MSGS")))
(unless (find-package "MOTOMAN_VIZ_MSGS::BOUNDINGBOX")
  (make-package "MOTOMAN_VIZ_MSGS::BOUNDINGBOX"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass motoman_viz_msgs::BoundingBox
  :super ros::object
  :slots (_header _pose _dimensions _value _label _tag ))

(defmethod motoman_viz_msgs::BoundingBox
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:dimensions __dimensions) (instance geometry_msgs::Vector3 :init))
    ((:value __value) 0.0)
    ((:label __label) 0)
    ((:tag __tag) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   (setq _dimensions __dimensions)
   (setq _value (float __value))
   (setq _label (round __label))
   (setq _tag (string __tag))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:dimensions
   (&rest __dimensions)
   (if (keywordp (car __dimensions))
       (send* _dimensions __dimensions)
     (progn
       (if __dimensions (setq _dimensions (car __dimensions)))
       _dimensions)))
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:tag
   (&optional __tag)
   (if __tag (setq _tag __tag)) _tag)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Vector3 _dimensions
    (send _dimensions :serialization-length)
    ;; float32 _value
    4
    ;; uint32 _label
    4
    ;; string _tag
    4 (length _tag)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Vector3 _dimensions
       (send _dimensions :serialize s)
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _label
       (write-long _label s)
     ;; string _tag
       (write-long (length _tag) s) (princ _tag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Vector3 _dimensions
     (send _dimensions :deserialize buf ptr-) (incf ptr- (send _dimensions :serialization-length))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _label
     (setq _label (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _tag
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tag (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get motoman_viz_msgs::BoundingBox :md5sum-) "175c212e9a1ca694d494652a57a735dc")
(setf (get motoman_viz_msgs::BoundingBox :datatype-) "motoman_viz_msgs/BoundingBox")
(setf (get motoman_viz_msgs::BoundingBox :definition-)
      "# BoundingBox represents a oriented bounding box.
Header header
geometry_msgs/Pose pose
geometry_msgs/Vector3 dimensions  # size of bounding box (x, y, z)
# You can use this field to hold value such as likelihood
float32 value
uint32 label
string tag

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

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :motoman_viz_msgs/BoundingBox "175c212e9a1ca694d494652a57a735dc")


