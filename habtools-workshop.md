
# Instructions

### Aims

- To develop an understanding of habitat complexity, including
  familiarity with geometric measures like rugosity and fractal
  dimension.
- To become familiar with how to capture benthic 3D meshes, digital
  evevation models (DEMs) and orthomosaics as a canvas for potential
  projects that layer on ecological and environmental details.

### Introduction

One of community ecology’s few paradigms is that complex habitats tend
to contain more species and at higher abundances than simple habitats.
Currently, human and natural disturbances are changing the complexity of
habitats faster than at any previous time in history. Understanding and
predicting the effects of these changes on biodiversity and ecosystem
function is now of paramount importance. Yet, we have only a crude,
correlative understanding of how complexity changes affect biodiversity,
predicting that if habitat becomes flatter, species’ diversity and
abundances decline. We have next to no idea of how complexity changes
affect ecosystem functions and services. Generating accurate predictions
requires integration of the geometric and ecological principles that
mechanistically underpin complexity-ecological relationships.

Habitat geometry can be measured in many ways. However, in marine
systems, surface rugosity has become gold standard, because it can be
measured quickly with a tape measure and a length of chain. The chain is
draped as closely as possible over the the benthos and then the linear
distance between the two ends of the chain is measured (Fig. 1).
Rugosity is calculated as $R = \frac{D_{chain}}{L_{chain}}$. If the
surface is completely flat, then $D_{chain}$ will be the same as
$L_{chain}$. On more convoluted surfaces, the linear distance
$D_{chain}$ is shorter, and rugosity is greater.

<figure>
<img src="figs/rugosity.png" alt="Figure 1: Rugosity" />
<figcaption aria-hidden="true">Figure 1: Rugosity</figcaption>
</figure>

Many studies have found relationships between surface rugosity and the
richness and abundance of associated species. Many studies have found no
relationship at all, calling into questions what rugosity actually tells
us about a habitat and how niches are distributed and partitioned.
Advances in the way marine scientists can capture benthic surfaces have
transformed our capacity to explore the geometric-biodiversity
relationships (Torres-Pulliza et al. 2020). One such advance is the
generation of surface structure from motion, which allows us to
associate orthomosics of benthic cover (essentially stitched together
photographs over large areas) with the 3D surfaces upon which the
biodiversity lives (Pizarro et al. 2017).

### Objectives

1.  Generate a digital elevation model (DEM) and an orthomosaic.
2.  Calculate three geometric measures (rugosity, fractal dimension and
    height range) and explore the relationships among them.
3.  Think about reef features that could be annotated or measured over
    your orthomosaic, especially those you believe to be related to
    habitat complexity. Examples include, larval settlement, species
    richness, territorial grazer density, fish size structure, spatial
    clustering of primary producers, etc.

### Gear list

- Camera, charged
- Three scale markers (6 targets)
- GPS to mark center of reef record
- Depth gauge for depths at markers
- Transect tape for measuring between scale markers
- Compass for determining rotation of reef record
- Slate for notes (e.g., GPS, depths)

### Fieldwork

- Find site about a meter deep
- Place reef recorder in the center
- Place scale markers flat within anticipated map area, approximate
  triangle around reef recorder
- Attach camera
- Start camera and swim normally around stake, keeping line taut, in a
  spiral fashion
- When line in completely unwound, signal to buddy to remove reef
  recorder
- Swim across stake numerous time to create “spokes” or “petals”
- Stop camera
- Record GPS coordinates above target 1
- Measure depth at all three scale markers
- Measure distances between marker 1 and the other two markers
- Measure the bearings between marker 1 and the other two markers
- Pick everything up and back to boat

### Labwork

- Export photos from camera into the `habtools-workshop/sfm/images/`
  folder on your computer.
- Open `MetashapePro`.
- From the `Workflow` menu, select `Add Photos` and select all the
  photos in the `habtools-workshop/sfm/images/` folder.
- From the `Workflow` menu, select `Align Photos` and ensure the
  selections reflect the following screeshot, then click `OK`:

<img src="figs/align-photos.png" width="400">

- Following processing, which can take a while if you have lots of
  photographs, you can view what’s called the sparse point cloud.
- Next you detect markers using `Tools` -\> `Markers` -\>
  `Detect Markers...`. Click `OK`.
- Go to `Reference` panel.
- Open `Reference` settings (wrench and hammer symbol at the topright of
  reference pane)
- Choose `Local Coordinates (m)` coordinate system (note that you can
  also create geo-referenced surfaces if you take a GPS coordinate for
  your surface).
- Highlight target pairs from scale bars (using crtl key), right-click
  `Create Scale Bar`.
- Enter scale distances in reference pane below the target pane (e.g.,
  0.08 m for 8 cm).
- 
- Start workflow process: align cameras first (accuracy Low).
- Using the measurement tool, check that the scale in the sparse cloud
  is approximately correct. All cameras should appear above the sparse
  cloud (if not, is one of the angles the wrong direction? e.g., 180
  degrees off?)
- Once happy with alignments, do the dense cloud step at Medium accuracy
  (this takes the longest)
- Generate 3D mesh, DEM and ortho-model using defaults. Then export
  them.

### References

- Pizarro, O., Friedman, A., Bryson, M., Williams, S. B. & Madin, J. A
  simple, fast, and repeatable survey method for underwater visual 3D
  benthic mapping and monitoring. Ecology and Evolution 7, 1770–1782
  (2017). \[[link](https://doi.org/10.1002/ece3.2701)\]
- Torres-Pulliza D, Dornelas M, Pizarro O, Bewley M, Blowes SA, Boutros
  N, Brambilla V, Chase TJ, Frank G, Friedman A, Hoogenboom MO, Williams
  S, Zawada KJA, Madin JS (2020) A geometric basis for surface habitat
  complexity and biodiversity. *Nature Ecology & Evolution* 4:1495-1501.
  \[[link](https://doi.org/10.1038/s41559-020-1281-8)\]
- Torres-Pulliza, D., Charendoff, J., Couch, C., Suka, R., Gray, A.,
  Lichowski, F., … & Oliver, T. (2024). Processing coral reef imagery
  using Structure-from-Motion photogrammetry: Standard operating
  procedures (2023 update).
  \[[link](https://repository.library.noaa.gov/view/noaa/60890)\]
