#!/usr/bin/env python

# Copyright (c) 2015, Fetch Robotics Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of the Fetch Robotics Inc. nor the names of its
#       contributors may be used to endorse or promote products derived from
#       this software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL FETCH ROBOTICS INC. BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
# THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

# Author: Michael Ferguson

"""

Objective of this code:
Three cubes of different colors will be moved that are scattered on the table, in order to organize them in a row.

"""

import sys

from sensor_msgs.msg import JointState
from helpers import *

import rospy
import actionlib
from control_msgs.msg import (FollowJointTrajectoryAction,
                              FollowJointTrajectoryGoal,
                              GripperCommandAction,
                              GripperCommandGoal)
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint


def forward_kinematics(q):
   """
   Direct kinematics of the robot
   """

   # Arrays DH
   T1 = dh(0.310, q[0], 0, pi/2)
   T2 = dh(0, pi-q[1], 0, pi/2)
   T3 = dh(0.270, pi+q[2], 0.085, pi/2)
   T4 = dh(0,-pi/2+q[3], -0.060, pi/2)
   T5 = dh(-0.270, pi+q[4], 0, pi/2)
   T6 = dh(0.0, pi+q[5], 0, pi/2)
   T7 = dh(-0.435, q[6], 0, 0)
   Ttotal = np.dot(np.dot(np.dot(np.dot(np.dot(np.dot(T1,T2),T3),T4),T5),T6),T7)

   return Ttotal

def jacobian_ur5(q, delta=0.0001):
   """
   Analytical Jacobian for position. Returns a 3x6 matrix and takes 
   as input configuration vector q=[q1, q2, q3, q4, q5, q6, q7]
 
   """
   # Memory allocation
   J = np.zeros((3,7))
   # Initial homogeneous transformation (using q)
   TH = forward_kinematics(q)
   TH_aux1=np.array(TH)
   # Iteration for the derivative of each column
   for i in xrange(7):
       # Copy the initial joint configuration
       dq = copy(q)
       # Increase the i-th joint using a delta
       dq[i] = dq[i]+delta
       # Homogeneous transformation after increment (q+dq)
       TH_inc=forward_kinematics(dq)
       # Approximation of the Jacobian of position using finite differences
       TH_aux2=np.array(TH_inc)
       for k in xrange(3):
           J[k,i]=(TH_aux2[k,3]-TH_aux1[k,3])/delta
   return J

# inverse kinematics
def ikine_ur5(xdes, q0):
  
   epsilon  = 0.001
   max_iter = 1000
   delta    = 0.00001
 
   q  = copy(q0)
   for i in range(max_iter):
        # Main loop
        fun_ini=np.array(forward_kinematics(q))
        dif=jacobian_ur5(q,delta)  
            
        err=xdes-fun_ini[0:3,3]
        q=q+np.dot(np.linalg.pinv(dif),err)

        #joint limits in the calculation
        while(not((q[0]>-pi and q[0]<=pi)and(q[1]>-pi and q[1]<=pi)and(q[2]>-pi and q[2]<=pi)and(q[3]>-pi and q[3]<=pi)and(q[4]>-pi and q[4]<=pi)and(q[5]>-pi and q[5]<=pi)and(q[6]>-pi and q[6]<=pi))):
            # Main loop
            #current function value
            aux2=np.array(forward_kinematics(q)) 
            #first difference 
            dif=jacobian_ur5(q,delta)   
            
            err=xdes-aux2[0:3,3]
            q=q+np.dot(np.linalg.pinv(dif),err)
            q= q%(2*pi)+0.1-2*pi
    
        if (np.linalg.norm(err) < epsilon):
            break
                
   return q

arm_joint_names1 = ['joint_s', 'joint_l', 'joint_e', 'joint_u', 'joint_r', 'joint_b', 'joint_t', 
                "dhand_finger_base_left_joint", "dhand_finger_base_right_joint", "dhand_finger_middle_left_joint", 
                "dhand_finger_middle_middle_joint", "dhand_finger_middle_right_joint", "dhand_finger_top_left_joint", 
                "dhand_finger_top_middle_joint", "dhand_finger_top_right_joint"]

arm_joint_names = ['joint_s', 'joint_l', 'joint_e', 'joint_u', 'joint_r', 'joint_b', 'joint_t']

arm_intermediate_positions  = [0.0, -0.62, 0, 0, 0.0, 0.62, 0.0]
pos_mesa  = [0.0, -0.62, 0, 0.0, 0.0, 0.62, 0.5]
arm_joint_positions  = [0.0, -0.62, 0, 0, 0.0, 1.0, 0.0]


dhand_joint_names = ["dhand_finger_base_left_joint", "dhand_finger_base_right_joint", "dhand_finger_middle_left_joint", 
                    "dhand_finger_middle_middle_joint", "dhand_finger_middle_right_joint", "dhand_finger_top_left_joint", 
                    "dhand_finger_top_middle_joint", "dhand_finger_top_right_joint"]


