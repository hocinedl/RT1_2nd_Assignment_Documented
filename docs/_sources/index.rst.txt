.. Assignment Docum documentation master file, created by
   sphinx-quickstart on Thu May 25 22:35:52 2023.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to Assignment Docum's documentation!
============================================
This is my documentation of RT1 assignment 2 solution, it contains four nodes with specific functionalities for each node:

1- The first ROS node allows a user to input a target position for a robot to navigate to and he can also cancel the operation and stop the robot an reassign new target distination, it was implemented using an action client.

2- A node that publishes the robot's position and velocity as a custom message using values from a topic.

3- A service node that, when activated, prints the number of goals that have been reached and cancelled.

4- A node that subscribes to the robot's position and velocity using the custom message and prints the distance of the robot from the target and the robot's average speed. A parameter will be used to set the frequency of publishing the information.

Enjoy reading my documentation, I hope everything will be clear, don't hesitate to contact me in case of any doubt.

.. toctree::
   :maxdepth: 2
   :caption: Contents:

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`

Assignment documentation!
**************************************
This is the documentation of the assignment package!

Action client node Module
==========================

.. automodule:: scripts.node_A1
	:members:
	
.. image:: Flowchart.png
   :alt: Flowchart of the first node
   :align: center


Publisher node_A2 Module
=========================

.. automodule:: scripts.node_A2
	:members:
	


The service node Module
=========================

.. automodule:: scripts.node_B
	:members:
.. image:: FlowchartB.png
   :alt: Flowchart of the second node
   :align: center


Subscriber node Module
=======================

.. automodule:: scripts.node_C
	:members:

Running the simulation
=======================

To start the sumulation create a workspace and clone the packages ( the simulation package and the assignmentpackage),
the start by running the command :

 **roslaunch assignment_2_2022 assignment11.launch**

This will lauch the simulation nodes and the nodes node_A2, node_B and node_C: and gives you the following Gazibo interface:

.. image:: Gazibo_simulation.png
   :alt: Simulation
   :align: center

this will also run the publisher node and it will be publishing the robot pose:

.. image:: Publishing.png
   :alt: Simulation
   :align: center

Now to run the full simulation with sending target, open a new terminal and run the node_A1, using the commande:

**rosrun <packageName> <nodeName>.py**

An example of running the everything togheter will give us:

.. image:: fullSimulation.png
   :alt: fullSim 
   :align: center


