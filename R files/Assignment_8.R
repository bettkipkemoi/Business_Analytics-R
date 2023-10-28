## Week 5 Project - Data Clustering




## Part 1: Import, Inspect, and Normalize

rm(myData1,rules1,srules1)

library(cluster)

#Import the data file into a data frame (table) and label it myData.

summary(myData)

myDataValues <- subset(myData,select = -Food) # this step is done for you
myDataNormalized <- scale(myDataValues)

#Q1: What are the three characteristics described in each field?
  # Average time, water content and protein content

# Q2: Explain why you must normalize the data before clustering. Which field in this data set would be overweighted in an unnormalized clustering?
  # To remove noise, outliers or redundant data, and improve efficiency of clustering algorithms

#Q3: Your store has four aisles. Based on the types of foods listed, list a possible grouping of items that would make sense. Explain why.
  # {1,2}, {2,3}, {1,2,3}. The types of food will only fall in three categories; average time, water content and protein content.

## Part 2: Clustering And Analysis


kResult <- pam(myDataNormalized,4)
summary(kResult)



# Add the Cluster to the original data
myData$Cluster <- as.numeric(kResult$cluster)
View(myData)

# Group the cars by Cluster and average the values
myDataValues$Cluster <- as.numeric(kResult$cluster)
aggregate(myDataValues, by=list(myDataValues$Cluster), FUN = mean)

#Q4: What other foods are listed in the cluster that includes "Steak"? Do the foods in this group make sense? Do any foods look like they might belong in another group? If so, explain why.
  # Pasta, Orange juice, cheese and tomato sauce. Yes, orange juice and tomato sauce. They might be just be accompaniments.

#Q5: What is the average protein content of the group with the highest protein content? The lowest?
  # Highest = 0.8753098 Lowest =  -1.0595856

#Q6: It is important to know that algorithms are only as smart as the data provided, which means they are not always perfect. Choose one item you think should be placed into a different cluster, and explain why.
  # Bread. While its sil_width is very low compared with the other food in the same category.

