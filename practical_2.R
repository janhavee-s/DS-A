#Import the airquality dataset and check its structure using str ().
data("airquality")
str(airquality)

#Find the number of missing values in airquality.
sum(is.na(airquality))
colSums(is.na(airquality))

#Use summary() on the mtcars dataset and interpret the output.
summary(mtcars)

#Find the mean horsepower (hp) in the mtcars dataset.
mean(mtcars$hp)

#Group the iris dataset by species and calculate the average Sepal. Width.
library(dplyr)
iris %>%
  group_by(Species) %>%
  summarise(
    Avg_sepal_width = mean(Sepal.Width)
  )
