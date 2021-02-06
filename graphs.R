library(tidyverse)
library(foreign)
library(dplyr)
library(readr)
library(ggplot2)


#First attempt at a graph
specific <- data_set[, c("Paragraph","Product","Specific_SH","Specific_Geneva","Specific_Annecy","Specific_Torquay","Specific_Geneva56_A","Specific_Geneva56_B","Specific_Geneva56_C","Specific_Dillon_A","Specific_Dillon_B")]
specific2 <- data.frame(t(specific[,]))

round <- c("SH","Gen1","Annecy","Torquay","Gen56A","Gen56B","Gen56C","DilA","DilB")

ggplot(data = specific2, aes(x=reorder(round),t.specific.2....),y=X157) + geom_point()
ggplot(data = specific2, aes(x=X156,y=X157)) + geom_point()

X157 = specific2[3:10,157]
specific3 = specific2[3:10,]
ggplot(specific3, aes(x=reorder(round),t.specific.2....)) +  geom_line(aes(y=X157))
