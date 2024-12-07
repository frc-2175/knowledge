The main robot controller used on all FRC robots. Its purpose is to run our robot code and send control signals to all devices on the robot.

![[Pasted image 20241206122942.png]]

It connects to the following list of devices (which is not exhaustive):

- Motor controllers such as the [[SPARK MAX]] (via [[CAN]], formerly via [[PWM (Pulse-Width Modulation)|PWM]])
- The [[PCM (Pneumatics Control Module)|PCM]], to control pneumatic actuators (via [[CAN]])
- Digital sensors such as limit switches (via [[DIO (Digital Input-Output)|DIO]] ports)
- Analog sensors such as ultrasonic proximity sensors (via [[Analog Input|analog input]] ports)
- Expansion boards like the [[navX]] (via [[MXP]])
- The [[Radio|robot radio]] (via Ethernet)
- The [[RSL (Robot Signal Light)]]
- Auxiliary devices like a [[Raspberry Pi]] (via USB or Ethernet)

The roboRIO is essentially a small Linux computer with specialized input and output ports. There are two versions:

- Version 1.0 (Released in 2015) ([specs](https://www.ni.com/docs/en-US/bundle/roborio-frc-specs/page/specs.html), [manual](https://www.ni.com/docs/en-US/bundle/roborio/resource/roborio.pdf))
	- CPU: dual-core 667MHz ARM Cortex-A9
	- Memory: 256MB DDR3 RAM
- Version 2.0 (Released in 2022) ([specs](https://www.ni.com/docs/en-US/bundle/roborio-20-specs/page/specs.html), [manual](https://www.ni.com/docs/en-US/bundle/roborio-20-umanual/page/umanual.html))
	- CPU: dual-core 866MHz ARM Cortex-A9
	- Memory: 512MB DDR3 RAM
	- Removable microSD card for permanent storage

The roboRIO is manufactured by [[National Instruments]]. It is slated to be replaced by a [new controller](https://community.firstinspires.org/introducing-the-future-mobile-robot-controller) for the 2027 season.

## See also

- [[Imaging a roboRIO]]
- [[Deploying Code]]

