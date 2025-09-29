#
library(dplyr)
library(ggplot)
library(modeest)

data("iris")
mean(iris$Petal.Width)
median(iris$Petal.Width)
mlv(iris$Petal.Width, method = "mfv")
sd(iris$Petal.Width)
range(iris$Petal.Width)
summary(iris$Petal.Width)

hist(mtcars$mpg,
     main = "histogram of mpg",
     xlab = "mpg", col = "lightblue", border = "black")


plot(mtcars$hp, mtcars$mpg,
     xlab = "Horsepower (hp)",
     ylab = "Miles per Gallon (mpg)",
     main = "Scatterplot of hp vs mpg",
     pch = 19, col = "blue")


boxplot(Ozone ~ Species, data=airquality,
        main="boxplot og airquality",
        xlab = "Species", ylab = "Ozone",
        col=c("lightgreen","lightblue","pink"))

data(iris)
varience_sepal_width <- var(iris$Sepal.Width)
print(varience_sepal_width)
