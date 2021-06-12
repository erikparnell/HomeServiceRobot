#!/bin/sh

xterm -e " source $(find / -name a782def1_setup.bash); roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(find / -name greenbluebuilding.world) " &

sleep 10

xterm -e " source $(find / -name a782def1_setup.bash); roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$(find / -name a782def1_map.yaml) " &

sleep 10

xterm -e " source $(find / -name a782def1_setup.bash); roslaunch turtlebot_rviz_launchers view_navigation.launch " &

sleep 15

xterm -e " source $(find / -name a782def1_setup.bash); roslaunch add_markers add_markers.launch "
#launches both add_markers & pick_objects




