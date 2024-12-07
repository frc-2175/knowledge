A specialized board dedicated to controlling [[Pneumatics|pneumatic]] components on a robot—that is, components powered by compressed air.

![[Pasted image 20241206124200.png]]

The PCM serves two functions:

1. Controlling the robot's [[Compressor|air compressor]], turning it on and off to maintain air pressure in the system.
2. Activating [[Solenoid|solenoids]] to control pneumatic actuators such as [[Air Cylinder|air cylinders]].

The PCM receives control signals from the [[roboRIO]] via [[CAN]]. It is powered by a specialized output port on the [[PDP (Power Distribution Panel)|PDP]].

The PCM activates and deactivates the [[Compressor|compressor]] based on the signal from a [[Pressure Switch|pressure switch]]. A closed circuit means the system has low pressure and the compressor should run. An open circuit means the system is at pressure and the compressor should stop.