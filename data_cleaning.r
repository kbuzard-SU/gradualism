#**********************************************************************************************
# Created by: Zeyuan (Victor) Xiong                                     
# Created on: Feb 8, 2021                                     
# Last edited: June 14, 2021 (KB)

# This code cleans the Smoot-Hawley to Dillon data that was entered in Excel for analysis
# The excel file resides at OneDrive - Syracuse University\Research\Gradualism\Data paper and is
# named Schedules_1-15_units_changed_HS - corrected.xlsx. Save it as a csv with "UTF-8" formatting
# (this avoids unnecessary garbling in the transformation to csv). The read.csv options are set
# to make sure that empty cells are set to NA so that the fill function will work. 
# Before running, change line 17 to reflect the location where you saved the .csv (it should NOT
# be on a public repo).

# Note: File originally created as data_cleaning.rmd, converted to *.r on Feb 25, 2021
#**********************************************************************************************

loc = file.path("C:/Users/krist/Downloads/test_1.csv")

library(tidyverse)
library(foreign)
library(dplyr)
library(readr)
library(tidyselect)
library(kableExtra)

# Select the desired columns from the csv by names
data_set <- read.csv(file=loc, encoding="UTF-8",
                     na.string=c(""," ","" ,"" ,"NA","\u00A0"))[,c('X.U.FEFF.Schedule','Paragraph','Description','Specific_SH','Units_SH','Ad_Valorem_SH',
                                                                   'Specific_1946_after','Units_1946_after','Ad_Valorem_1946_after',
                                                                   'Specific_Geneva','Units_Geneva','Ad_Valorem_Geneva','Specific_Annecy','Units_Annecy','Ad_Valorem_Annecy','Specific_Torquay','Units_Torquay','Ad_Valorem_Torquay',
                                                                   'Specific_Geneva56_A','Units_Geneva56_A','Ad_Valorem_Geneva56_A','Specific_Geneva56_B','Units_Geneva56_B','Ad_Valorem_Geneva56_B',
                                                                   'Specific_Geneva56_C','Units_Geneva56_C','Ad_Valorem_Geneva56_C','Specific_Dillon_A','Units_Dillon_A','Ad_Valorem_Dillon_A',
                                                                   'Specific_Dillon_B','Units_Dillon_B','Ad_Valorem_Dillon_B','Interval')]


# Fill the paragraph and schedule numbers in
data_set<-fill(data_set, X.U.FEFF.Schedule, .direction="down")
data_set<-fill(data_set, Paragraph, .direction="down")

# Create product number so that every line can be located as, "Paragraph X, Product Y". Note the schedule information is contained in the paragraph number. 'id' is just a running count throught the full data set.
data_set<-data_set %>%
  mutate(id=row_number()) %>%
  group_by(Paragraph) %>%
  mutate(Product=row_number()) %>% ungroup()



###############################################################################
### Fill the empty cases by rounds
###############################################################################


# Fill the empty cases. Logic: if it is NA, take the same value as the previous rounds, notice that NA will still be NA if this product does not have this tax rate.
#### Potential risk warning #### It does create confusion if the form of tax changed over time, say from ad_valorem to specific. Requires an "if" structure that the tax rate of this product
# are  all NA. I solve this problem by also conditioning on that both specific and Ad_valorem tax rate are NA.



# Fill up the specific tax rate by order. Notice that the order is important. 

data_set$Specific_1946_after[which(is.na(data_set$Specific_1946_after) & is.na(data_set$Ad_Valorem_1946_after),arr.ind = TRUE)]<- # SH to 1946 after "Specific" 
  data_set$Specific_SH[which(is.na(data_set$Specific_1946_after) & is.na(data_set$Ad_Valorem_1946_after),arr.ind = TRUE)]

data_set$Specific_Geneva[which(is.na(data_set$Specific_Geneva) & is.na(data_set$Ad_Valorem_Geneva),arr.ind = TRUE)]<- # 1946 after to Geneva "Specific" 
  data_set$Specific_1946_after[which(is.na(data_set$Specific_Geneva) & is.na(data_set$Ad_Valorem_Geneva),arr.ind = TRUE)]

