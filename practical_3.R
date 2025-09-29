#Count how many missing values are present in the airquality dataset.
sum(is.na(airquality))
colSums(is.na(airquality))

#Replace missing values in Ozone with the median instead of mean.
airquality$Ozone[is.na(airquality)] <- median(airquality$Ozone, na.rm = TRUE)

#Create a duplicate dataset from mtcars and remove the duplicates.
data(mtcars)
mtcars_with_duplicates <- rbind(mtcars, mtcars[1:5, ])
nrow(mtcars_with_duplicates)

mtcars_clean <- distinct(mtcars_with_duplicates)
nrow((mtcars_clean))

#Convert all car names in mtcars row names to uppercase.
rownames(mtcars) <- toupper(rownames(mtcars))
head(mtcars)

#Convert the Species column in iris dataset into numeric codes (1, 2, 3).
data(iris)
iris$Species_numeric <- as.numeric(iris$Species)
head(iris)

