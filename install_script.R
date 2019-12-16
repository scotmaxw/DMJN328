to.install<-c('usethis', 'learnr', 'devtools', 'tidyverse', 'magrittr', 'lubridate', 'haven', 'rmarkdown', 'datapasta', 'tibble', 'readr', 'foreign', 'dplyr', 'labelled', 'questionr', 'readxl',  'openxlsx', 'knitr', 'jsonlite', 'tidyr', 'DT', 'stringr', 'ggthemes', 'ggbeeswarm', 'glue', 'stringi', 'ggridges', 'viridis', 'scales', 'sf', 'tidycensus', 'tigris', 'censusapi', 'ggmap', 'leaflet', 'httpuv', 'cancensus', 'statcanR', 'cansim', 'valetr', 'weathercan', 'CANSIM2R', 'rcanvec', 'opendatatoronto', 'VancouvR', 'guardianapi', 'GuardianR')

install.lib<-to.install[!to.install %in% installed.packages()]
for(lib in install.lib) install.packages(lib,dependencies=TRUE)
sapply(load.lib,require,character=TRUE)

# UNCOMMENT AND RUN THE LINES BELOW IF YOU HAVE A MAC MACHINE

install.packages("glue", type="mac.binary")
install.packages("stringi", type="mac.binary")
install.packages("stringr", type="mac.binary")
install.packages("lubridate", type="mac.binary")

#Install from github
devtools::install_github("andrewbtran/muckrakr")
devtools::install_github("AliciaSchep/gglabeller") 