data_set$Specific_Annecy[which(is.na(data_set$Specific_Annecy) & is.na(data_set$Ad_Valorem_Annecy),arr.ind = TRUE)]<- # Geneva to Annecy "Specific" 
  data_set$Specific_Geneva[which(is.na(data_set$Specific_Annecy) & is.na(data_set$Ad_Valorem_Annecy),arr.ind = TRUE)]

data_set$Specific_Torquay[which(is.na(data_set$Specific_Torquay) & is.na(data_set$Ad_Valorem_Torquay),arr.ind = TRUE)]<- # Annecy to Torquay "Specific" 
  data_set$Specific_Annecy[which(is.na(data_set$Specific_Torquay) & is.na(data_set$Ad_Valorem_Torquay),arr.ind = TRUE)]

data_set$Specific_Geneva56_A[which(is.na(data_set$Specific_Geneva56_A) & is.na(data_set$Ad_Valorem_Geneva56_A),arr.ind = TRUE)]<- # Torquay to Geneva_A "Specific" 
  data_set$Specific_Torquay[which(is.na(data_set$Specific_Geneva56_A) & is.na(data_set$Ad_Valorem_Geneva56_A),arr.ind = TRUE)]

data_set$Specific_Geneva56_B[which(is.na(data_set$Specific_Geneva56_B) & is.na(data_set$Ad_Valorem_Geneva56_B),arr.ind = TRUE)]<- # Geneva_A to Geneva_B "Specific" 
  data_set$Specific_Geneva56_A[which(is.na(data_set$Specific_Geneva56_B) & is.na(data_set$Ad_Valorem_Geneva56_B),arr.ind = TRUE)]

data_set$Specific_Geneva56_C[which(is.na(data_set$Specific_Geneva56_C) & is.na(data_set$Ad_Valorem_Geneva56_C),arr.ind = TRUE)]<- # Geneva_B to Geneva_C "Specific" 
  data_set$Specific_Geneva56_B[which(is.na(data_set$Specific_Geneva56_C) & is.na(data_set$Ad_Valorem_Geneva56_C),arr.ind = TRUE)]

data_set$Specific_Dillon_A[which(is.na(data_set$Specific_Dillon_A) & is.na(data_set$Ad_Valorem_Dillon_A),arr.ind = TRUE)]<- # Geneva_C to Dillon_A "Specific" 
  data_set$Specific_Geneva56_C[which(is.na(data_set$Specific_Dillon_A) & is.na(data_set$Ad_Valorem_Dillon_A),arr.ind = TRUE)]

data_set$Specific_Dillon_B[which(is.na(data_set$Specific_Dillon_B) & is.na(data_set$Ad_Valorem_Dillon_B),arr.ind = TRUE)]<- # Dillon_A to Dillon_B "Specific" 
  data_set$Specific_Dillon_A[which(is.na(data_set$Specific_Dillon_B) & is.na(data_set$Ad_Valorem_Dillon_B),arr.ind = TRUE)]


# Fill up the Unit by order. Notice that the order is important.
data_set$Units_1946_after[which(is.na(data_set$Specific_1946_after) & is.na(data_set$Ad_Valorem_1946_after),arr.ind = TRUE)]<- # SH to 1946_after "Units" 
  data_set$Units_SH[which(is.na(data_set$Specific_1946_after) & is.na(data_set$Ad_Valorem_1946_after),arr.ind = TRUE)]

data_set$Units_Geneva[which(is.na(data_set$Specific_Geneva) & is.na(data_set$Ad_Valorem_Geneva),arr.ind = TRUE)]<- # 1946_after to Geneva "Units" 
  data_set$Units_1946_after[which(is.na(data_set$Specific_Geneva) & is.na(data_set$Ad_Valorem_Geneva),arr.ind = TRUE)]

data_set$Units_Annecy[which(is.na(data_set$Specific_Annecy) & is.na(data_set$Ad_Valorem_Annecy),arr.ind = TRUE)]<- # Geneva to Annecy "Units" 
  data_set$Units_Geneva[which(is.na(data_set$Specific_Annecy) & is.na(data_set$Ad_Valorem_Annecy),arr.ind = TRUE)]

