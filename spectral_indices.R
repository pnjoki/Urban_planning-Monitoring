#R Script

#Load libraries

library(sf) 
library(terra) 
library(tmap)

#Set working directory

setwd("C:/Users/Pro/Downloads/data")

#Load bands

bands <- rast(list.files(“data/bt_images/”, pattern = “tiff$”,
full.names = TRUE))

b2 <- bands[[2]] b3 <- bands[[3]] b4 <- bands[[4]] b8 <- bands[[8]] b11
<- bands[[11]]

NDVI

ndvi <- (b8 - b4) / (b8 + b4) writeRaster(ndvi, “outputs/ndvi.tif”,
overwrite=TRUE)

GVI

GVI <- (b8 - b3) / (b8 + b3) writeRaster(GVI, “outputs/gvi.tif”,
overwrite=TRUE)

MNDWI

mndwi <- (b3 - b11) / (b3 + b11) writeRaster(mndwi, “outputs/mndwi.tif”,
overwrite=TRUE)

NDBI

ndbi <- (b11 - b8) / (b11 + b8) writeRaster(ndbi, “outputs/ndbi.tif”,
overwrite=TRUE)

