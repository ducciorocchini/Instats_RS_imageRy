# Code to import external data

library(terra)

setwd("~/Desktop")
# Windowds: "C:\\path\Downloads" -> "C://path/Downloads"

getwd()

s <- rast("nzwhiteisland_oli2_20250107_lrg.jpg")
plotRGB(s, r=1, g=2, b=3)

# crop
ext <- c(100, 1000, 100, 1000)
sc <- crop(s, ext)
plot(sc)

# export
writeRaster(sc, "sc.png")

# Exercise: download a set of the Earth Observatory and upload it in R
# Any ecological process is ok
algae <- rast("lakevillarrica_oli_2023123_lrg.jpg")
plot(algae)



