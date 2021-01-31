#!/usr/bin/env python
 
import rospy
from sensor_msgs.msg import JointState
from helpers import *

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
   
       if (np.linalg.norm(err) < epsilon):
           break
  
   return q

if __name__ == "__main__":
   # starting node
   rospy.init_node("testInvKine")
   pub = rospy.Publisher('joint_states', JointState, queue_size=1000)
   
   #markers
   bmarker      = BallMarker(color['RED'])
   bmarker_des  = BallMarker(color['GREEN'])
   
   # Joint names
   jnames = ('joint_s', 'joint_l', 'joint_e', 'joint_u', 'joint_r', 'joint_b', 'joint_t')
 
   # Desired position
   xd = np.array([0.5, 0.5, 0.31])
   # Initial configuration
   q0 = [0, 0, 0, 0, 0, 0, 0]
   q = ikine_ur5(xd, q0)
   # Resulting position (end effector with respect to the base link)
   T = forward_kinematics(q)
   print('Obtained value:\n', np.round(T,3))
   
   # Red marker shows the achieved position
   bmarker.xyz(T[0:3,3])
   bmarker.position(T)
   # Green marker shows the desired position
   bmarker_des.xyz(xd)
   
   # Object (message) of type JointState
   jstate = JointState()
   # Assign values to the message
   jstate.header.stamp = rospy.Time.now()
   jstate.name = jnames
   q1 = [q[0], q[1], q[2], q[3], q[4], q[5], q[6]]
   #print("q1=",q1)
   #print("q=",q)
   # Add the head joint value (with value 0) to the joints
   jstate.position = q1

   # Loop rate (in Hz)
   rate = rospy.Rate(100)
   # Continuous execution loop
   while not rospy.is_shutdown():
      # Current time (needed for ROS)
      jstate.header.stamp = rospy.Time.now()
      # Publish the message
      pub.publish(jstate)
      bmarker.publish()
      bmarker_des.publish()
      # Wait for the next iteration
      rate.sleep()
