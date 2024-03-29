#### Preamble ####
# Purpose: Downloads and saves the cultural spaces dataset using opendatatoronto
# Author: Janssen Myer Rambaud
# Date: January 25th, 2024
# Contact: janssen.rambaud@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed?: No


#### Workspace setup ####
# Load packages
library(tidyverse)
library(opendatatoronto)

#### Download data ####
# Read in only the first dataset (hence the head(1))
cultural_spaces <- 
  list_package_resources("1c950f43-ff8a-4482-b46d-fc4b22070142") |>
  head(1) |>
  get_resource()


#### Save data ####
write_csv(cultural_spaces, "inputs/data/raw_data.csv") 

        