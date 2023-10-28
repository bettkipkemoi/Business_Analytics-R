## Week 3 Project - Do Coupons Work? Does Marketing Work?



## Part 0: Clear your environment and load the caret and InformationValue libraries

rm(Logistic_Model,myData,predictions)

library(caret)
library(InformationValue)



## Part 1: Import and Visualize Profitability by Food Type

# Import the data and name it myData1

# Create a new field calculating profit
  
  myData1$Profit <- myData1$Revenue - myData1$Expenses
  
# Create a new field calculating profit margin
  
  myData1$ProfitMargin <- (myData1$Profit/myData1$Revenue)*100
  
# Output myData1:
  
  myData1
  
    # Question 1:
    # A: Which product has the highest profit? The highest profit margin?
      # Meat has the highest profit while Drinks has the highest profit margin.
    # B: The lowest profit margin? Are there any lines that are not profitable at all?
      # Deli/Bakery has the lowest profit margin. House care and personal care are not profitable.
  
  


## Part 2: Import and Calculate Logistic Regression

# Import the data and name it myData2

# Create the logistic model using Marketing_Budget and Coupon to predict Returned

Logistic_Model <- glm(formula = Returned ~ `Marketing_Budget` + `Coupon`, data = myData2, family = "binomial")
summary(Logistic_Model)

    # Question 2: Are both coefficients statistically significant at the 95% confidence level? How do you know?
      # No. Reading their pvalues, which are greater than 0.05.

    # Question 3: Interpret the Market coefficient. Remember that Market is in 10's of thousands of $
    # Can you definitely say that marketing had an effect on customer retention?
      # A unit reduction in marketing budget results in a decrease of 1.091e-14.
      # No, marketing has insignificant effect in customer retention.
 
    # Question 4: Interpret the Coupon coefficient. Can you definitely say that coupons had an effect on customer retention?
    # Would could be a potential problem with coupons?
      # A unit increase in marketing budget results in an increase of 1.835e-05.
      # No, coupon has insignificant effect in customer retention.
      # Marketing budget effect.


    # Question 5: What is the accuracy of the logistic model. Create a confusion matrix to determine this.

predictions <- ifelse(predict(Logistic_Model, myData2, type = "response") < 0.5, 0, 1) 

confusionMatrix(predictions,myData2$Returned)

      # 100%