if __name__ == "__main__":
    rospy.init_node("prepare_simulated_robot_pick_place")

    # Check robot serial number, we never want to run this on a real robot!
    if rospy.get_param("robot/serial") != "ABCDEFGHIJKLMNOPQRSTUVWX":
        rospy.logerr("This script should not be run on a real robot")
        sys.exit(-1)

    rospy.loginfo("Waiting for arm_controller...")
    arm_client = actionlib.SimpleActionClient("sia5_controller/follow_joint_trajectory", FollowJointTrajectoryAction)
    arm_client.wait_for_server()
    rospy.loginfo("...connected.")


    z = 0.1
    # Desired position
    xd1 = np.array([-0.2, 0.34, z])
    xd2m = np.array([0.0, 0.34, z])
    xd2 = np.array([0.2, 0.34, z])
    xd2up = np.array([0.2, 0.34, z+0.1])
    xd3 = np.array([0.225, 0.45, z])
    xd4m = np.array([0, 0.45, z])
    xd4 = np.array([-0.2, 0.45, z])
    xd4up = np.array([-0.2, 0.45, z+0.1])
    xd5 = np.array([-0.224, 0.435, z])
    xd6 = np.array([-0.224, 0.34, z])
    xd6up = np.array([-0.224, 0.34, z+0.1])
    xd7 = np.array([0.0, 0.64, z+0.01])
    xd8 = np.array([0.0, 0.34, z+0.01])
    xd8up = np.array([0.0, 0.34, z+0.1])
    
    # Default configuration
    q0 = [1.57, 0, 0, 0, 0, 0, 0.0]
    qa = [2.08, 0, 0, 0, 0, -1.57, 0]
    qb = [2.12, 0.05, 0, 0, 0, -1.47, 1]
    qyell = [1.09, 0.4, 0, 0.4, 0, -1.47, -1]
    qyell2 = [2.04, 0.4, 0, 0.42, 0, -1.52, -0.4]
    qblue = [1.57, 0.56, 0, 0.69, 0, -1.35, 0.0]

    #calculate configuration 
    q1 = ikine_ur5(xd1, qb)
    q2m = ikine_ur5(xd2m, q1)
    q2m[6] = q2m[6]+0.5
    q2 = ikine_ur5(xd2, q2m)
    q2up = ikine_ur5(xd2up, q2)
    q3 = ikine_ur5(xd3, qyell)
    q4m = ikine_ur5(xd4m, q3)
    q4m[6] = q4m[6]-0.5
    q4 = ikine_ur5(xd4, q4m)
    q4up = ikine_ur5(xd4up, q4)
    q5 = ikine_ur5(xd5, qyell2)
    q6 = ikine_ur5(xd6, q5)
    q6up = ikine_ur5(xd6up, q6)
    q7 = ikine_ur5(xd7, qblue)
    q8 = ikine_ur5(xd8, q7)
    q8up = ikine_ur5(xd8up, q8)

    #control index
    i=0
    
    #trayectory planning
    rospy.loginfo("...movimiento "+str(i))
    trajectory = JointTrajectory()
    trajectory.joint_names = arm_joint_names
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = q0
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1
    
    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = qa
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1
    
    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = qb
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1
    
    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = q1
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1


    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = q2m
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1
    
    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = q2
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1
    
    
    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = q2up
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1
    
    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = qyell
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1

    
    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = q3
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1

    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = q4m
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1
    
    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = q4
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1
    
    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = q4up
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1
    
    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = qyell2
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1
    
    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = q5
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1
    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = q6
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1
    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = q6up
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1
    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = q0
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1

    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = qblue
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1

    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = q7
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1

    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = q8
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1

    rospy.loginfo("...movimiento "+str(i))
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = q8up
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1


    rospy.loginfo("...movimiento final.")
    trajectory.points.append(JointTrajectoryPoint())
    trajectory.points[i].positions = q0
    trajectory.points[i].velocities =  [0.0] * len(arm_joint_positions)
    trajectory.points[i].accelerations = [0.0] * len(arm_joint_positions)
    trajectory.points[i].time_from_start = rospy.Duration(i*3+3)
    i+=1
    
    

    arm_goal = FollowJointTrajectoryGoal()
    arm_goal.trajectory = trajectory
    arm_goal.goal_time_tolerance = rospy.Duration(0.0)

    """
    gripper_goal = GripperCommandGoal()
    gripper_goal.command.max_effort = 10.0
    gripper_goal.command.position = 0.1
    """
    rospy.loginfo("Setting positions...")
    arm_client.send_goal(arm_goal)
    #gripper_client.send_goal(gripper_goal)
    #gripper_client.wait_for_result(rospy.Duration(5.0))
    arm_client.wait_for_result(rospy.Duration(6.0))
    rospy.loginfo("...done")