data_set$Units_Torquay[which(is.na(data_set$Specific_Torquay) & is.na(data_set$Ad_Valorem_Torquay),arr.ind = TRUE)]<- # Annecy to Torquay "Units" 
  data_set$Units_Annecy[which(is.na(data_set$Specific_Torquay) & is.na(data_set$Ad_Valorem_Torquay),arr.ind = TRUE)]

data_set$Units_Geneva56_A[which(is.na(data_set$Specific_Geneva56_A) & is.na(data_set$Ad_Valorem_Geneva56_A),arr.ind = TRUE)]<- # Torquay to Geneva_A "Units" 
  data_set$Units_Torquay[which(is.na(data_set$Specific_Geneva56_A) & is.na(data_set$Ad_Valorem_Geneva56_A),arr.ind = TRUE)]

data_set$Units_Geneva56_B[which(is.na(data_set$Specific_Geneva56_B) & is.na(data_set$Ad_Valorem_Geneva56_B),arr.ind = TRUE)]<- # Geneva_A to Geneva_B "Units" 
  data_set$Units_Geneva56_A[which(is.na(data_set$Specific_Geneva56_B) & is.na(data_set$Ad_Valorem_Geneva56_B),arr.ind = TRUE)]

data_set$Units_Geneva56_C[which(is.na(data_set$Specific_Geneva56_C) & is.na(data_set$Ad_Valorem_Geneva56_C),arr.ind = TRUE)]<- # Geneva_B to Geneva_C "Units" 
  data_set$Units_Geneva56_B[which(is.na(data_set$Specific_Geneva56_C) & is.na(data_set$Ad_Valorem_Geneva56_C),arr.ind = TRUE)]

data_set$Units_Dillon_A[which(is.na(data_set$Specific_Dillon_A) & is.na(data_set$Ad_Valorem_Dillon_A),arr.ind = TRUE)]<- # Geneva_C to Dillon_A "Units" 
  data_set$Units_Geneva56_C[which(is.na(data_set$Specific_Dillon_A) & is.na(data_set$Ad_Valorem_Dillon_A),arr.ind = TRUE)]

data_set$Units_Dillon_B[which(is.na(data_set$Specific_Dillon_B) & is.na(data_set$Ad_Valorem_Dillon_B),arr.ind = TRUE)]<- # Dillon_A to Dillon_B "Units" 
  data_set$Units_Dillon_A[which(is.na(data_set$Specific_Dillon_B) & is.na(data_set$Ad_Valorem_Dillon_B),arr.ind = TRUE)]


# Fill up the Ad_valorem tax rate by order. Notice that the order is important.
data_set$Ad_Valorem_1946_after[which(is.na(data_set$Specific_1946_after) & is.na(data_set$Ad_Valorem_1946_after),arr.ind = TRUE)]<- # SH to 1946_after Ad_Valorem 
  data_set$Ad_Valorem_SH[which(is.na(data_set$Specific_1946_after) & is.na(data_set$Ad_Valorem_1946_after),arr.ind = TRUE)]

data_set$Ad_Valorem_Geneva[which(is.na(data_set$Specific_Geneva) & is.na(data_set$Ad_Valorem_Geneva),arr.ind = TRUE)]<- # 1946_after to Geneva Ad_Valorem 
  data_set$Ad_Valorem_1946_after[which(is.na(data_set$Specific_Geneva) & is.na(data_set$Ad_Valorem_Geneva),arr.ind = TRUE)]

data_set$Ad_Valorem_Annecy[which(is.na(data_set$Specific_Annecy) & is.na(data_set$Ad_Valorem_Annecy),arr.ind = TRUE)]<- # Geneva to Annecy Ad_Valorem
  data_set$Ad_Valorem_Geneva[which(is.na(data_set$Specific_Annecy) & is.na(data_set$Ad_Valorem_Annecy),arr.ind = TRUE)]

data_set$Ad_Valorem_Torquay[which(is.na(data_set$Specific_Torquay) & is.na(data_set$Ad_Valorem_Torquay),arr.ind = TRUE)]<- # Annecy to Torquay Ad_Valorem
  data_set$Ad_Valorem_Annecy[which(is.na(data_set$Specific_Torquay) & is.na(data_set$Ad_Valorem_Torquay),arr.ind = TRUE)]

