
#Tricolore(euro_sectors, p1 = 'primary', p2 = 'secondary', p3 = 'tertiary', breaks = 20, hue = 0.3, chroma = 0.9, lightness = 0.8, contrast = 0.6, center = rep(1/3,3), spread = 1, show_data = TRUE, show_center = FALSE, legend = TRUE)

df %>%
  count( usage_type, lga ) %>%
  spread( usage_type, n, fill=0) %>% 
  { . } -> df_lga

get_australia_base_map() -> base_map

#shiny::runApp('explore/shiny/', display.mode = "normal")


df_lga %>%
  Tricolore( p1 = 'benzo_dd', p2='benzodiazepine_alone', p3='opioid_alone', center=NA) %>% 
  { . } -> tc

df_lga$srgb = tc$hexsrgb


map_data = left_join( base_map, df_lga, by=c("LGA_CODE11" = "lga"))

map_data %>%
  tm_shape( ) + 
  tm_polygons( col='srgb', 
              title = paste("Comparing Benzo, Opioid, and double dippers")
              ) 


# simulate 243 ternary compositions
P <- as.data.frame(prop.table(matrix(runif(3^6), ncol = 3), 1))
# color-code each composition and return a corresponding color key
tric <- Tricolore(P, 'V1', 'V2', 'V3')
# the color-coded compositions
head(tric$hexsrgb)


library(tmap)
data("metro", package = "tmap")
 tm_shape(metro) + tm_bubbles(size = "pop2030") + tm_format_World() + tm_style_cobalt() 

print( tric$legend , vp=viewport(x= 0.4, y= 0.1, width= 0.2, height= 0.1))


