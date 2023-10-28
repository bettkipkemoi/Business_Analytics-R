## Using print()

print("This is my first script.")
print("This is easy!")



## Entering Data and Using Fuctions
# Use c(), View(), and mean()

Example_1 <- c(-4,0,6,1,-3,-4)
View(Example_1)
mean(Example_1)



## Importing Data and Using Functions
# Use the import feature, mean(), summary(), rm(), and $
# Be sure to name your data "myData" as you import it

mean(myData$SAT)
summary(myData)



## Creating a Scatterplot
# Use plot()

plot(myDataScatter$SAT ~ myDataScatter$HSGPA, ylab = "SAT Score", xlab = "High School GPA", col = "blue")



## Creating a Line Plot
# Use plot()

plot(myDataLine$Growth~myDataLine$Year, main = "Comparing Growth and Value Stocks", xlab = "Year", ylab = "Annual Returns", col = "blue", type = "l")
lines(myDataLine$Value~myDataLine$Year, col = "red", type = "l")


## Creating a Bar Plot
# Use table() and barplot()

Status <- table(myData$Decision)
View(myData$Decision)
barplot(Status, col = "green", main = "Number of Students Accepted and Denied", xlab = "Admission Status", ylab = "# of Students")


## Packages
# Sometimes we will be using packages not included in the standard R suite
# This command will connect to the cran.rstudio.com website and download the specific packages
# These packages contain popular functions that are created by regular people
# You will see a lot of text flying by for a minute or two, this is normal.
# When it is done, it will say "The downloaded source packages are in" and then your file location.

install.packages(c("caret","gains","pROC"))

# Done!