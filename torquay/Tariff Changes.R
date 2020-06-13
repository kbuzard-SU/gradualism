library(tidyverse)

#Deleting previous datasets.
rm(list = ls())

# Set working directory. Need to update for your computer.
setwd("~/Desktop/Buzard Update 2020")

#Importing data.
tidy_gatt <- read_tsv("Geneva, Annecy, Torquay All Schedules Cleaned.txt")

#Identify changes in tariffs. Identify combination tariffs (ones with specific and ad valorem)
tidy_gatt <- tidy_gatt %>%
  group_by(Paragraph_Product) %>%
  mutate(Specific_Change = if_else(Specific != lag(Specific), 1, 0, missing = 0)) %>%
  mutate(Specific_Change_Total = sum(Specific_Change)) %>%
  mutate(Ad_Valorem_Change = if_else(Ad_Valorem != lag(Ad_Valorem), 1, 0, missing = 0)) %>%
  mutate(Ad_Valorem_Change_Total = sum(Ad_Valorem_Change)) %>%
  mutate(Tariff_Combination = if_else((Specific > 0) & (Ad_Valorem > 0), 1, 0))

View(tidy_gatt)

#Saving cleaned data.
tidy_gatt %>%
  write_tsv("Geneva, Annecy, Torquay All Schedules Changes.txt")