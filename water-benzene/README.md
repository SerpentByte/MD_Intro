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

<h3> Simulation topologies </h3>

**The files required for running the simulations can be found from this link.**<br>
https://drive.google.com/drive/folders/1XZ0GzTJOC8TdTmdVBk7RH4Wap9RZ-ku9?usp=share_link<br>

**How to use the zip files**<br>
Right click on each of them to get the download option. Once downloaded, in *Linux*, type the following<br>
```unzip <filename>```<br>
For example, if you want to unzip benzene_water.zip, type<br>
```unzip benzene_water.zip```<br>
This will unzip the respective zip file and you should see a folder with the same name.

<h3> Suggested practices </h3>
 Data storage and management is a very important part of working in a computational lab.<br>
 Curation of the generated data into proper directories, with self-explanatory directory and file names and paths is very important.<br>
 Without proper data management, things can become very messy very fast. Therefore it is advised to create proper directories or move important, downloaded content to proper locations before initiation of any procedure involving them.
