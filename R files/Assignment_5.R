## Week 3 Assignment - Logistic Regression vs K-Nearest Neighbor



## Part 1: Clear your environment and load the caret and InformationValue libraries

rm(myData,Model1,Model2)

library(caret)
library(InformationValue)




## Part 2: Import and analyze the given data

# Import the data using File -> Import Dataset and call it myData

# Analyze the data using summary()

summary(myData)

    # Question 1: What is the average loan default rate of this set of customers?
      # 0.2938

    # Question 2: What is the lowest FICO score in this data?
      # 507.0

    # Question 3: What is the median income of this set of customers?
      # 29020



## Part 3: Create and Analyze the Logistic Regression

# Create the logistic regression using Default as the dependent variable and 
# Income and FICO score as the independent variables

Logistic_Model <- glm(formula = Default ~ `Customer Income` + `FICO Credit Score`, data = myData, family = "binomial")
summary(Logistic_Model)

    # Question 4: Is each independent variable significant to the 95% confidence level? How can you tell?
      # Yes. From the p-values, which are all less than 0.05.

    # Question 5: Interpret the FICO coefficient.
      # A negative FICO Credit Score increases the Default rate of loans by 0.02092509
       



## Part 4: Determine the accuracy of the logistic regression

# Create the confusion matrix

predictions <- ifelse(predict(Logistic_Model, myData, type = "response") < 0.5, 0, 1) 

confusionMatrix(predictions,myData$Default)
                
    # Question 6: Add up the correct predictions 0-0 and 1-1, divide by grand total of 4 numbers
      # Accuracy = (372 + 99)/(372+39+72+99) = 0.8092

    # Question 7: Compare this to the KNN accuracy rate of 82.9%. Which algorithm is better in this case?
      # 80.92% is lower than 82.9%. KNN accuracy rate is better.

    # Question 8: Consider the more accurate algorithm. Does this mean it will always be the best? Why or why not?
      #  No. KNN can be quite impacted negatively by weak predictors.



