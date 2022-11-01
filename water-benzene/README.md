<h1> Investigations into water-benzene binary mixture </h1>

<h3> Introduction </h3>

We shall make use of MD simulations to invesigate some *statistical* properties of a binary mixture.<br>
Benzene and water are not miscible. They should separate out into two layers, if both present in high concentrations.<br>
The reason being their mixture is energetically (enthalpic) forbidden. 

However, in low concentrations/high temperatures, entropy takes precedence and one can still obtain "solvated" benzene/water.

<h2> What is to be done </h2>

<h3> Systems to be set up </h3>
 <ul>
  <li> Prepare a neat water system. (1 simulation) </li>
  <li> Prepare a pure benzene system. (1 simulation) </li>
  <li> Prepare systems where benzene is present in water at concentrations 10%, 15% and 20% (v/v). (3 simulations) </li>
  <li> Prepare systems where water is present in benzene at concentrations 10%, 15% and 20% (v/v). (3 simulations) </li>
 </ul>

<h3> Simulations details </h3>
 <ul>
  <li> With a box size of 6nm for system, first run energy miniimizations. Then perform NVT and NPT equilibrations followed by 100ns of NPT production runs. (total of 8 simulations in total) </li>
  <li> **For neat water only, vary the box size: 4nm, 6nm, 8nm. (3 simulations)
  <li> **For neat water only, vary the water model: SPC/E and TIP3P. (2 simulations)
 </ul>
 
<h3> Analysis, plotting and snapshots </h3>
 <ul>
  <li> Generate images/snapshots of each system. </li>
  <li> Measure some statistical quantities: $g(r)$, $MSD$, etc </li>
  <li> Plot the measured properties using a plotting software of choice </li>
 </ul>

**The files required for running the simulations have been/will be provided in this folder each with a README. This README will also be updated accordingly.**<br>
