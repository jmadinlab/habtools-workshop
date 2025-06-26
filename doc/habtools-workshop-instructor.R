# Instructor notes

library(ggplot2)
library(sf)
library(raster)
library(habtools)
library(rgl) # optional and might not work on some computers

# Generate surfaces. 
dem <- sim_dem(L = 64, smoothness = 0.5, H=64)
plot(dem)

rg(dem)
fd(dem)
hr(dem)

# Load and plot the DEM

dem <- raster("data/dem.tif")
plot(dem)

# Crop DEM
dem_square <- dem_crop(dem, x0=0.25, y0=0.25, L=0.5, plot=TRUE)
plot(dem_square)

# Surface area
surface_area(dem_square)
surface_area(dem_square) / 0.5^2

# Rugosity
rg(dem_square)
rg(dem_square, L0=0.001)
rg(dem_square, L0=0.01)

# Height range
hr(dem_square)

# Fractal dimension
fd(dem_square, method="sd", lvec=c(0.031, 0.063, 0.125, 0.25, 0.5), diagnose=TRUE, parallel=TRUE)

# DEM split
dem_list <- dem_split(dem_square, 0.1)
length(dem_list)
plot(dem)
rect(0, 0, 0.5, 0.5)
plot(dem_list[[1]], add=TRUE, legend=FALSE)
plot(dem_list[[25]], add=TRUE, legend=FALSE)

# Metrics for dem list
rdhs <- lapply(dem_list, rdh, method_fd="sd", lvec=c(0.031, 0.063, 0.125, 0.25, 0.5), parallel=TRUE)
rdhs <- rdhs %>% 
  plyr::ldply()

# Plot RDH
ggplot(data=rdhs, aes(x=R, y=H, color=D, size=D)) +
  geom_point()

# Sample DEM
dem_sample(dem_square, L=0.1, plot=TRUE)

# Change to your lat, lon values
lat <- 43.020704
lon <- 144.836736

sr <- paste0("+proj=tmerc +lat_0=", lat, " +lon_0=", lon, " +k=1 +x_0=0 +y_0=0 +datum=WGS84 +units=m +no_defs")

# Open annotations

ann <- read_sf("data/annotations.shp")
ann <- st_transform(ann, crs=sr) # applying the same coordinate system as the DEM

# Load DEM with coordinate system and plot annotations
dem <- raster("data/dem-crs.tif")
plot(dem)
points(ann, col="red", pch=4)
text(ann, ann$species)

# Use dem_crop to capture surface around each annotation
dem_list <- dem_crop(dem, x0=st_coordinates(ann)[,1], st_coordinates(ann)[,2], L=0.1, plot=TRUE)
points(ann, col="red", pch=4)
text(ann, ann$species)

# Calculate complexity metrics in vicinity of annotations.
rdhs <- lapply(dem_list, rdh, lvec=c(0.012, 0.025, 0.05, 0.1), parallel=TRUE)
rdhs <- rdhs %>% 
  plyr::ldply()

# bind the species column to the data.frame
rdhs <- cbind(rdhs, species=ann$species)

# Scatterplot
ggplot(data=rdhs, aes(x=R, y=H, color=species, size=D)) +
  geom_point()

# Boxplot 
ggplot(data=rdhs, aes(x=species, y=R)) +
  scale_y_log10() +
  geom_boxplot() +
  geom_jitter(width=0.1)


