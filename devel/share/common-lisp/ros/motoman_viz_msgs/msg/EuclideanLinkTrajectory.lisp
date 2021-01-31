; Auto-generated. Do not edit!


(cl:in-package motoman_viz_msgs-msg)


;//! \htmlinclude EuclideanLinkTrajectory.msg.html

(cl:defclass <EuclideanLinkTrajectory> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (link_names
    :reader link_names
    :initarg :link_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (points
    :reader points
    :initarg :points
    :type (cl:vector motoman_viz_msgs-msg:EuclideanLinkTrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'motoman_viz_msgs-msg:EuclideanLinkTrajectoryPoint :initial-element (cl:make-instance 'motoman_viz_msgs-msg:EuclideanLinkTrajectoryPoint))))
)

(cl:defclass EuclideanLinkTrajectory (<EuclideanLinkTrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EuclideanLinkTrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EuclideanLinkTrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motoman_viz_msgs-msg:<EuclideanLinkTrajectory> is deprecated: use motoman_viz_msgs-msg:EuclideanLinkTrajectory instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <EuclideanLinkTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motoman_viz_msgs-msg:header-val is deprecated.  Use motoman_viz_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'link_names-val :lambda-list '(m))
(cl:defmethod link_names-val ((m <EuclideanLinkTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motoman_viz_msgs-msg:link_names-val is deprecated.  Use motoman_viz_msgs-msg:link_names instead.")
  (link_names m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <EuclideanLinkTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motoman_viz_msgs-msg:points-val is deprecated.  Use motoman_viz_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EuclideanLinkTrajectory>) ostream)
  "Serializes a message object of type '<EuclideanLinkTrajectory>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'link_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'link_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EuclideanLinkTrajectory>) istream)
  "Deserializes a message object of type '<EuclideanLinkTrajectory>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'link_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'link_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'motoman_viz_msgs-msg:EuclideanLinkTrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EuclideanLinkTrajectory>)))
  "Returns string type for a message object of type '<EuclideanLinkTrajectory>"
  "motoman_viz_msgs/EuclideanLinkTrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EuclideanLinkTrajectory)))
  "Returns string type for a message object of type 'EuclideanLinkTrajectory"
  "motoman_viz_msgs/EuclideanLinkTrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EuclideanLinkTrajectory>)))
  "Returns md5sum for a message object of type '<EuclideanLinkTrajectory>"
  "3441963936bb9e1e795c3899e3694140")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EuclideanLinkTrajectory)))
  "Returns md5sum for a message object of type 'EuclideanLinkTrajectory"
  "3441963936bb9e1e795c3899e3694140")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EuclideanLinkTrajectory>)))
  "Returns full string definition for message of type '<EuclideanLinkTrajectory>"
  (cl:format cl:nil "Header header~%string[] link_names~%EuclideanLinkTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: motoman_viz_msgs/EuclideanLinkTrajectoryPoint~%geometry_msgs/Pose[] pose~%duration time_from_start~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EuclideanLinkTrajectory)))
  "Returns full string definition for message of type 'EuclideanLinkTrajectory"
  (cl:format cl:nil "Header header~%string[] link_names~%EuclideanLinkTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: motoman_viz_msgs/EuclideanLinkTrajectoryPoint~%geometry_msgs/Pose[] pose~%duration time_from_start~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EuclideanLinkTrajectory>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'link_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EuclideanLinkTrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'EuclideanLinkTrajectory
    (cl:cons ':header (header msg))
    (cl:cons ':link_names (link_names msg))
    (cl:cons ':points (points msg))
))
