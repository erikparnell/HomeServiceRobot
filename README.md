The Home Service Robot is launched by executing a bash script which starts launch files that kick off nodes from inside the below packages. The robot will execute two 2D nav goals, and "pickup" a marker from a first goal and move it to a return goal for "dropoff". 

The following packages were used to complete the Home Service Robot project:

1. "turtlebot_simulator"/"turtlebot_gazebo" is used to provide the open source URDF model of the robot
2. "slam_gmapping" was used to create the map that the AMCL node uses to localize itself while navigating
3. "turtlebot_navigation" package contains the AMCL package which is used to localize the robot
4. "pick_objects" package contains the node which is responsible for interfacing with the ROS navigation stack to execute nav goals
5. "add_markers" package contains the node which subscribes to a topic to monitor the goal status and "pickup" and "dropoff" markers accordingly.
