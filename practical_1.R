#Display the first 15 rows of the mtcars dataset.
data("mtcars")
head(mtcars, n = 15)
str(mtcars)
summary(mtcars)

#Find the maximum and minimum value of Sepal. Length from iris.
range(iris$Sepal.Length)

#calculate the mean of the variable mpg in mtcars.
mean(mtcars$mpg)

#Display the structure of the airquality dataset.
str(airquality)

#Check whether the number 100 is greater than 50 in R.
100 > 50
