
# The *habtools* & biodiversity workshop

This workshop is a one-day introduction to creating 3D models of natural
surfaces and analyzing these using the
*[habtools](https://jmadinlab.github.io/habtools/)* R package. The
workshop will also give guidance on annotating surface with plants and
animals. The workshop has three parts:

1.  Capturing a 3D surface
2.  Estimating metrics
3.  Biodiversity relationships

An introduction to the workshop can be found
[here](https://docs.google.com/presentation/d/1EcmqFs0lL1LlaK2j6uU90SUzEh0ms94cLV1RxN7I0Pc/edit?usp=sharing).
During the workshop we will run through the steps found
[here](habtools-workshop.md).

# Preparation

You will need a laptop with wireless connectivity. You will need space
on your hard drive; at least 2GB (approximately “one movie”-worth of
space). If you already use any of the software listed below, please
update it before the course so that we are all using the same versions.

### Metashape

- Download and install the free 30-day trial version of [Metashape
  Professional Educational
  Edition](https://www.agisoftmetashape.com/product/agisoft-metashape-professional-educational-edition/).

### R and RStudio

- Install R first: <https://cran.r-project.org>.
- After R is installed, install RStudio:
  <https://www.rstudio.com/products/rstudio/download>.
- Open RStudio and install the following packages (menu `Tools` \>
  `Install packages...`):
  - `ggplot2`
  - `sf`
  - `dplyr`  
  - `raster`  
  - `habtools`  
  - `rgl` (might not work on some computers)

> If you are new to R and Rstudio, you can familiarize yourself with
> some basics by following a beginner introduction
> (e.g. <https://rladiessydney.org/courses/ryouwithme/01-basicbasics-0/>
> or <https://r4ds.hadley.nz/intro>).

### GIS software

If you would like to annotate your orthomosaic, as might be done in a
biodiversity analysis, you can use ArcGIS or
[QGIS](https://qgis.org/download/), the latter of which is free to
download.
