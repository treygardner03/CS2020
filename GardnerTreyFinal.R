#Name: Trey Gardner
#Class: CS2020 (F)
#Assignment: Final
#Due: May 14th, 2025

#importing and creating data/libraries
install.packages("car")
library(car)
library(readr)

alzheimers_data <- read_csv("DATA/Alzheimer.csv")

#Q1: Alzheimer's Data

  #A.1 - relationship between drug and gender
  #We want to determine if the distribution of genders is independent of the
  #type of drug administered

  drug_gender_table <- table(alzheimers_data$DrugType, alzheimers_data$Gender)
  chisq.test(drug_gender_table)
    
  #A.2 - relationship between drug and effectiveness
  #We want to compare the means across 3 independent variables on 1 dependent variable
  
  aov(EffectivenessScale ~ DrugType, data = alzheimers_data)

  #A.3 - relationship. between gender and drug effectiveness
  #We want to compare the means of two independent test on 1 dependent variable
  
   t.test(EffectivenessScale ~ Gender, data = alzheimers_data)
  
#Q2: Teaching Methods
  
  #Creating Data
  group_a_finals <- c(78, 85, 92, 88, 76, 80, 85, 84, 89, 91)
  group_b_finals <- c(85, 89, 94, 91, 87, 90, 93, 88, 90, 92)
  
  #We want to compare the means of two independent variables and determine if there
  #is a significant difference
  
  shapiro.test(group_a_finals)
  shapiro.test(group_b_finals)
  
  #manipulating data
  group_label <- c(rep("Group_A", length(group_a_finals)), rep("Group_B", length(group_b_finals)))
  combined_scores <- c(group_a_finals, group_b_finals)
  scores_dataset <- data.frame(Scores = combined_scores, Group = as.factor(group_label))
  leveneTest(Scores ~ Group, data = scores_dataset)
  
  t.test(group_a_finals, group_b_finals, var.equal = TRUE)
  
  wilcox.test(group_a_finals, group_b_finals, exact = FALSE)
