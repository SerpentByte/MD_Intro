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
  <li> With a box size of 6nm for system, first run energy miniimizations. Then perform NVT and NPT equilibrations followed by 10ns of NPT production runs. You need to edit the numner of steps in the prod.mdp file to simulate for the correct amount of time.
  (total of 8 simulations in total) </li>
  <li> **For neat water only, vary the box size: 4nm, 6nm, 8nm. (3 simulations)
  <li> **For neat water only, vary the water model: SPC/E and TIP3P. (2 simulations)
 </ul>
 
<h3> Analysis, plotting and snapshots </h3>
 <ul>
  <li> Generate images/snapshots of each system. </li>
  <li> Measure some statistical quantities: $g(r)$, $MSD$, etc </li>
  <li> Plot the measured properties using a plotting software of choice </li>
 </ul>

<h2> Simulation topologies </h2>

**The files required for running the simulations can be found from this link.**<br>
https://drive.google.com/drive/folders/1XZ0GzTJOC8TdTmdVBk7RH4Wap9RZ-ku9?usp=share_link<br>

**How to use the zip files**<br>
Right click on each of them to get the download option. Once downloaded, in *Linux*, type the following<br>
```unzip <filename>```<br>
For example, if you want to unzip benzene_water.zip, type<br>
```unzip benzene_water.zip```<br>
This will unzip the respective zip file and you should see a folder with the same name.

<h2> Using the server to run simulations </h2>

 We will be using a server (Maxwell2) for running the simulations. The server has 32 CPU cores with a total of 8 GPUs. So multiple simulations can be run. However since it is a server and one has to log out of it, we have to submit the simulations in the background. Moreover one cannot use all 32 CPUs for simulations since there will be multiple simulations that would have to be run. Thus we need to specify the number of CPUs and the GPU to be used which can be done in the following way<br>
 ```gmx mdrun -v -deffnm run -nt <number of CPUS> -gpu_id <gpu id which starts from 0>```
 
 For example,<br>
 ```gmx mdrun -v -deffnm run -nt 4 -gpu_id 0```
 
 Background task submission is done in the following way<br>
 ```<command> >& <output file name> &```
 
 For example,<br>
 ```gmx mdrun -v -deffnm run -nt 4 -gpu_id 0 >& log_run &```<br>
 
 This method is called *piping* the output of the command/executable to the file log_run. Therefore all outputs would be stored to log_run file. To see the output use ```tail log_run``` in the same directory.
 
<h2> Copying file to and from the server </h2>

 There are two ways one can copy file to and from a server.<br>
 <h4> using scp </h4>
 To send to a server,<br>
 ```scp -r <path to file> <username>@<IP>:<path where to send the file>```<br>
 For example,<br>
 ```scp -r prod.mdp user@118.254.89.7:$HOME/simulations/production/```
 
 To receive from a server,<br>
 ```scp -r <username>@<IP>:<path of the file> <path to file>```<br>
 For example,<br>
 ```scp -r user@118.254.89.7:$HOME/simulations/production/prod.mdp .```
 
 <h4> using rsync </h4>
 To send to a server,<br>
 ```rsync -avPh <path to file> <username>@<IP>:<path where to send the file>```<br>
 For example,<br>
 ```rsync -avPh prod.mdp user@118.254.89.7:$HOME/simulations/production/```
 
 To receive from a server,<br>
 ```rsync -avPh <username>@<IP>:<path of the file> <path to file>```<br>
 For example,<br>
 ```rsync -avPh user@118.254.89.7:$HOME/simulations/production/prod.mdp .```
 

<h2> Suggested practices </h2>
 Data storage and management is a very important part of working in a computational lab.<br>
 Curation of the generated data into proper directories, with self-explanatory directory and file names and paths is very important.<br>
 Without proper data management, things can become very messy very fast. Therefore it is advised to create proper directories or move important, downloaded content to proper locations before initiation of any procedure involving them.
