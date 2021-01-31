import numpy as np
from copy import copy

from visualization_msgs.msg import Marker
import rospy


pi = np.pi


def dh(d, theta, a, alpha):
    sth = np.sin(theta)
    cth = np.cos(theta)
    sa  = np.sin(alpha)
    ca  = np.cos(alpha)
    T = np.matrix([[cth, -ca*sth,  sa*sth, a*cth],
                   [sth,  ca*cth, -sa*cth, a*sth],
                   [0.0,      sa,      ca,     d],
                   [0.0,     0.0,     0.0,   1.0]])
    return T

def forward_kinematics(q):
   """
   Cinematica directa del robot
   """
   # Longitudes (completar)


   # Matrices DH (completar)
   T1 = dh(0.310, q[0], 0, pi/2)
   T2 = dh(0, pi-q[1], 0, pi/2)
   T3 = dh(0.270, pi+q[2], 0.085, pi/2)
   T4 = dh(0,-pi/2+q[3], -0.060, pi/2)
   T5 = dh(-0.270, pi+q[4], 0, pi/2)
   T6 = dh(0.0, pi+q[5], 0, pi/2)
   T7 = dh(-0.435, q[6], 0, 0)
   #T7 = dh(-0.145, q[6], 0, 0)
   Ttotal = np.dot(np.dot(np.dot(np.dot(np.dot(np.dot(T1,T2),T3),T4),T5),T6),T7)

   return Ttotal

def vtotuple(v):
    return [val[0,0] for val in v]




class BallMarker(object):
    """
    Class to visualize ball markers in RViz

    """
    id = 0

    def __init__(self, color, alpha=1.0, scale=0.05):
        """
        The color can be specified as a list with 3 elements or as the color
        dictionary (e.g. BLUE, RED, etc). Alpha sets the transparency and scale
        scales the size of the ball

        """
        # reference_frame = rospy.get_param('reference_frame','/map')
        reference_frame = rospy.get_param('reference_frame','/base_link')
        self.marker_pub = rospy.Publisher("visualization_marker", Marker, queue_size=10)
        self.marker = Marker()
        self.marker.header.frame_id = reference_frame
        self.marker.ns = "ball_markers"
        self.marker.id = BallMarker.id
        BallMarker.id += 1
        self.marker.type = self.marker.SPHERE
        self.marker.action = self.marker.ADD
        self.marker.pose.position.x = 0.0
        self.marker.pose.position.y = 0.0
        self.marker.pose.position.z = 0.0
        self.marker.pose.orientation.x = 0.0
        self.marker.pose.orientation.y = 0.0
        self.marker.pose.orientation.z = 0.0
        self.marker.pose.orientation.w = 1.0
        self.marker.scale.x = scale
        self.marker.scale.y = scale
        self.marker.scale.z = scale
        self.setColor(color, alpha)
        self.marker.lifetime = rospy.Duration()

    def setColor(self, color, alpha=1.0):
        self.marker.color.r = color[0]
        self.marker.color.g = color[1]
        self.marker.color.b = color[2]
        self.marker.color.a = alpha

    def position(self, T):
        """
        Set position (4x4 NumPy homogeneous matrix) for the ball and publish it

        """
        self.marker.pose.position.x = T[0,3]
        self.marker.pose.position.y = T[1,3]
        self.marker.pose.position.z = T[2,3]
        self.publish()

    def xyz(self, position):
        """
        Set position (list) for the ball and publish it

        """
        self.marker.pose.position.x = position[0]
        self.marker.pose.position.y = position[1]
        self.marker.pose.position.z = position[2]
        self.publish()


    def publish(self):
        self.marker_pub.publish(self.marker)



"""
List for colors in BallMarker

"""
color = dict()
color['RED']       = (1.0, 0.0, 0.0)
color['GREEN']     = (0.0, 1.0, 0.0)
color['BLUE']      = (0.0, 0.0, 1.0)
color['YELLOW']    = (1.0, 1.0, 0.0)
color['PINK']      = (1.0, 0.0, 1.0)
color['CYAN']      = (0.0, 1.0, 1.0)
color['BLACK']     = (0.0, 0.0, 0.0)
color['DARKGRAY']  = (0.2, 0.2, 0.2)
color['LIGHTGRAY'] = (0.5, 0.5, 0.5)
color['WHITE']     = (1.0, 1.0, 1.0)
