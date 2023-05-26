#! /usr/local/bin/python
"""
.. module:: node_C
	:platform: Unix
	:synopsis: Python module for the node_C

.. moduleauthor:: Hocine DELALA s5445123@studenti.unige.it


Python module for the Subscriber node (node_C).

This node subscribes to the robot position and velocity using a custom message and prints the distance of the robot from the target and the robot's average speed after reaching the goal.

Subscribes to:

- **/position_and_velocity** (message type: `my_msg`)

- **/reaching_goal/goal** (message type: `PlanningActionGoal`)

- **/reaching_goal/status** (message type: `GoalStatusArray`)

---

Global Variables:
    goal : PlanningGoal
        The goal of the robot obtained from the "/reaching_goal/goal" topic.
    
    my_msg : my_message
        The robot's position and velocity obtained from the "/position_and_velocity" topic.
    
    status : int
        The status of the robot's goal obtained from the "/reaching_goal/status" topic.
    
    tmp : int
        Temporary variable to store the previous status for comparison.
    
    start : float
        Start time to calculate the duration.
    
    startingPose : geometry_msgs.Point
        Starting pose of the robot used in distance and speed calculations.

"""


from __future__ import print_function
import rospy,math,time

from assignment_2_2022.msg import PlanningActionGoal,PlanningGoal
from actionlib_msgs.msg import GoalStatusArray
from assignmentpackage.msg import my_msg as my_message
from geometry_msgs.msg import Point

goal = PlanningGoal()
my_msg = my_message()
status = 0
tmp = 0
start = 0
startingPose = Point()

def callback1(msg):
    """
    Callback function that updates the global variable `my_msg` with the received message of type `my_message`.

    """
    global my_msg
    my_msg = msg
def callback2(msg):
    """
    Callback function that finds the starting pose of the robot, which is used in distance and speed calculations.
    It updates the global variables `goal`, `startingPose`, and `start`.
    """
    global goal,startingPose,start
    goal = msg.goal
    startingPose.x = my_msg.position_x
    startingPose.y = my_msg.position_y
    start = time.perf_counter()
def callback(msg):
    """
    Callback function that calculates the distance traveled by the robot as well as the average speed and the duration,
	it also prints those information.
    """
    global status,tmp,end,startingPose
    if (len(msg.status_list)>0):
        status= msg.status_list[0].status
    if(status==3):
        if status !=tmp:
            end = time.perf_counter()
            duration = (end-start)
            """ 
            Distance and speed calculation 
            """
            distanceTraveled = math.sqrt((my_msg.position_x - startingPose.x)**2 + (my_msg.position_y - startingPose.y)**2)
            avgspeed = distanceTraveled/duration
            print("duration is ",duration," distance is ",distanceTraveled," avg speed ",avgspeed)
    tmp = status

def main():
    """
    Main function that initializes the ROS node and declares the subscribers for the following topics:
   
        - "/position_and_velocity" (message type: `my_message`)

        - "/reaching_goal/goal" (message type: `PlanningActionGoal`)

        - "/reaching_goal/status" (message type: `GoalStatusArray`)
    """
    """
    Ros node initialization
    """
    rospy.init_node("subscriber")
    odomSub = rospy.Subscriber("/position_and_velocity",my_message,callback1,queue_size=1000)
    goalSub = rospy.Subscriber("/reaching_goal/goal",PlanningActionGoal,callback2,queue_size=1000)
    statusSub = rospy.Subscriber("/reaching_goal/status",GoalStatusArray,callback,queue_size=1000)
    rospy.loginfo("starting the loop")
    rospy.spin()
        
if __name__ == "__main__":
    main()
