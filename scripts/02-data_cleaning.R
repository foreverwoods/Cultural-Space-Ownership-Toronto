#### Preamble ####
# Purpose: Clean and save the cultural spaces dataset
# Author: Janssen Myer Rambaud
# Date: January 25th, 2024
# Contact: janssen.rambaud@mail.utoronto.ca
# License: MIT
# Pre-requisites: Run 01-download_data.R
# Any other information needed?: No

#### Workspace setup ####
# Load packages
library(janitor)

#### Clean Data ####
# read csv data
cultural_spaces_raw <-
  read_csv("inputs/data/raw_data.csv")

cultural_spaces_clean <-
  clean_names(cultural_spaces) |>
  select(full_address,
         performance,
         exhibition_visual_arts,
         screen_based,
         library,
         multipurpose,
         heritage,
         ownership
  )


#### Save Data ####
# save as new cleaned csv
write_csv(cultural_spaces_clean, 'inputs/data/analysis_data.csv')

#### without address ####

cultural_spaces_no_addr <-
  clean_names(cultural_spaces) |>
  select(
         performance,
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


#### Save Data ####
# save as new cleaned csv
write_csv(cultural_spaces_no_addr, 'outputs/data/analysis_data_no_addr.csv')

