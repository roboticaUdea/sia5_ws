; Auto-generated. Do not edit!


(cl:in-package motoman_viz_msgs-msg)


;//! \htmlinclude EuclideanLinkTrajectoryPoint.msg.html

(cl:defclass <EuclideanLinkTrajectoryPoint> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (time_from_start
    :reader time_from_start
    :initarg :time_from_start
    :type cl:real
    :initform 0))
)

(cl:defclass EuclideanLinkTrajectoryPoint (<EuclideanLinkTrajectoryPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EuclideanLinkTrajectoryPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EuclideanLinkTrajectoryPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motoman_viz_msgs-msg:<EuclideanLinkTrajectoryPoint> is deprecated: use motoman_viz_msgs-msg:EuclideanLinkTrajectoryPoint instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <EuclideanLinkTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motoman_viz_msgs-msg:pose-val is deprecated.  Use motoman_viz_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'time_from_start-val :lambda-list '(m))
(cl:defmethod time_from_start-val ((m <EuclideanLinkTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motoman_viz_msgs-msg:time_from_start-val is deprecated.  Use motoman_viz_msgs-msg:time_from_start instead.")
  (time_from_start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EuclideanLinkTrajectoryPoint>) ostream)
  "Serializes a message object of type '<EuclideanLinkTrajectoryPoint>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_from_start)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_from_start) (cl:floor (cl:slot-value msg 'time_from_start)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EuclideanLinkTrajectoryPoint>) istream)
  "Deserializes a message object of type '<EuclideanLinkTrajectoryPoint>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_from_start) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EuclideanLinkTrajectoryPoint>)))
  "Returns string type for a message object of type '<EuclideanLinkTrajectoryPoint>"
  "motoman_viz_msgs/EuclideanLinkTrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EuclideanLinkTrajectoryPoint)))
  "Returns string type for a message object of type 'EuclideanLinkTrajectoryPoint"
  "motoman_viz_msgs/EuclideanLinkTrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EuclideanLinkTrajectoryPoint>)))
  "Returns md5sum for a message object of type '<EuclideanLinkTrajectoryPoint>"
  "1364aa60c4c43a769a773a5e77276f1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EuclideanLinkTrajectoryPoint)))
  "Returns md5sum for a message object of type 'EuclideanLinkTrajectoryPoint"
  "1364aa60c4c43a769a773a5e77276f1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EuclideanLinkTrajectoryPoint>)))
  "Returns full string definition for message of type '<EuclideanLinkTrajectoryPoint>"
  (cl:format cl:nil "geometry_msgs/Pose[] pose~%duration time_from_start~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EuclideanLinkTrajectoryPoint)))
  "Returns full string definition for message of type 'EuclideanLinkTrajectoryPoint"
  (cl:format cl:nil "geometry_msgs/Pose[] pose~%duration time_from_start~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EuclideanLinkTrajectoryPoint>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EuclideanLinkTrajectoryPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'EuclideanLinkTrajectoryPoint
    (cl:cons ':pose (pose msg))
    (cl:cons ':time_from_start (time_from_start msg))
))
