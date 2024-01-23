#### Preamble ####
#### Note: Preamble template was provided by owner Rohan Alexander in
####       Telling Stories with Data - 3, all credit goes to owner.

# Purpose: cleans the downloaded cultural data
# Author: Janssen Myer Rambaud
# Date: January 15th, 2024
# Pre-requisites: 
# - Download the data from 00-download_data.R

#### Workspace setup ####
# Load packages
library(janitor)

# read csv data
cultural_spaces_raw <-
  read_csv('/cloud/project/output/data/cultural_spaces.csv')

cultural_spaces_clean <-
  clean_names(cultural_spaces) |>
  select(performance,
         exhibition_visual_arts,
         screen_based,
         library,
         multipurpose,
         heritage,
         ownership
  )

# remove unecessary address columns like street number, street name, suite, city,
# province, postal code, ward, full_address since they are not needed for the
# final graph and analysis



# save as new cleaned csv
write_csv(cultural_spaces_clean, './output/data/cultural_spaces_clean.csv')

