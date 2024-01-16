#### Preamble ####
#### Note: Preamble template was provided by owner Rohan Alexander in
####       Telling Stories with Data - 3, all credit goes to owner.

# Purpose: downloads the dataset using opendatatoronto
# Author: Janssen Myer Rambaud
# Date: January 15th, 2024
# Pre-requisites: 
# - None


#### Workspace setup ####
# Load packages
library(tidyverse)
library(opendatatoronto)

# Read in only the first dataset (hence the head(1))
cultural_spaces <- 
  list_package_resources("1c950f43-ff8a-4482-b46d-fc4b22070142") |>
  head(1) |>
  get_resource()

write_csv(cultural_spaces, './output/data/cultural_spaces.csv')

