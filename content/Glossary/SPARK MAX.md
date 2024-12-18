A motor controller manufactured by [[REV Robotics]] that can control both brushed and brushless motors.

![[Pasted image 20241206134402.png]]

The SPARK MAX is most commonly used to control the [[NEO]] and [[NEO 550]] brushless motors. It can also control brushed DC motors such as the [[CIM]] and the [[775pro]].

The SPARK MAX supports multiple control modes, including built-in [[PID (Closed-Loop Control))|closed-loop]] control, and the ability for multiple SPARK MAXes to mirror each other in a leader/follower configuration. It also has a data port on top which can be used with external sensors, such as the [REV Through Bore Encoder](https://www.revrobotics.com/rev-11-1271/) inside a [[MAXSwerve]] module.

The SPARK MAX connects to the [[roboRIO]] via [[CAN]]. It can be configured using the proprietary [REV Hardware Client](https://docs.revrobotics.com/rev-hardware-client).

## Status LED

The SPARK MAX has a status LED that displays a variety of colors and patterns to indicate different modes and error conditions. We encourage you to visit and bookmark the following page: https://docs.revrobotics.com/brushless/spark-max/status-led

## Resources

- Documentation: https://docs.revrobotics.com/brushless/spark-max/overview
- Software resources: https://docs.revrobotics.com/brushless/revlib/revlib-overview
