## Week 1 Project Template

## Part 1

# Import data by using File -> Import Dataset. Name it myData1

# Create a barplot of Number of Customers by Age
ageTable <- table(myData1$Age)
View(ageTable)
barplot(ageTable, col = "yellow", main = "Number of Customers by Age", xlab = "Age", ylab = "# of Customers")



## Part 2

# Import data by using File -> Import Dataset. Name it myData2

# Create a barplot of Number of Customers by Market
marketTable <- table(myData2$Market)
View(marketTable)
barplot(marketTable, col = "yellowgreen", main = "Number of Customers by Market", xlab = "Market", ylab = "# of Customers")



## Part 3

# Import data by using File -> Import Dataset. Name it myData3

# Create a barplot of amount of protein of each food
proteinTable <- table(myData3$Protein_Content)
View(proteinTable)
barplot(proteinTable, col = "yellow3", main = "Amount of Protein of Each Food", xlab = "Protein content", ylab = "Food types")
