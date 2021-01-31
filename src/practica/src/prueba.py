#!/usr/bin/env python

import rospy
from sensor_msgs.msg import JointState
from helpers import *

pi = np.pi

if __name__ == "__main__":

    rospy.init_node("sendJointsNode")
    pub = rospy.Publisher('joint_states', JointState, queue_size=1000)
    bmarker = BallMarker(color['RED'])

    # Nombres de las articulaciones
    jnames = ("dhand_finger_base_left_joint", "dhand_finger_base_right_joint", "dhand_finger_middle_left_joint", 
                    "dhand_finger_middle_middle_joint", "dhand_finger_middle_right_joint", "dhand_finger_top_left_joint", 
                    "dhand_finger_top_middle_joint", "dhand_finger_top_right_joint")

    # ========================================================================
    #                Modificar aqui
    # ========================================================================

    # Configuracion articular (en radianes)
    q = [8, 8, 8, 8, 8, 8, 8, 8]
    #q = [0, 0, 0, 0, 0, 0, 0, 0]
    
    # Cinematica directa para la configuracion articular (efector final con
    # respecto al eslabon 0 que es diferente de la base misma del robot, en
    # este caso)
    T0e = forward_kinematics(q)
    #print np.round(T0e,3)

    # Hacer que Tf muestrela posicion con respecto a la base del robot y no
    # solo la base del manipulador
    Tf = T0e
    bmarker.position(Tf)
    #print np.round(Tf,3)
    
    # ========================================================================


    # Objeto (mensaje) de tipo JointState
    jstate = JointState()
    # Asignar valores al mensaje
    jstate.header.stamp = rospy.Time.now()
    jstate.name = jnames
    jstate.position = q

    # Frecuencia del envio (en Hz)
    rate = rospy.Rate(100)
    # Bucle de ejecucion continua
    while not rospy.is_shutdown():
        # Tiempo actual (necesario como indicador para ROS)
        jstate.header.stamp = rospy.Time.now()
        # Publicar mensaje
        pub.publish(jstate)
        bmarker.publish()
        # Esperar hasta la siguiente  iteracion
        rate.sleep()


#sudo apt-get install ros-melodic-gazebo-ros-control ros-melodic-joint-trajectory-controller ros-melodic-joint-state-controller ros-melodic-moveit-core ros-melodic-moveit-kinematics