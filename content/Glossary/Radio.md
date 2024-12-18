---
author: Idrees Ahmad
---
A small Wi-Fi router that maintains wireless communication between the [[Driver Station]] and robot. Prior to the 2025 season, this consisted of an OpenMesh radio, however, this has now been replaced with the Vivid-Hosting VH-109.

![[WCP-1538_2048x2048 Medium 1.png]]

The radio can be [[Configuring a Radio|configured]] in one of two modes:

- **Bridge mode:** The radio connects to an existing Wi-Fi network. Used at competition to connect to the [[FMS (Field Managment System)|FMS]], and now recommended for general use.
- **Access point mode:** The radio broadcasts its own Wi-Fi network, which the [[Driver Station]] computer can connect to.

Prior to 2025, the radios were manufactured by OpenMesh and looked like this:

![[Pasted image 20241206203820.png]]

## Changes from past years

It's important to note how the modern recommended network topography differs from that of previous seasons. Outside of competitions on-robot OpenMesh radios were frequently configured in access point mode, broadcasting an ad-hoc 2.4 or 5GHz Wi-Fi network, which the driver station would connect to directly. 

![[OpenMesh Radio.jpg]]

This method was rife with connection and reliability issues, especially when connecting over a long range, and resulted in relatively low available bandwidth, with the advantage of requiring minimal infrastructure. 

Although the VH-109 can be configured in such a mode it is explicitly discouraged by Vivid-Hosting and **known to cause reliability issues, especially in congested environments like schools**. Instead, it is recommended to configure a second, off-robot radio as an access point, which the robot will connect to as a client. Then, the [[Driver Station]] will be connected via Ethernet.

![[Pasted image 20241206220907.png]]

More information about this configuration can be found [here](https://frc-radio.vivid-hosting.net/getting-started/usage/practicing-at-home) .