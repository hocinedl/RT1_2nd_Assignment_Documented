#!/usr/bin/env python
"""
.. module:: node_A1
	:platform: Unix
	:synopsis: Python module for the node_A1

.. moduleauthor:: Hocine DELALA s5445123@studenti.unige.it


This ROS node allows a user to input a target position for a robot to navigate to and he can also cancel the operation and stop the robot an reassign new target distination,
it was implemented using an action client.

Functions:
    - `cancel()`: Cancels the target and publishes the cancellation event.
    
    - `target()`: Sends the robot to the target position.

Usage:
    - User can choose to send a target position or cancel an existing target.
    
    - User interface prompts for input and executes the corresponding function.
    
---

Global Variables:
    client : actionlib.SimpleActionClient
        An instance of the action client connecting to the '/reaching_goal' topic.

"""


from __future__ import print_function
import sys    
import rospy
import actionlib
from assignment_2_2022.msg import PlanningAction, PlanningGoal
from geometry_msgs.msg import PoseStamped

# the function that when it is called it cancel the target.
def cancel():
    """
    This functions is called if the user choose to cancel the target, and it cancel the goal for the action client *client*
    Also it publishes the goal cancelation event.

    """
    client.cancel_goal()
    rospy.loginfo("Goal canceled !\n")
    #main()

#the function that send the robot to the target.
def target():
    """
    This functions is called if the user choose a target position to reach, after the user interface if the user types 1 which means that he wants to send a target this functions is excutes, it starts by asking the user to enter the desired x and y positions, then it define a goal which in our case is called *goal*. it sets the goals positions (x and y) to the one entered by the user and finally it sends the goal.

    """
#asking the user to enter the target (x and Y ).
    x = float(input("Enter the value of the x position: "))
    y = float(input("Enter the value of the Y position: "))    
    print(f'Position entered successfully: \n x position: {x} \n y position: {y}')    
    #wait for the server
    client.wait_for_server()  
    #initializing the goal  
    goal = PoseStamped()    
    goal.pose.position.x = x
    goal.pose.position.y = y
    #setting the goal, using the desired x,y of the user.
    goal = PlanningGoal(goal) 
    #sending the goal       
    client.send_goal(goal) #sending a goal to the action server

def main():
    """
    This is our user interface function. A simple user interface the asks to choose between two options eIther sending the robot to a target or canceling the target, depending on the choice of the user the program will excute either **cancel()** or **target()** functions.
    """
    while True:
        rospy.loginfo("Enter Your choice :\n")
        rospy.loginfo("1 to send target. :\n")
        rospy.loginfo("2 to cancel the target target. :\n")
        rospy.loginfo("To exit enter any character :\n")
        c= input("choice:  ")
        
        if (c == "2"):
            cancel()
        elif (c == "1"):
            target()
        else:
            exit()

if __name__ == '__main__':
    """
    The main entry point of the node, here we perform the following:

        - Initializes the ROS node with the name *action_client*.
        - Creates an action client instance connecting to the '/reaching_goal' topic.
        - Calls the `main()` function to start the user interface.
        - Keeps the node running by calling `rospy.spin()` to process callbacks.
    """
	#node initialization
    rospy.init_node('action_client')
    	#client initialization and setting the server we want to send him request.
    client = actionlib.SimpleActionClient('/reaching_goal', PlanningAction)
    main()
    rospy.spin()
    

