library(tidyverse)

#Deleting previous datasets.
rm(list = ls())

# Set working directory. Need to update for your computer.
setwd("~/Desktop/Buzard Update 2020")

#Importing data. Make sure to save "Geneva, Annecy, Torquay All Schedules" excel file as a text file.
data_import <- read_tsv("Geneva, Annecy, Torquay All Schedules.txt")

#Create id.
data_import <- data_import %>%
  mutate(id = row_number())

#Fill in Paragraph numbers using the previous value.
data_import <- data_import %>%
  fill(Paragraph)

#Create id for products within each paragraph. 
data_import <- data_import %>%
  group_by(Paragraph) %>%
  mutate(Product = row_number())

#Creating function for separate datasets for reshaping. Order of the gatt rounds in the select function matters: put from earliest to latest rounds.
separate_table <- function(x_1, x_2, x_3) {
  data_import %>%
    select(id, Schedule, Paragraph, Product, Description, Extra, x_1, x_2, x_3) %>%
    rename(Geneva1 = x_1, Annecy = x_2, Torquay = x_3)
}

#Creating separate datasets for reshaping.
table_specific <- separate_table("Specific_Geneva", "Specific_Annecy", "Specific_Torquay")
table_units <- separate_table("Units_Geneva", "Units_Annecy", "Units_Torquay")
table_ad_valorem <- separate_table("Ad_Valorem_Geneva", "Ad_Valorem_Annecy", "Ad_Valorem_Torquay")

#Reshaping the separate datasets.
tidy_specific <- table_specific %>%
  gather(Geneva1, Annecy, Torquay, key="Gatt_Round", value="Specific")
tidy_units <- table_units %>%
  gather(Geneva1, Annecy, Torquay, key="Gatt_Round", value="Units")
tidy_ad_valorem <- table_ad_valorem %>%
  gather(Geneva1, Annecy, Torquay, key="Gatt_Round", value="Ad_Valorem")

#Combining the separate datasets from above into one dataset.
tidy_gatt <- left_join(tidy_specific, tidy_units) %>%
  left_join(tidy_ad_valorem)

#Create paragraph_product identifier for each observation.
tidy_gatt <- tidy_gatt %>%
  unite(Paragraph_Product, Paragraph, Product, remove = F)

#Fill in observations function. Important that GATT Rounds are in order (i.e. Geneva1, Annecy, Torquay).
fill_missing <- function(x) {
  tidy_gatt %>%
    group_by(Paragraph_Product) %>%
    fill(x)
}

#Fill in observations.
tidy_gatt <- fill_missing("Specific")
tidy_gatt <- fill_missing("Units")
tidy_gatt <- fill_missing("Ad_Valorem")

#Fill in missing with zeros. Can change if you do not want to fill in with zeros.
tidy_gatt <- tidy_gatt %>%
  mutate(Specific = coalesce(Specific, 0)) %>%
  mutate(Units = coalesce(Units, 0)) %>%
  mutate(Ad_Valorem = coalesce(Ad_Valorem, 0))

#Order data. Maybe could use arrange command instead?
tidy_gatt <- tidy_gatt[order(tidy_gatt$Paragraph, tidy_gatt$Product),]

#Removing not needed data.
rm(table_ad_valorem, table_specific, table_units, tidy_ad_valorem, tidy_specific, tidy_units)

#Unique identifier for each observation.
tidy_gatt <- tidy_gatt %>%
  group_by(Paragraph_Product) %>%
  mutate(Round = row_number()) %>%
  unite(Paragraph_Product_Round, Paragraph, Product, Round, remove = F)

#Order the columns.
tidy_gatt <- tidy_gatt %>%
  select(id, Schedule, Paragraph_Product_Round, Paragraph_Product, Paragraph, Product, Round, everything())

View(tidy_gatt)

#Saving cleaned data.
tidy_gatt %>%
  write_tsv("Geneva, Annecy, Torquay All Schedules Cleaned.txt")