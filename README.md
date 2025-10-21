# embedded-intelligent-control
This course provided hands-on experience designing and coding in C embedded control systems, bridging hardware–software integration with concepts applicable to data acquisition, real-time processing, and automation. 

## Laboratories: 
### Lab 2 - Digital Inputs and Outputs: 
Learn to program the microcontroller to read digital inputs from a pushbutton and control LEDs as digital outputs. Gain experience creating projects, configuring ports, and managing digital signals.

### Lab 3 - Timers and PWM: 
Configure and use timers to generate precise timing signals and PWM outputs. Develop reusable timer functions and control LEDs and servomotors with varying frequencies and duty cycles.

### Lab 4 - Interruptions: 
Understand and implement hardware interrupts to handle simultaneous synchronous and asynchronous tasks efficiently. Use interrupts to generate PWM signals and control LEDs and servos without blocking the main program.

### Lab 5 - Light Intensity Control: 
Design a complete system with a light-dependent resistor and an incandescent bulb. Measure light intensity via ADC, linearize sensor output, and generate PWM signals to modulate bulb brightness according to ambient light levels.

## Set up for laboratory:
To set up each laboratory in general:

1. Hardware Preparation:
* Start by soldering the provided electronic components onto the PCB development board, including surface-mount and through-hole components. This board features a microcontroller (dsPIC33FJ32MC202) as the core.
* Verify correct assembly by checking component placement and polarity.

2. Software Setup:
* Install the MPLAB® X IDE development environment (compatible with Windows, macOS, Linux).
* Install the MPLAB XC16 compiler for 16-bit microcontrollers (specifically supports dsPIC33 family).

3. Project Creation:
* In MPLAB X IDE, create a new project selecting the dsPIC33FJ32MC202 microcontroller.
* Configure the project with the XC16 compiler and licensed debugger programmer.

4. Development Process:
* Compile and link the programs into machine code.
* Debug or simulate the program within MPLAB IDE before running on hardware.

This workflow remains consistent across all labs, allowing you to progressively develop, test, and deploy embedded C applications on the development board.
