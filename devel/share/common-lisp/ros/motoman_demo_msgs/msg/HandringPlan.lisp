; Auto-generated. Do not edit!


(cl:in-package motoman_demo_msgs-msg)


;//! \htmlinclude HandringPlan.msg.html

(cl:defclass <HandringPlan> (roslisp-msg-protocol:ros-message)
  ((grasp
    :reader grasp
    :initarg :grasp
    :type cl:boolean
    :initform cl:nil)
   (trajectory
    :reader trajectory
    :initarg :trajectory
    :type moveit_msgs-msg:RobotTrajectory
    :initform (cl:make-instance 'moveit_msgs-msg:RobotTrajectory)))
)

(cl:defclass HandringPlan (<HandringPlan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HandringPlan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HandringPlan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motoman_demo_msgs-msg:<HandringPlan> is deprecated: use motoman_demo_msgs-msg:HandringPlan instead.")))

(cl:ensure-generic-function 'grasp-val :lambda-list '(m))
(cl:defmethod grasp-val ((m <HandringPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motoman_demo_msgs-msg:grasp-val is deprecated.  Use motoman_demo_msgs-msg:grasp instead.")
  (grasp m))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <HandringPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motoman_demo_msgs-msg:trajectory-val is deprecated.  Use motoman_demo_msgs-msg:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HandringPlan>) ostream)
  "Serializes a message object of type '<HandringPlan>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'grasp) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HandringPlan>) istream)
  "Deserializes a message object of type '<HandringPlan>"
    (cl:setf (cl:slot-value msg 'grasp) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HandringPlan>)))
  "Returns string type for a message object of type '<HandringPlan>"
  "motoman_demo_msgs/HandringPlan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HandringPlan)))
  "Returns string type for a message object of type 'HandringPlan"
  "motoman_demo_msgs/HandringPlan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HandringPlan>)))
  "Returns md5sum for a message object of type '<HandringPlan>"
  "07b213a5956f6d80edce90d54e71a80a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HandringPlan)))
  "Returns md5sum for a message object of type 'HandringPlan"
  "07b213a5956f6d80edce90d54e71a80a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HandringPlan>)))
  "Returns full string definition for message of type '<HandringPlan>"
  (cl:format cl:nil "bool grasp~%moveit_msgs/RobotTrajectory trajectory~%~%================================================================================~%MSG: moveit_msgs/RobotTrajectory~%trajectory_msgs/JointTrajectory joint_trajectory~%trajectory_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectory~%# The header is used to specify the coordinate frame and the reference time for the trajectory durations~%Header header~%~%# A representation of a multi-dof joint trajectory (each point is a transformation)~%# Each point along the trajectory will include an array of positions/velocities/accelerations~%# that has the same length as the array of joint names, and has the same order of joints as ~%# the joint names array.~%~%string[] joint_names~%MultiDOFJointTrajectoryPoint[] points~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint~%# Each multi-dof joint can specify a transform (up to 6 DOF)~%geometry_msgs/Transform[] transforms~%~%# There can be a velocity specified for the origin of the joint ~%geometry_msgs/Twist[] velocities~%~%# There can be an acceleration specified for the origin of the joint ~%geometry_msgs/Twist[] accelerations~%~%duration time_from_start~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HandringPlan)))
  "Returns full string definition for message of type 'HandringPlan"
  (cl:format cl:nil "bool grasp~%moveit_msgs/RobotTrajectory trajectory~%~%================================================================================~%MSG: moveit_msgs/RobotTrajectory~%trajectory_msgs/JointTrajectory joint_trajectory~%trajectory_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectory~%# The header is used to specify the coordinate frame and the reference time for the trajectory durations~%Header header~%~%# A representation of a multi-dof joint trajectory (each point is a transformation)~%# Each point along the trajectory will include an array of positions/velocities/accelerations~%# that has the same length as the array of joint names, and has the same order of joints as ~%# the joint names array.~%~%string[] joint_names~%MultiDOFJointTrajectoryPoint[] points~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint~%# Each multi-dof joint can specify a transform (up to 6 DOF)~%geometry_msgs/Transform[] transforms~%~%# There can be a velocity specified for the origin of the joint ~%geometry_msgs/Twist[] velocities~%~%# There can be an acceleration specified for the origin of the joint ~%geometry_msgs/Twist[] accelerations~%~%duration time_from_start~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HandringPlan>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HandringPlan>))
  "Converts a ROS message object to a list"
  (cl:list 'HandringPlan
    (cl:cons ':grasp (grasp msg))
    (cl:cons ':trajectory (trajectory msg))
))
