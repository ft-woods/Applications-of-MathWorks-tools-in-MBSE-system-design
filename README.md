# MBSE & MathWorks systems handbook


## Description
This repository contains documentation demonstrating the use of MathWorks systems in the design of a Lunar Sample Containment System. All material was created by a team of undergraduates at the University of Michigan as part of a project associated with the [Aerospace X88](https://aero.engin.umich.edu/undergraduate/program-overview/mbse-at-u-m/) course series and [NASA’s RASC-AL](https://rascal.nianet.org/) competition. To successfully design this system, MBSE methodologies were followed, such as moving through the systems V diagram from requirements to final verification and validation. In this project, MathWorks systems were primarily utilized during the verification and validation portions of the design process. MATLAB provides suitable data analysis tools to confirm requirements and identify any malfunctions in the system. Simulink was used to lay out electronic systems and controls, such as identifying the temperature in the control volume and verifying their functionality. The system itself is designed to maintain the temperature and pressure needed to store lunar samples during transit between habitats or rovers on lunar missions. Some of the systems demonstrated in this repository include the temperature sensing and warning system, the battery power and control system, as well as the cooling system itself.
## Examples

<table>
<tr>

<td align="center">
  <img src="images/MATLAB1.png" width="200">
  <br>
  <b>Modeling of tempurature over time</b>
  <br>
  < small> Using MATLAB, test data was modeled to approximate the rate at which the system changed temperature when traveling in lunar day conditions.</small>
</td>

<td align="center">
  <img src="images/MATLAB2.png" width="200">
  <br>
  <b>Modeling the state of change over time </b>
  <br>
  <small> Using MATLAB, in alignment with the temperature of the whole system, the state of change was graphed. This was important to analize the effectiveness of the phase change material as insulation. </small>
</td>

<td align="center">
  <img src="images/endurance_test.png" width="200">
  <br>
  <b>MATLAB Graphing</b>
  <br>
  <small>Processed data displayed with labeled axes and legends.</small>
</td>

</tr>

<tr>

<td align="center">
  <img src="images/precooling_test.png" width="200">
  <br>
  <b>MATLAB Graphing</b>
  <br>
  <small>Final visualization highlighting key trends in the results.</small>
</td>

<td align="center">
  <img src="images/simulink1.png" width="200">
  <br>
  <b>Thermal Simulation</b>
  <br>
  <small>Simulink model used to simulate the thermal behavior of the system.</small>
</td>

<td align="center">
  <img src="images/Simulink2.png" width="200">
  <br>
  <b>Thermal Simulation</b>
  <br>
  <small>Simulation results showing temperature response over time.</small>
</td>

</tr>
</table>

## MATLAB
XYZ....
## Simulink
To ensure that electronic systems were able to run under given thermal and electrical loads, the RASC-AL team utilized Simulink to set up an electro-thermal battery simulation. The simulation demonstrates the effect of all of the layers on metal, insulation, and PCM (phase change material) on protecting the system's battery from the lunar surface temperature. The simulation reads the battery's temperature as well as the current and voltage output after the application of the thermal load. 
<td align="center">
  <img src="images/simulink1.png" width="100%">
</td>

The left-hand side of the simulation contains the thermal aspects, including the controlled source that represents the lunar surface temperature during lunar day as well as the material layers and their properties standing between the lunar surface and the battery. Then, in the center, are multiple blocks storing information about the battery, such as its heat capacity, internal resistance, and mass. These pieces of information are needed to ensure the battery is as accurate in the simulation compared to real life as possible. Finally, on the right-hand side of the simulation, the electronic measuring elements are present. These are what are sensing and outputting the current, voltage, battery temperature, and the state of change for the system.

Another simulation the team utilized was one demonstrating that the PCB circuit board being used would not get too hot during operation to impede its functionality nor would the aluminum it was mounted on.
<td align="center">
  <img src="images/Simulink2.png" width="100%">
</td>
The top left portion of this simulation represents the 5V battery powering the system via a DC circuit. This output voltage is taken in combination with the current through the system to determine power that is then fed into a delay block. The presence of this delay allows the simulation to function similarly to the actual system, where there would be thermal inertia to overcome, which smooths out any fluctuating electrical signals. This power conducts heat, which impacts both the PCB and its aluminum housing. Considerations such as the thermal conductivity between the PCB and the Aluminum frame, the heat capacity of both materials, and the flow of energy through the components are accounted for in the model to ensure the highest accuracy. The heat data from both the PCB and the aluminum is then recorded and output for analysis, which indicates to the team that the thermal loads would allow the system to remain within functional temperature ranges while the battery powers the system.

## Practical Applications

<td align="center">
  <img src="images/Lab6_PowerSysMdl.png" width="200">
  <br>
  <b>Lab 6 control system</b>
  <br>
  <small>Simulation results showing temperature response over time.</small>
</td>
<td align="center">
  <img src="images/Lab6_PosSysMdl.png" width="200">
  <br>
  <b>Lab 6 control system</b>
  <br>
  <small>Simulation results showing temperature response over time.</small>
</td>