data_set$Ad_Valorem_Geneva56_A[which(is.na(data_set$Specific_Geneva56_A) & is.na(data_set$Ad_Valorem_Geneva56_A),arr.ind = TRUE)]<- # Torquay to Geneva_A Ad_Valorem
  data_set$Ad_Valorem_Torquay[which(is.na(data_set$Specific_Geneva56_A) & is.na(data_set$Ad_Valorem_Geneva56_A),arr.ind = TRUE)]

data_set$Ad_Valorem_Geneva56_B[which(is.na(data_set$Specific_Geneva56_B) & is.na(data_set$Ad_Valorem_Geneva56_B),arr.ind = TRUE)]<- # Geneva_A to Geneva_B Ad_Valorem
  data_set$Ad_Valorem_Geneva56_A[which(is.na(data_set$Specific_Geneva56_B) & is.na(data_set$Ad_Valorem_Geneva56_B),arr.ind = TRUE)]

data_set$Ad_Valorem_Geneva56_C[which(is.na(data_set$Specific_Geneva56_C) & is.na(data_set$Ad_Valorem_Geneva56_C),arr.ind = TRUE)]<- # Geneva_B to Geneva_C Ad_Valorem
  data_set$Ad_Valorem_Geneva56_B[which(is.na(data_set$Specific_Geneva56_C) & is.na(data_set$Ad_Valorem_Geneva56_C),arr.ind = TRUE)]

data_set$Ad_Valorem_Dillon_A[which(is.na(data_set$Specific_Dillon_A) & is.na(data_set$Ad_Valorem_Dillon_A),arr.ind = TRUE)]<- # Geneva_C to Dillon_A Ad_Valorem
  data_set$Ad_Valorem_Geneva56_C[which(is.na(data_set$Specific_Dillon_A) & is.na(data_set$Ad_Valorem_Dillon_A),arr.ind = TRUE)]

data_set$Ad_Valorem_Dillon_B[which(is.na(data_set$Specific_Dillon_B) & is.na(data_set$Ad_Valorem_Dillon_B),arr.ind = TRUE)]<- # Dillon_A to Dillon_B Ad_Valorem
  data_set$Ad_Valorem_Dillon_A[which(is.na(data_set$Specific_Dillon_B) & is.na(data_set$Ad_Valorem_Dillon_B),arr.ind = TRUE)]


################################### Notice that the above code cannot cover the type of tax rate that contains both specific and ad valorem, namely result becomes : 1 1 1 -> 1 NA NA
################################### Therefore two more parts have to be added for this filling process, using the guideline that "specific and unit cannot be NA and !NA simultaneously" to identify these lines.
################################### Note to start with the Ad_valorem column

data_set$Ad_Valorem_1946_after[which(!is.na(data_set$Specific_1946_after) & is.na(data_set$Units_1946_after),arr.ind = TRUE)]<- # SH to 1946_after Ad_Valorem ##### Pars 2
  data_set$Ad_Valorem_SH[which(!is.na(data_set$Specific_1946_after) & is.na(data_set$Units_1946_after),arr.ind = TRUE)]

data_set$Ad_Valorem_Geneva[which(!is.na(data_set$Specific_Geneva) & is.na(data_set$Units_Geneva),arr.ind = TRUE)]<- # 1946_after to Geneva Ad_Valorem ##### Pars 2
  data_set$Ad_Valorem_1946_after[which(!is.na(data_set$Specific_Geneva) & is.na(data_set$Units_Geneva),arr.ind = TRUE)]

data_set$Ad_Valorem_Annecy[which(!is.na(data_set$Specific_Annecy) & is.na(data_set$Units_Annecy),arr.ind = TRUE)]<- # Geneva to Annecy Ad_Valorem ##### Pars 2
  data_set$Ad_Valorem_Geneva[which(!is.na(data_set$Specific_Annecy) & is.na(data_set$Units_Annecy),arr.ind = TRUE)]

