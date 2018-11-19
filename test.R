library(rworldmap)
data(World)
p <- World
library(rgdal)


plot(p, col = viridis::viridis(nrow(p)))

(pnganz <- subset(p, name %in% c("Australia", "Indonesia", "New Zealand", "Papua New Guinea")))

pnganz$color <- viridis::viridis(nrow(pnganz))
plot(pnganz, col = viridis::viridis(nrow(pnganz)))

plot(as(pnganz, "SpatialLinesDataFrame"))


# taken from the linked stackoverflow question
Sr1 = Polygon(cbind(c(2,4,4,1,2),c(2,3,5,4,2)))
Sr2 = Polygon(cbind(c(5,4,2,5),c(2,3,2,2)))
Sr3 = Polygon(cbind(c(4,4,5,10,4),c(5,3,2,5,5)))
Sr4 = Polygon(cbind(c(5,6,6,5,5),c(4,4,3,3,4)), hole = TRUE)

Srs1 = Polygons(list(Sr1), "s1")
Srs2 = Polygons(list(Sr2), "s2")
Srs3 = Polygons(list(Sr3, Sr4), "s3/4")
SpP = SpatialPolygons(list(Srs1,Srs2,Srs3), 1:3)

image.plot(x = c(0:10), y = c(0:10), z = matrix(runif(100, 0,1), nrow = 10),
           col = terrain.colors(20)) # fake data so lines() plays nice.

lines(fortify(SpP))
# there's a weird line connecting the square island in the middle t



require(ggplot2)
ggplot(aes(x = long, y = lat, group = group), data = fortify(SpP)) + geom_path()


SpP3 <- rbind(SpP2[1:5,], rep(NA, 7), SpP2[6:10,], rep(NA, 7), SpP2[10:14,], rep(NA, 7), SpP2[15:19,])
image.plot(x = c(0:10), y = c(0:10), z = matrix(runif(100, 0,1), nrow = 10), col = terrain.colors(20))
lines(SpP3)


image.plot(x = c(0:10), y = c(0:10), z = matrix(runif(100, 0,1), nrow = 10),
           col = terrain.colors(20)) # fake data so lines() plays nice.

plot(SpP)



plot(Polygon(cbind(c(2,4,4,1,2),c(2,3,5,4,2))))



df <- data.frame(ID = rep(1:100, each = 2), x =runif(200, 10, 90), y = runif(200, 10, 90))



library(foreach)
library(mapview)
library(sp)

## split by id
lst <- split(df, df$ID)


## create 'SpatialLines' obects
sln <- foreach(i = lst, id = names(lst), .combine = rbind) %do% {
  coords2Lines(as.matrix(i[, 2:3]), ID = id)
}



urb_1970_2030 = urban_agglomerations %>% 
  filter(year %in% c(1970, 1990, 2010, 2030))

tm_shape(world) + tm_polygons() + 
  tm_shape(urb_1970_2030) + tm_symbols(col = "black", border.col = "white",
                                       size = "population_millions") +
tm_facets(by = "year", nrow = 2, free.coords = FALSE)



a= tm_shape(world) + tm_polygons() 
