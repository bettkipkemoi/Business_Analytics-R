# Part 0: Clear Environment and Load Libraries

rm(Logistic_Model,myData1,myData2,predictions)

library(arules)
library(arulesViz)



## Part 1: Breakfast Foods


# Import the Data

myData1 <- read.transactions("Breakfast_Transactions.csv")

# Calculate the Association Rules

rules1 <- apriori(myData1,parameter = list(supp = 0.01, conf = 0.2, minlen = 2))

# Order the Rules by Lift

srules1 <- sort(rules1, by = "lift")

# Output the Rules

inspect(head(srules1))


# Question 1: {juice bread,,,,,,}=>{orange} and {juice,,,,,,}=>{orange}, lift values = 6.797753 and 5.523174 respectively.
  # It means that the most frequent item sets sold have the set of rules implied.


# Question 2: Support = 0.01983471 and 0.02148760, confidence = 1.0000000 and 0.8125000 respectively.
  #It means that the subsets of the frequent item set are themselves frequent 

# Question 3: You can filter, sort and arrange them to have juice and bread more conspicuous to the buyers.





## Part 2: Lunch and Dinner Foods


# Import the Data

myData2 <- read.transactions("Lunch_and_Dinner_Transactions.csv")

# Calculate the Association Rules

rules2 <- apriori(myData2,parameter = list(supp = 0.01, conf = 0.2, minlen = 2))

# Order the Rules by Lift

srules2 <- sort(rules2, by = "lift")

# Output the Rules

inspect(srules2)


# Question 4: {sauce,chicken,,,,,,}=>{tomato} and {sauce,steak,,,,,,}=>{tomato}. Lift values = 6.578125 and 6.578125 respectively.
  # It means that the most frequent item sets sold have the set of rules implied.

# Question 5: Confidence = 1,1 and support = 0.01187648 and 0.02137767 respectively.
  # It means that the subsets of the frequent item set are themselves frequent 

# Question 6: You can filter, sort and arrange them to have sauce, chicken and steak more conspicuous to the buyers.



