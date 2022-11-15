<h1> Basic plotting </h1>

```
import numpy as np # for loading and manipulating data
import matplotlib.pyplot as plt # for plotting
# %matplotlib widget 
# for interactive plotting like GNUplot

# loading data
bins_oo, rdf_oo = np.loadtxt("neat_water/rdf_OO.xvg", unpack=True, comments=["#", "@"])
bins_oh, rdf_oh = np.loadtxt("neat_water/rdf_OH.xvg", unpack=True, comments=["#", "@"])
_bins_oh, _rdf_oh = np.loadtxt("neat_water/rdf_OH.xvg", unpack=True, comments=["#", "@"])

fig, ax = plt.subplots(1, 1, figsize=(4, 4))

ax.plot(bins_oo, rdf_oo, color="red", label="O-O", lw=2)
ax.plot(bins_oh, rdf_oh, color="blue", label="O-H", lw=2)
ax.plot(_bins_oh, _rdf_oh, color="green", label="O-H2", lw=2, ls="dashed")

# setting axes labels
ax.set_xlabel("distance (nm)", size=12)
ax.set_ylabel("RDF", size=12)

# setting axes boundaries
ax.set_xlim(xmin=0, xmax=2)
ax.set_ylim(ymin=0, ymax=3)

# setting tick sizes
ax.tick_params(labelsize=8)

# including legend
ax.legend()

# saving plot to a file
fig.savefig("neat_water/rdfs.png", bbox_inches="tight", dpi=200)

plt.show() # need this command in a .py file to show the plot. HAS TO THE LAST COMMAND
```


<h1> Plotting with mean and standard deviation in the labels </h1>

```
import numpy as np
import matplotlib.pyplot as plt

time, dens = np.loadtxt("neat_water/dens.xvg", unpack=True, comments=["#", "@"])

fig, ax = plt.subplots(1, 1, figsize=(6, 6))

ax.plot(time, dens, lw=2, color="red", label=f"density1 ({dens.mean():.2f}$\pm${dens.std():.2f})")

ax.legend()

plt.show()
```
