## Unit 2 Guided Practice Answer Key


## Chapter 6 Exercise - Example 6.1

#Import the data file into a data frame (table) and label it myData1.


# Create the Linear Model and name it Model1

Model1 <- lm(Earnings ~ Cost+Grad+Debt+City, data = myData1)
summary(Model1)

# Predict post-college earnings if a college's average annual cost is $20,000, its grad rate is 65%,
# its percentage of students paying down debt is 85%, and it is NOT located in a city.

predict(Model1, data.frame(Cost=20000, Grad=65, Debt=85, City=0))

#Questions
# 1. Degree cost, graduation rate and whether the college is based in a city or not are significant at 95% confidence interval. Their ?? values are less than 0.05.
# 2. The earnings of a college student who studied in a city based college increases by 2526.7888 while other factors are held constant.
# 3. The adjusted R^2 value for the model is 0.4087. This means that 40.87% of the total variation of the variables is explained.


## Exercise 7-33

#Import the data file into a data frame (table) and label it myData2.

# Create the Linear Model and name it Model1

Model2 <- lm(Rent ~ Sqft, data = myData2)
summary(Model2)

# Plot Rent against Sqft and add the Linear Regression line

plot(myData2$Rent ~ myData2$Sqft)
abline(Model2)

#Questions
# 1. Sqft is significant at 95% confidence interval because ??<0.05.
# 2. A unit change in the Sqft increases the rent by 3.9827.
# 3. The adjusted R^2 is 0.7395. This means that the explained variation accounted for rent by the variables is 73.95%.


# Create the Exponential Model and name it Model2

Model3 <- lm(log(Rent) ~ Sqft, data = myData2)
summary(Model3)

# "Add" the exponential curve to your existing scatterplot

curve(exp(5.4926548 + 0.0018020*x), add=TRUE, col="blue")

#Questions
# 1. Sqft is significant at 95% confidence interval because ??<0.05.
# 2. A 200 sqft change of an apartment will mean an increase of rent by 200.0018020.
# 3. The adjusted R^2 is 0.8322, that is the explained variation accounted for the variables is 83.22%. Using the exponential model to estimate the apartment rents would more efficient basing on the adjusted R^2 values.