## Week 2 Project Answer Key




## Part 1 - Import and Visualize Data

# Import data by using File -> Import Dataset. Name it myData

# Create a scatterplot of money spent vs customer age

plot(myData$Total_Spent ~ myData$Age, ylab = "Total Spent", xlab = "Age", col = "blue")

# Question 1: Is this a linear relationship or exponential? How can you tell?
# Exponential. The scatterplot indicates a curved relationship.




## Part 2 - Create the Linear Model

# Create the linear model and generate the regression summary.

Model1 <- lm(Total_Spent ~ Age+Household_Size+Household_Income, data = myData)
summary(Model1)


# Question 2: Which variables are significant to the 95% confidence level? How can you tell?
# All variables are significant to the 95% confidence level as shown by their alpha values, all less than 0.05.

# Question 3: What is the Adj R-sq value? Interpret this value.
#The adjusted R^2 is 0.7044, that is 70.44% variation explained by the variables.


## Part 3 - Create the Exponential Model

# Create the exponential model and generate the regression summary.

Model2 <- lm(log(Total_Spent) ~ Age+Household_Size+Household_Income, data = myData)
summary(Model2)

# Question 4: What is the coefficient for Household size? Interpret this value.
# 0.5978789785. A unit change in the household size increases the total amount spent by 0.5979
 
# Question 5: What is the Adj R-sq value of the exponential model? Interpret this value.
# 0.8322. The variation explained by the variable is 83.22%

# Question 6: Which model do you think is better and why? Why would this make sense?
# Exponential model is better because the total variation explained by the variables is 83.22% greater than 70.44% in linear model. This makes sense because the R^2 value of the exponential model is higher as well.




