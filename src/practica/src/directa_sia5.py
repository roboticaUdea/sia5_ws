#!/usr/bin/env python

import rospy
from sensor_msgs.msg import JointState
from helpers import *

pi = np.pi

if __name__ == "__main__":
    # starting node
    rospy.init_node("sendJointsNode")
    pub = rospy.Publisher('joint_states', JointState, queue_size=1000)
    bmarker = BallMarker(color['RED'])

    # Joint names
    jnames = ('joint_s', 'joint_l', 'joint_e', 'joint_u', 'joint_r', 'joint_b', 'joint_t')

    # Joint configuration (in radians)
    q = [0, 0, 0, 0, 0, 0, 0]
    
    # Direct kinematics for joint configuration (end effector with respect 
    # to link 0 which is different from the robot base itself, in this case)
    T0e = forward_kinematics(q)
    print np.round(T0e,3)

    # Have Tf show the position relative to the robot base and not just the manipulator base
    Tf = T0e
    bmarker.position(Tf)
    print np.round(Tf,3)
    
    # ========================================================================


    # Object (message) of type JointState
    jstate = JointState()
    # Assign values to the message
    jstate.header.stamp = rospy.Time.now()
    jstate.name = jnames
    jstate.position = q

    # Loop rate (in Hz)
    rate = rospy.Rate(100)
    # Continuous execution loop
    while not rospy.is_shutdown():
        # Current time (needed for ROS)
        jstate.header.stamp = rospy.Time.now()
        # Publish the message
        pub.publish(jstate)
        bmarker.publish()
        # Wait for the next iteration
        rate.sleep()
