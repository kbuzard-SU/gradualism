#rm(list = ls())# clear all

# Create elements based on sheet "Units Key"

a<-c('Cents per pound','Cents per gallon','Cents per ounce','Cents per square foot','Cents per ton',
     'Cents per cubic foot','Cents per gross', 'Cents per each','Cents per dozen','Cents per line per gross',
     'Cents per each 3025 square inches','Cents per 1000 ft. board measure',
     'Cents per additional for each 1% of total sugars and fractions of 1% in proportion',
     'Cents per bu. of 48 pounds', 'Cents per bu. of 56 pounds', 'Cents per bu. of 32 pounds',
     'Cents per bu. of 60 pounds', 'Cents per bu. of 50 pounds','Cents per 100 yards',
     'Cents per average number of pounds', 'Cents per square yards','Cents per 288 inches',
     'Cents per linear foot of the standard width of 1-3/8 inches','Cents per square inch',
     'Cents per linear foot', 'Cents per crate of 2.45 cubic feet','Cents per board foot','Cents per inch')
b<-c('Units: =1','Units: =2','Units: =4','Units: =6','Units: =7','Units: =10','Units: =18','Units: =19',
     'Units: =20','Units: =24', 'Units: =28','Units: =29', 'Units: =30','Units: =33', 'Units: =34',
     'Units: =35', 'Units: =36','Units: =37','Units: =41', 'Units: =42','Units: =44', 'Units: =52',
     'Units: =53', 'Units: =54', 'Units: =55','Units: =57','Units: =58', 'Units: =59')

data_units<-data.frame(a,b)
names(data_units)<-c('Units','Keys')
