<h1> Investigations into water-benzene binary mixture </h1>

<h3> Introduction </h3>
We shall make use of MD simulations to invesigate some *statistical* properties of a binary mixture.<br>
Benzene and water are not miscible. They should separate out into two layers, if both present in high concentrations.<br>
The reason being their mixture is energetically (enthalpic) forbidden. However, in low concentrations/high temperatures,<br>
entropy taken precedence and one can still obtain "solvated" benzene/water.

<h3> What is to be done </h3>
<ul>
 <li> Prepare systems where benzene is present in water at concentrations 10%, 15% and 20% (v/v). </li>
 <li> Prepare systems where water is present in benzene at concentrations 10%, 15% and 20% (v/v). </li>
 <li> Generate images/snapshots of each system. </li>
 <li> Measure some statistical quantities: $g(r)$, $MSD$, etc </li>
 <li> Repeat for two water models: i) TIP3P-charmm ii) TIP3P </li>
</ul>

**The files required for running the simulations have been provided in this folder.**<br>
**For calculating the numnber of water molecules to put into a box, *see conc.md* file.**<br>
*please use 6 nm as the box length so as all simulations done are on the same system size. *