data_set$Ad_Valorem_Torquay[which(!is.na(data_set$Specific_Torquay) & is.na(data_set$Units_Torquay),arr.ind = TRUE)]<- # Annecy to Torquay Ad_Valorem ##### Pars 2
  data_set$Ad_Valorem_Annecy[which(!is.na(data_set$Specific_Torquay) & is.na(data_set$Units_Torquay),arr.ind = TRUE)]

data_set$Ad_Valorem_Geneva56_A[which(!is.na(data_set$Specific_Geneva56_A) & is.na(data_set$Units_Geneva56_A),arr.ind = TRUE)]<- # Torquay to Geneva_A Ad_Valorem ##### Pars 2
  data_set$Ad_Valorem_Torquay[which(!is.na(data_set$Specific_Geneva56_A) & is.na(data_set$Units_Geneva56_A),arr.ind = TRUE)]

data_set$Ad_Valorem_Geneva56_B[which(!is.na(data_set$Specific_Geneva56_B) & is.na(data_set$Units_Geneva56_B),arr.ind = TRUE)]<- # Geneva_A to Geneva_B Ad_Valorem ##### Pars 2
  data_set$Ad_Valorem_Geneva56_A[which(!is.na(data_set$Specific_Geneva56_B) & is.na(data_set$Units_Geneva56_B),arr.ind = TRUE)]

data_set$Ad_Valorem_Geneva56_C[which(!is.na(data_set$Specific_Geneva56_C) & is.na(data_set$Units_Geneva56_C),arr.ind = TRUE)]<- # Geneva_B to Geneva_C Ad_Valorem ##### Pars 2
  data_set$Ad_Valorem_Geneva56_B[which(!is.na(data_set$Specific_Geneva56_C) & is.na(data_set$Units_Geneva56_C),arr.ind = TRUE)]

data_set$Ad_Valorem_Dillon_A[which(!is.na(data_set$Specific_Dillon_A) & is.na(data_set$Units_Dillon_A),arr.ind = TRUE)]<- # Geneva_C to Dillon_A Ad_Valorem ##### Pars 2
  data_set$Ad_Valorem_Geneva56_C[which(!is.na(data_set$Specific_Dillon_A) & is.na(data_set$Units_Dillon_A),arr.ind = TRUE)]

data_set$Ad_Valorem_Dillon_B[which(!is.na(data_set$Specific_Dillon_B) & is.na(data_set$Units_Dillon_B),arr.ind = TRUE)]<- # Dillon_A to Dillon_B Ad_Valorem ##### Pars 2
  data_set$Ad_Valorem_Dillon_A[which(!is.na(data_set$Specific_Dillon_B) & is.na(data_set$Units_Dillon_B),arr.ind = TRUE)]



data_set$Units_1946_after[which(!is.na(data_set$Specific_1946_after) & is.na(data_set$Units_1946_after),arr.ind = TRUE)]<- # SH to 1946_after Units ##### Pars 2
  data_set$Units_SH[which(!is.na(data_set$Specific_1946_after) & is.na(data_set$Units_1946_after),arr.ind = TRUE)]

data_set$Units_Geneva[which(!is.na(data_set$Specific_Geneva) & is.na(data_set$Units_Geneva),arr.ind = TRUE)]<- # 1946_after to Geneva Units ##### Pars 2
  data_set$Units_1946_after[which(!is.na(data_set$Specific_Geneva) & is.na(data_set$Units_Geneva),arr.ind = TRUE)]

data_set$Units_Annecy[which(!is.na(data_set$Specific_Annecy) & is.na(data_set$Units_Annecy),arr.ind = TRUE)]<- # Geneva to Annecy Units ##### Pars 2
  data_set$Units_Geneva[which(!is.na(data_set$Specific_Annecy) & is.na(data_set$Units_Annecy),arr.ind = TRUE)]

data_set$Units_Torquay[which(!is.na(data_set$Specific_Torquay) & is.na(data_set$Units_Torquay),arr.ind = TRUE)]<- # Annecy to Torquay Units ##### Pars 2
  data_set$Units_Annecy[which(!is.na(data_set$Specific_Torquay) & is.na(data_set$Units_Torquay),arr.ind = TRUE)]

