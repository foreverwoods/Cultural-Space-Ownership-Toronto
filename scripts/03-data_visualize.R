#### Preamble ####
# Purpose: Visualize the data into a map
# Author: Janssen Myer Rambaud
# Date: January 25th, 2024
# Contact: janssen.rambaud@mail.utoronto.ca
# License: MIT
# Pre-requisites: Run 02-data_cleaning.R
# Any other information needed?: No


#### Workspace setup ####
library(tidyverse)
library(tidygeocoder)


#### Read data ####
analysis_data <- read_csv("inputs/data/analysis_data.csv")

# convert address to geocode
locations <- analysis_data |>
  geocode(address=full_address, 
          method = 'arcgis', 
          lat = latitude , long = longitude)

# make the plot
ggplot() +
  geom_polygon(
    data = locations,
    aes(x = longitude, 
        y = latitude),
    fill = "white"
  ) + labs(x = "Longitude", 
           y = "Latitude") +
  
  geom_point(
    aes(x = locations$longitude, 
        y = locations$latitude),
    color = "red"
  ) + theme_bw() +
  ggsave("outputs/visuals/map.png")


