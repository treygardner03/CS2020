#loading data into R memory
#importing data
male_votes <- c(Democrat = 7062, Independent = 3207, Republican = 1468)
female_votes <- c(Democrat = 4084, Independent = 2391, Republican = 2433)

#Creating Table (data frame)
voting_data <- data.frame(
  Gender = c("Male", "Female"),
  Democrat = c(male_votes["Democrat"], female_votes["Democrat"]),
  Independent = c(male_votes["Independent"], female_votes["Independent"]),
  Republican = c(male_votes["Republican"], female_votes["Republican"])
)
#converting to matrix for chi-squared test
votes_matrix <- as.matrix(voting_data[, -1])#removing the gender column
row.names(voting_data) <- voting_data$Gender#replacing it with a row title
  
#running chi-squared test:
X2stat <- chisq.test(votes_matrix, p = c(0.33, 0.33, 0.33))#null hypothesis 
#because we don't know the actual number for this made up town.

print(X2stat)

#printing x^2 statistics:
print(X2stat$statistic)

#printing the degree of freedom:
print(X2stat$parameter)

#printing the p-value:
print(X2stat$p.value)

#printing X2stats from explanation:
print(X2stat$observed)
print(X2stat$expected)
print(X2stat$residuals)
print(X2stat$stdres)