data_set$Units_Geneva56_A[which(!is.na(data_set$Specific_Geneva56_A) & is.na(data_set$Units_Geneva56_A),arr.ind = TRUE)]<- # Torquay to Geneva_A Units ##### Pars 2
  data_set$Units_Torquay[which(!is.na(data_set$Specific_Geneva56_A) & is.na(data_set$Units_Geneva56_A),arr.ind = TRUE)]

data_set$Units_Geneva56_B[which(!is.na(data_set$Specific_Geneva56_B) & is.na(data_set$Units_Geneva56_B),arr.ind = TRUE)]<- # Geneva_A to Geneva_B Units ##### Pars 2
  data_set$Units_Geneva56_A[which(!is.na(data_set$Specific_Geneva56_B) & is.na(data_set$Units_Geneva56_B),arr.ind = TRUE)]

data_set$Units_Geneva56_C[which(!is.na(data_set$Specific_Geneva56_C) & is.na(data_set$Units_Geneva56_C),arr.ind = TRUE)]<- # Geneva_B to Geneva_C Units ##### Pars 2
  data_set$Units_Geneva56_B[which(!is.na(data_set$Specific_Geneva56_C) & is.na(data_set$Units_Geneva56_C),arr.ind = TRUE)]

data_set$Units_Dillon_A[which(!is.na(data_set$Specific_Dillon_A) & is.na(data_set$Units_Dillon_A),arr.ind = TRUE)]<- # Geneva_C to Dillon_A Units ##### Pars 2
  data_set$Units_Geneva56_C[which(!is.na(data_set$Specific_Dillon_A) & is.na(data_set$Units_Dillon_A),arr.ind = TRUE)]

data_set$Units_Dillon_B[which(!is.na(data_set$Specific_Dillon_B) & is.na(data_set$Units_Dillon_B),arr.ind = TRUE)]<- # Dillon_A to Dillon_B Units ##### Pars 2
  data_set$Units_Dillon_A[which(!is.na(data_set$Specific_Dillon_B) & is.na(data_set$Units_Dillon_B),arr.ind = TRUE)]



############################################################################################################################################################################
############################################################################################################################################################################

########################################################################################## Step 1 Without value changes 

data_set <- data_set %>% 
  mutate(across(starts_with("Units"), function(x) x = replace(x, x == 11,58))) %>% 
  mutate(across(starts_with("Units"), function(x) x = replace(x, x == 12,19))) %>%
  mutate(across(starts_with("Units"), function(x) x = replace(x, x == 13,19))) %>% 
  mutate(across(starts_with("Units"), function(x) x = replace(x, x == 16,20))) %>%
  mutate(across(starts_with("Units"), function(x) x = replace(x, x == 17,20))) %>%
  mutate(across(starts_with("Units"), function(x) x = replace(x, x == 21,20))) %>%
  mutate(across(starts_with("Units"), function(x) x = replace(x, x == 26,19))) %>%
  mutate(across(starts_with("Units"), function(x) x = replace(x, x == 31,19))) %>%
  mutate(across(starts_with("Units"), function(x) x = replace(x, x == 32,25))) %>%
  mutate(across(starts_with("Units"), function(x) x = replace(x, x == 38,2))) %>%
  mutate(across(starts_with("Units"), function(x) x = replace(x, x == 43,1))) %>%
  mutate(across(starts_with("Units"), function(x) x = replace(x, x == 45,48))) %>%
  mutate(across(starts_with("Units"), function(x) x = replace(x, x == 51,19))) 



