# time series analysis in R

library(terra)
library(imageRy)

im.list()

# Importing data
EN01 <- im.import("EN_01.png")
EN13 <- im.import("EN_13.png")

difEN = EN01[[1]] - EN13[[1]]

# Example 2: ice melt in Greenland

gr <- im.import("greenland")
plot(gr[[1]])
plot(gr[[4]])

# Exercise: plot in a multiframe the first and last elements of gr
par(mfrow=c(1,2))
plot(gr[[1]])
plot(gr[[4]])

difgr = gr[[1]] - gr[[4]]
dev.off()
plot(difgr)

# ridgeline plots

# NDVI file
ndvi <- im.import("NDVI_2020")

plot(ndvi)

# Ridgeline plot
names(ndvi) <- c("01 January","05 May","08 August","11 November")
im.ridgeline(ndvi, 2, "viridis")

