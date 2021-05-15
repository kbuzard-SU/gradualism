library(data.table)
# transpose
av <- ad_valorem %>%
  rename( AV_SH = Ad_Valorem_SH,AV_A=Ad_Valorem_1946_after, AV_Ge = Ad_Valorem_Geneva, AV_An = Ad_Valorem_Annecy, 
          AV_To = Ad_Valorem_Torquay, AV_To = Ad_Valorem_Torquay, AV_GA = Ad_Valorem_Geneva56_A,
          AV_GB = Ad_Valorem_Geneva56_B, AV_GC = Ad_Valorem_Geneva56_C, AV_DA = Ad_Valorem_Dillon_A,
          AV_DB = Ad_Valorem_Dillon_B)


t_av <- transpose(as.data.table(av))

# get row and colnames in order
colnames(t_av) <- rownames(av)
rownames(t_av) <- colnames(av)

library(ggplot2)

# create data
xValue <- c(1930,1946,1947,1949,1951,1956,1957,1958,1963,1964)
yValue <- t_av[6:15,27]
data <- data.frame(xValue,yValue)

# Plot
ggplot(data, aes(x=xValue, y=reorder(X27,-xValue))) + geom_point() +
  labs(x="Year", y="Ad Valorem Tariff (%)") +
  ggtitle("My dope plot") + theme(plot.title = element_text(hjust = 0.5))


  