########################################################################################## Step 2 With value changes 
f_replace<-function(m,n,p){
  arr1<-which(data_set$Units_SH==m,arr.ind=TRUE)
  data_set$Specific_SH[arr1]<-data_set$Specific_SH[arr1]*p ############ SH
  data_set$Units_SH[arr1]<-n
  ###
  #arr2<-which(data_set$Units_1946_before==m,arr.ind=TRUE)
  #data_set$Specific_1946_before[arr2]<-data_set$Specific_1946_before[arr2]*p ############ 1946_before
  #data_set$Units_1946_before[arr2]<-n
  ###
  arr3<-which(data_set$Units_1946_after==m,arr.ind=TRUE)
  data_set$Specific_1946_after[arr3]<-data_set$Specific_1946_after[arr3]*p ############ 1946_after
  data_set$Units_1946_after[arr3]<-n
  ###
  arr4<-which(data_set$Units_Geneva==m,arr.ind=TRUE)
  data_set$Specific_Geneva[arr4]<-data_set$Specific_Geneva[arr4]*p ############ Geneva
  data_set$Units_Geneva[arr4]<-n
  ###
  arr5<-which(data_set$Units_Annecy==m,arr.ind=TRUE)
  data_set$Specific_Annecy[arr5]<-data_set$Specific_Annecy[arr5]*p ############ Annecy
  data_set$Units_Annecy[arr5]<-n
  ###
  arr6<-which(data_set$Units_Torquay==m,arr.ind=TRUE)
  data_set$Specific_Torquay[arr6]<-data_set$Specific_Torquay[arr6]*p ############ Torquay
  data_set$Units_Torquay[arr6]<-n
  ###
  arr7<-which(data_set$Units_Geneva56_A==m,arr.ind=TRUE)
  data_set$Specific_Geneva56_A[arr7]<-data_set$Specific_Geneva56_A[arr7]*p ############ Geneva56_A
  data_set$Units_Geneva56_A[arr7]<-n
  ###
  arr8<-which(data_set$Units_Geneva56_B==m,arr.ind=TRUE)
  data_set$Specific_Geneva56_B[arr8]<-data_set$Specific_Geneva56_B[arr8]*p ############ Geneva56_B
  data_set$Units_Geneva56_B[arr8]<-n
  ###
  arr9<-which(data_set$Units_Geneva56_C==m,arr.ind=TRUE)
  data_set$Specific_Geneva56_C[arr9]<-data_set$Specific_Geneva56_C[arr9]*p ############ Geneva56_C
  data_set$Units_Geneva56_C[arr9]<-n
  ###
  arr10<-which(data_set$Units_Dillon_A==m,arr.ind=TRUE)
  data_set$Specific_Dillon_A[arr10]<-data_set$Specific_Dillon_A[arr10]*p ############ Dillon_A
  data_set$Units_Dillon_A[arr10]<-n
  ###
  arr11<-which(data_set$Units_Dillon_B==m,arr.ind=TRUE)
  data_set$Specific_Dillon_B[arr11]<-data_set$Specific_Dillon_B[arr11]*p ############ Dillon_B
  data_set$Units_Dillon_B[arr11]<-n
  
  
  assign('data_set',data_set,envir=.GlobalEnv) ### replace global data_set with local data_set, this step is important, without it the changes will only happen locally
  
}


f_replace(14,1,0.01) # moved from further down the list

f_replace(56,54,0.01) # moved from the bottom of the list

f_replace(54,6,144) # moved from the bottom of the list

f_replace(18,19,1/144) #new

f_replace(44,6,1/9) #new

f_replace(1,4,1/16) 

f_replace(2,4,1/128) 

f_replace(7,4,1/32000)

f_replace(20,19,1/12) 

f_replace(29,48,.001) 

f_replace(15,19,0.001)

f_replace(22,25,0.001)

f_replace(23,19,0.01)

f_replace(27,19,0.01)

f_replace(39,25,0.001)

f_replace(40,3,0.0005)

f_replace(47,3,0.0005)

f_replace(50,19,0.001)



########################################################### Step 3 replace dollar with cents

f_replace(3,4,100/16) # 3 to 1 to 4
f_replace(8,4,100/32000) # 8 to 7 to 4
f_replace(9,4,100/128) # 9 to 2 to 4
f_replace(25,19,100) 
f_replace(48,19,100/12) # 48 to 20 to 19

########################################################## Naming


colnames(data_set)[1] <- "Sched"

specific <- data_set[, c("id","Sched","Paragraph","Product","Interval","Specific_SH","Specific_1946_after","Specific_Geneva","Specific_Annecy","Specific_Torquay","Specific_Geneva56_A","Specific_Geneva56_B","Specific_Geneva56_C","Specific_Dillon_A","Specific_Dillon_B")]
#specific2 <- data.frame(t(specific[,]))

