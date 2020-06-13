library(pdftools)
library(tidyverse)
#library(xlsx)

rm(list = ls())

#----
page <- 1
#str_extract_start <- "(?<=PARAGRAPH\\s).*"
#str_extract_start <- "(?<=PAR\\.\\s).*"
#str_extract_start <- "(?<=1930\\.\\s).*"
str_extract_start <- "(?<=Duty\\s).*"
#----

setwd("~/Desktop/Professor Buzard/Torquay Schedule 2") #for my computer.
# setwd("\\\\hd.ad.syr.edu/01/50f530/Documents/Desktop/RA Buzard/Tariff Act of 1930") #for virtual machine.

pdf_1930 <- paste("schedule 2", page, sep = " ")
pdf_1930 <- paste(pdf_1930, "pdf", sep = ".")
txt_save <- paste("schedule_2", page, sep = "_")

text <- pdf_text(pdf_1930) %>%
  str_squish() 
text

text <- pdf_text(pdf_1930) %>%
  str_squish() %>%
  str_extract(str_extract_start) %>%
  str_split("\\.\\s") %>% 
  unlist() %>%
#  str_split("PAR\\.\\s") %>%
#  unlist() %>%
#  str_split("P\\.AR\\.\\s") %>%
#  unlist() %>%
  plyr::ldply(.id = NULL) %>%
  as.data.frame() %>%
#  separate(V1, into = c("Description", "Units"), sep = ",\\s\\d{1,}", remove = T) %>%
  #write.xlsx(file = "myfile.xlsx", sheetName=page, append=T)
  write_tsv(txt_save)

#--------------------------------
#pdf_1930 <- "r_Tariff_1930_2.pdf"
#str_extract_start <- "(?<=PARAGRAPH\\s).*"
#txt_save <- "1930"
#--------------------------------