library(cancensus)
library(tidyverse)
options(cancensus.api_key='CensusMapper_0668eccd2a83200b3e8ab2810bba61b5')
options(cancensus.cache_path = "~")


st_marys<- get_census(dataset='CA16', regions=list(CSD='3531016'),
                      vectors=c("v_CA16_2446"), labels="detailed",
                      geo_format="sf", level="DA")

library(ggplot2)
ggplot(st_marys, aes(geometry=geometry, fill=Population))+geom_sf()
