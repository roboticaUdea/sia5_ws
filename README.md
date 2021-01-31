
Comandos para ejecucion:

-Sin brazo robotico
    Previamente se debe descomentar la linea 37 del archivo /practica/src/helpers.py y comentar la linea 36 para la correcta visualizacion del marcador.

    Rviz

        roslaunch practica test_sia5.launch
        rosrun practica directa_sia5.py
        rosrun practica ikine_sia5.py

    Gazebo

        roslaunch practica sia5_gazebo.launch
        rosrun practica prepare_pick_place.py

-Con brazo robotico
    Previamente se debe descomentar la linea 36 del archivo /practica/src/helpers.py y comentar la linea 37 para la correcta visualizacion del marcador.

    Rviz

        roslaunch practica test_sia5_dhand.launch
        rosrun practica directa_sia5.py
        rosrun practica ikine_sia5.py

    Gazebo 

        roslaunch practica sia_dhand_gazebo.launch
        rosrun practica prepare_pick_place.py

# sia5_ws
