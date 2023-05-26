#! /usr/local/bin/python
"""
.. module:: node_B
	:platform: Unix
	:synopsis: Python module for the node_B

.. moduleauthor:: Hocine DELALA s5445123@studenti.unige.it

This node subscribes to the `/reaching_goal/result` topic to monitor the status of goals and provides a service called `statuofgoal` to retrieve the number of reached and canceled goals.

Subscribes to:
    - **/reaching_goal/result**: Topic to receive status updates on goals.

Service:
    - **statuofgoal**: Service to retrieve the number of reached and canceled goals.

Functions:
    - `callback1_sub(msg)`: Callback function executed when a message is received on the `/reaching_goal/result_callback` topic.
    - `callback2_srv(req)`: Callback function for the `statuofgoal` service.

Usage:
    - Run the node and it will subscribe to the `/reaching_goal/result_callback` topic and provide the `statuofgoal` service.
    - The `callback1_sub` function counts the number of canceled and reached goals based on the received status updates.
    - The `callback2_srv` function responds to the `statuofgoal` service request by printing the number of canceled and reached goals and returning the response.

Variables:
    count_canceled : int
        Count of canceled goals.
        
    count_reached : int
        Count of reached goals.

"""

import rospy
from assignmentpackage.srv import my_service, my_serviceResponse
import actionlib
import actionlib.msg
import assignment_2_2022.msg

# initializing the count for canceled and reached goals
count_canceled = 0 
count_reached = 0 

def callback1_sub(msg):
    """
    *Callback function that checks the state of the goal (reached or canceled) and increments the corresponding count.*

        Args:
            msg: Received message containing the status of the goal.
   
    """
    global count_canceled, count_reached
    state = msg.status.status
    if state == 2:
        count_canceled += 1
        print("Number of goal canceled is {:.1f}".format(count_canceled))
    elif state == 3:
        count_reached += 1
        print("Number of goal canceled is {:.1f}".format(count_reached))

def callback2_srv(req):
    """
    *Callback function for the "statuofgoal" service.*

    It prints the number of canceled and reached goals and returns the response.

        Args:
            req: Service request object.

        Returns:
            Service response object.
    """
    global count_canceled, count_reached
    """
    Global variables to track the count of canceled and reached goals.

    These variables are used to keep track of the number of goals that have been canceled and reached, respectively.

        :type count_canceled: int
        :type count_reached: int

    """
    rospy.loginfo("Number of goal canceled is {:.1f} and Number of goal reached is {:.1f}".format(count_canceled, count_reached))
    return my_serviceResponse()

def main():
    """
    Main entry point of the node.

        - Initializes the ROS node with the name "node_B".
    
        - Subscribes to the "/reaching_goal/result" topic.
    
        - Provides the "statuofgoal" service.
    
        - Keeps the node running by calling `rospy.spin()`.
    """
    rospy.init_node('node_B') # initializing the node.
    """ subscribing to the topic /reaching goal/result """
    sub = rospy.Subscriber('/reaching_goal/result', assignment_2_2022.msg.PlanningActionResult, callback1_sub)
    """ creating a service server."""
    srv = rospy.Service('statuofgoal', my_service, callback2_srv) 
    rospy.spin() # spin to handle callbacks


if __name__ == "__main__":
    main()
    

