#Name: Trey Gardner
#Assignment: Homework #4
#Due: April 25th 2025
#Class: CS2020 (F)

#Part 1:

#Creating Data
drink_sugar <- c(9.976959, 10.012098, 9.963002, 9.998574, 10.002431, 10.036959,
                 10.014752, 9.985491, 10.026681, 9.981070, 10.011058, 9.958206,
                  10.047110, 9.931327, 9.980533, 9.982266, 9.956010, 9.992339,
                  9.957293, 9.907988, 9.983450, 10.018341, 9.979281, 9.931443,
                  10.019777)
print(drink_sugar)

#settings "population" standard
goal_sugar_level <- 10 

#Running One Sample T-Test
t_test_results <- t.test(drink_sugar, mu = goal_sugar_level)

#displaying results
print(t_test_results)

#Part 2:
#Creating Data
#one week of sales before discount program
daily_sales_before_discount_program <- c(49971.98, 49988.49, 50077.94, 50003.53,
                                         50006.46, 50085.75, 50023.05)
print(daily_sales_before_discount_program)

#one week during discount program
daily_sales_during_discount_program <- c(50011.75, 50040.66, 50052.72, 50136.20, 
                                         50092.99, 50095.04, 50080.53)
print(daily_sales_during_discount_program)

#Running Paired T-Test
paired_results <- t.test(daily_sales_before_discount_program, daily_sales_during_discount_program, paired = TRUE)

#displaying results
print(paired_results)

