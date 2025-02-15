# Importing the readr library
library(readr)

#A.) Importing and declaring data from .csv file
Auto <- read_csv("DATA/Auto.csv")

#B.) What type and class is "Auto"?
typeof(Auto)
class(Auto)

#C.) What are the dimensions of "Auto"?
dim(Auto)

#D.) Remove all null values in "Auto"/New dimensions?
Auto <- na.omit(Auto)
dim(Auto)

#E.) Report all names of variables in "Auto"

#F.) Create direct access to fields and re-plot "cylinders" to "mpg"

#G.) Cover "Cylinders to factor, plot (clyinder x mpg)

#H.) Create histogram for "mpg" (only 10 green bars)

#I.) Create matrix of each combinations in "Auto"

#J.) Report Descriptive Statistics
