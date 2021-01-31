;; Auto-generated. Do not edit!


(when (boundp 'dhand_msgs::Servo_move)
  (if (not (find-package "DHAND_MSGS"))
    (make-package "DHAND_MSGS"))
  (shadow 'Servo_move (find-package "DHAND_MSGS")))
(unless (find-package "DHAND_MSGS::SERVO_MOVE")
  (make-package "DHAND_MSGS::SERVO_MOVE"))

(in-package "ROS")
;;//! \htmlinclude Servo_move.msg.html


(defclass dhand_msgs::Servo_move
  :super ros::object
  :slots (_position _speed _acceleration _current_limit ))

(defmethod dhand_msgs::Servo_move
  (:init
   (&key
    ((:position __position) 0.0)
    ((:speed __speed) 0.0)
    ((:acceleration __acceleration) 0.0)
    ((:current_limit __current_limit) 0.0)
    )
   (send-super :init)
   (setq _position (float __position))
   (setq _speed (float __speed))
   (setq _acceleration (float __acceleration))
   (setq _current_limit (float __current_limit))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:current_limit
   (&optional __current_limit)
   (if __current_limit (setq _current_limit __current_limit)) _current_limit)
  (:serialization-length
   ()
   (+
    ;; float64 _position
    8
    ;; float64 _speed
    8
    ;; float64 _acceleration
    8
    ;; float64 _current_limit
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _position
       (sys::poke _position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_limit
       (sys::poke _current_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _position
     (setq _position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acceleration
     (setq _acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_limit
     (setq _current_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get dhand_msgs::Servo_move :md5sum-) "f4d227c5ad8478d7a617baffca61e782")
(setf (get dhand_msgs::Servo_move :datatype-) "dhand_msgs/Servo_move")
(setf (get dhand_msgs::Servo_move :definition-)
      "float64 position
float64 speed
float64 acceleration
float64 current_limit

")



(provide :dhand_msgs/Servo_move "f4d227c5ad8478d7a617baffca61e782")