ad_valorem <-data_set[,c("id","Sched","Paragraph", "Product","Interval","Ad_Valorem_SH","Ad_Valorem_1946_after", "Ad_Valorem_Geneva","Ad_Valorem_Annecy", "Ad_Valorem_Torquay", "Ad_Valorem_Geneva56_A", "Ad_Valorem_Geneva56_B", "Ad_Valorem_Geneva56_C","Ad_Valorem_Dillon_A", "Ad_Valorem_Dillon_B")]
#ad_valorem2<-data.frame(t(ad_valorem[,]))

#units<-data_set[, c("Sched","Paragraph","Product","Units_SH","Units_1946_after" ,"Units_Geneva", "Units_Annecy", "Units_Torquay", "Units_Geneva56_A", "Units_Geneva56_B", "Units_Geneva56_C", "Units_Dillon_A", "Units_Dillon_B")]
#units2<-data.frame(t(units[,]))

shortnames <- data_set %>%
  rename( Para = Paragraph, Prod = Product, Desc = Description, Int = Interval,
          Sp_SH = Specific_SH, Sp_BG=Specific_1946_after, Sp_Ge = Specific_Geneva, Sp_An = Specific_Annecy, 
          Sp_To = Specific_Torquay, Sp_To = Specific_Torquay, Sp_GA = Specific_Geneva56_A,
          Sp_GB = Specific_Geneva56_B, Sp_GC = Specific_Geneva56_C, Sp_DA = Specific_Dillon_A,
          Sp_DB = Specific_Dillon_B,
          AV_SH = Ad_Valorem_SH,AV_BG=Ad_Valorem_1946_after, AV_Ge = Ad_Valorem_Geneva, AV_An = Ad_Valorem_Annecy, 
          AV_To = Ad_Valorem_Torquay, AV_To = Ad_Valorem_Torquay, AV_GA = Ad_Valorem_Geneva56_A,
          AV_GB = Ad_Valorem_Geneva56_B, AV_GC = Ad_Valorem_Geneva56_C, AV_DA = Ad_Valorem_Dillon_A,
          AV_DB = Ad_Valorem_Dillon_B,
          Un_SH = Units_SH,Un_BG=Units_1946_after, Un_Ge = Units_Geneva, Un_An = Units_Annecy, 
          Un_To = Units_Torquay, Un_To = Units_Torquay, Un_GA = Units_Geneva56_A,
          Un_GB = Units_Geneva56_B, Un_GC = Units_Geneva56_C, Un_DA = Units_Dillon_A,
          Un_DB = Units_Dillon_B)

rm(f_replace)


##############################################################                 ############################################################## 
############################################################## Optional Chunks ############################################################## 
##############################################################                 ############################################################## 


############################################################## export csv file
# write.csv(data_set,"C:/Users/victo/OneDrive/桌面/June presentation/test_2.csv", row.names = FALSE)


############################################################## summary statistic

# sum_specific_bySched <- specific %>%   
#   group_by(Sched) %>%  
#   summarize(SH = mean(Specific_SH, na.rm=TRUE),
#             SA = mean(Specific_1946_after,na.rm=TRUE),
#             G1 = mean(Specific_Geneva, na.rm=TRUE),
#             An = mean(Specific_Annecy, na.rm=TRUE),
#             To = mean(Specific_Torquay, na.rm=TRUE),
#             GC = mean(Specific_Geneva56_C, na.rm=TRUE),
#             DB = mean(Specific_Dillon_B, na.rm=TRUE),
#             chgSA = ((SH - SA)/SH)*100,
#             chgG1 = ((SA - G1)/SA)*100,
#             chgAn = ((G1 - An)/G1)*100,
#             chgTo = ((An - To)/An)*100,
#             chgGC = ((To - GC)/To)*100,
#             chgDB = ((GC - DB)/GC)*100,
#   ) %>%
#   ungroup() # ungrouping variable is a good habit to prevent errors
# kbl(sum_specific_bySched,digits=2,booktabs=T) %>% kable_styling(position = "center")
