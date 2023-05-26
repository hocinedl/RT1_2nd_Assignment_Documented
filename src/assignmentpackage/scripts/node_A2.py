#!/usr/local/bin/python
"""
.. module:: node_A2
	:platform: Unix
	:synopsis: Python module for the node_A1

.. moduleauthor:: Hocine DELALA s5445123@studenti.unige.it


It is a node that publishes the robot's current position and velocity as a custom message by subscribing to the /odom topic.

Functions:

    - `subscriber_callback(data)`: Callback function executed when a message is received on the `/odom` topic.

Usage:
   
    - The `subscriber_callback` function creates a custom message of type `my_msg` and fills it with the current position and velocity obtained from the received data.
    
   
    - The message is then published on the `position_and_velocity` topic, and the received data is logged.
    
    
    - To run the node, initialize the ROS node with the name `node_A2` and let it subscribe to the `/odom` topic.

Subscribes to:

- **/odom** (message type: `nav_msgs/Odometry`)

Topics Published:
    - **position_and_velocity**: The node publishes the custom message `my_msg` on this topic.

"""



from __future__ import print_function
import rospy
from assignmentpackage.msg import my_msg
from nav_msgs.msg import Odometry

#subsecriber callback function
def subscriber_callback(data):
    """
    *Callback function executed when a message is received on the "/odom" topic.*

    It creates a custom message of type `my_msg` and fills it with the current positions and velocities obtained from the received data.
    Then, it logs the received data, declares a publisher that publishes the custom message on the "position_and_velocity" topic,
    publishes the message, and prints "Message published!" to the console.

    """
    #declaring my custum msg
    msg = my_msg()
    # getting the current positions and velocities
    msg.vel_x = data.twist.twist.linear.x 
    msg.vel_y = data.twist.twist.linear.y
    msg.position_x = data.pose.pose.position.x 
    msg.position_y = data.pose.pose.position.y 
    #printing the data..
    rospy.loginfo(" Data received !\n %s",data)
     # declaring the publisher and the topic it will publish to..	
    pub = rospy.Publisher("position_and_velocity", my_msg, queue_size=10)
    # publishing the msg
    pub.publish(msg)
    print("Message published!")

def main():
    """
    Main entry point of the node.
    
        - Initializes the ROS node with the name `node_A2`.
        
        - Creates a subscriber that subscribes to the `/odom` topic with the message type `Odometry`.
        
        - Keeps the node running by calling `rospy.spin()`.
    
    """
    rospy.init_node("node_A2") # initialize the node
    #declaring and initializing the subscriber
    sub = rospy.Subscriber("/odom", Odometry, subscriber_callback)
    rospy.spin()
    
if __name__ == "__main__":
    main()
   