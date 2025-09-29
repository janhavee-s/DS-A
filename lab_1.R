#1. variables & data types
name = "om"
print(name)
age = 21
print(age)
is_student <- TRUE

#2.Create a vector containing the numbers 1 to 10.
vector <- 1:10

#3.Create a sequence from 5 to 50 with a step size of 5
s <- seq(5,50, by = 5)

#4.Store the names of 5 fruits in a character vector and display the second and fourth fruit.
fruits <- c("apple", "banana", "cherry", "grapes", "oranges")
fruits[c(2,4)]

#5.Create a numeric vector of 10 random numbers between 1 and 100, then find
set.seed(1)
nums <- sample(1:100:1)
nums
max(nums);min(nums);mean(nums)

#6.Create a data frame with columns: Name, Age, Marks. Enter at least 5 records.
df <- data.frame(
  name = c("n1", "n2", "n3","n4", "n5"),
  age = c(12, 13, 14, 15,16),
  marks = c(55, 66, 77, 88, 99)
)
df

#7.Write code to sort the data frame by Marks in descending order.

df[order(-df$marks), ]


#2. Operators in R

#1. Perform the following operations:
10 + 5
10 - 5
10 * 5
10 / 5
10 %% 3
10 %/% 3

#2.Compare if 15 is greater than 10, and if 7 is equal to 7.
15>10
7==7

#3.Create two vectors:

a <- c(2, 4, 6, 8)
b <- c(1, 3, 5, 7)
a_vec <- a + b
s_vec <- a - b
m_vec <- a * b
print(a_vec)
print(s_vec)
print(m_vec)

#4. Use logical operators to check
a > 5
b <= 4

#5. Use %in% to check if the number 5 exists in vector a.
5 %in% a

#6. Given x <- c(TRUE, FALSE, TRUE, FALSE) and y <- c(TRUE, TRUE, FALSE, FALSE), apply
x <- c(TRUE, FALSE, TRUE, FALSE)
y <- c(TRUE, TRUE, FALSE, FALSE)

x & y
x | y
!x

# Loops in R
#1. Write a for loop to print numbers from 1 to 10.
for (i in 1:10) {
  print(i)
}

#2. Write a while loop to sum numbers from 1 to 100.
sum_total <- 0
i <- 1
while (i <= 100) {
  sum_total <- sum_total + i
  i <- i + 1
}
print(sum_total)

#3. Write a loop to print only even numbers between 1 and 50.
for (i in 1:50) {
  if (i %% 2 == 0) {
    print(i)
  }
}

#4. Write a loop to print the multiplication table of 7.
for (i in 1:10) {
  cat("7 x", i, "=", 7 * i, "\n")
}

#5. Create a loop to calculate the factorial of a given number n.
n <- 6    
fact <- 1
for (i in 1:n) {
  fact <- fact * i
}
print(fact)

#6. Write a nested loop to print a star pattern:
rows <- 5
for (i in 1:rows) {
  for (j in 1:i) {
    cat("*")
  }
  cat("\n")
}

#Conditionals in R

#1. Write an if statement to check if a number is positive or negative.
n <- as.integer(readline(prompt = "Enter a number :"))
if (n > 0){
  print("The number is positive")
}
if (n < 0){
  print("The number is negative")
  
}



#2. Write an if-else statement to check if a given number is even or odd.
num <- as.integer(readline(prompt="Enter an integer: "))
if (num %% 2 == 0) {
  print("Even")
} else {
  print("Odd")
}

#3. Write a program to check if a given year is a leap year.
year <- as.integer(readline(prompt="Enter a year: "))
if (year %% 4 == 0) {
  if (year %% 100 == 0) {
    if (year %% 400 == 0) {
      print(paste(year, "is a leap year"))
    } else {
      print(paste(year, "is not a leap year"))
    }
  } else {
    print(paste(year, "is a leap year"))
  }
} else {
  print(paste(year, "is not a leap year"))
}

#4. Take a numeric input for marks and print:
marks <- as.numeric(readline(prompt="Enter marks: "))
if (marks >= 40) {
  print("Pass")
} else {
  print("Fail")
}

 
#5. Using nested if-else, assign grades:
marks <- as.numeric(readline(prompt="Enter marks: "))
if (marks >= 90) {
  grade <- "A"
} else if (marks >= 75) {
  grade <- "B"
} else if (marks >= 60) {
  grade <- "C"
} else {
  grade <- "Fail"
}
print(paste("Grade:", grade))

 
#Functions in R

# 1. Function to add two numbers
add_numbers <- function(a, b) {
  return(a + b)
}
add_numbers(5,7)

# 2. Function to return the square of a number
square <- function(n) {
  return(n^2)
}
square(6)

# 3. Recursive factorial function
factorial_recursive <- function(n) {
  if (n == 0 || n == 1) {
    return(1)
  } else {
    return(n * factorial_recursive(n - 1))
  }
}
factorial(4)

# 4. Function to check if a number is prime
prime <- function(n) {
  if (n <= 1) {
    return(FALSE)
  }
  if (n == 2) {
    return(TRUE)
  }
  if (n %% 2 == 0) {
    return(FALSE)
  }
  for (i in 3:sqrt(n)) {
    if (n %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}
prime(7)

# 5. Function to return mean, median, and standard deviation of a vector
vector_stats <- function(vec) {
  stats <- list(
    mean = mean(vec),
    median = median(vec),
    sd = sd(vec)
  )
  return(stats)
}
vector_stats(c(10,20,30,40,50))

# 6. Function to get top 5 highest values from a column in a data frame
top5_values <- function(df, column_name) {
  col <- df[[column_name]]
  top_values <- head(sort(col, decreasing = TRUE), 5)
  return(top_values)
}
df <- data.frame(marks = c(45,78,234,54,65,99,88))
top5_values(df,"marks")


#data analysis

#Q.1 and Q.2 Load the Adult dataset into R.

cols <- c("age","workclass","fnlwgt","education_num",
          "marital_status","occupation","relatonship","race","sex",
          "capital_gain","capital_loss","hours_per_week",
          "native_country","income")

adult <- read.csv2("C:/Users/Student/Documents/om nathe/datasets_lab1 (1)/adult-data.txt", 
                  header = FALSE, col.names = cols,
                  strip.white = TRUE, na.strings = "?", stringsAsFactors = FALSE)



print(head(adult, 10))
View(head(adult, 10))

# 3. Structure of dataset:
str(adult)

#Q.4 Average age:
mean_age <- mean(adult$age, na.rm = TRUE)

# 5. Count income categories:
income_counts <- table(adult$income)

#Q.6 
occ_counts <- sort(table(adult))

#Q.7
print(tapply(adult$hours_per_week, adult$income, 
             mean, na.rm = TRUE))
?tapply

#Q.8 
edu_counts <- sort(table(adult$education), decreasing = TRUE)
barplot(edu_counts, las = 2, cex.names = 0.7,
        main = "Education level distribution",
        ylab = "count")


#Q.9 
tbl <- with(adult, table(native_country, income))
prop_over50k <- tbl[, ">50k"] / rowSums(tbl)


#Data Analysis – IPL Dataset

#Q1. Load the IPL dataset into R
View(batting_bowling_ipl_bat)

#Q.2 Display the first 10 rows.
head(batting_bowling_ipl_bat, 5)

#Q.3 Find the top 5 players with the highest total runs.
batting_bowling_ipl_bat%>%
  arrange(desc(Runs))%>%
  select(Name,Runs)%>%
  head(5)

#Q4.
batting_bowling_ipl_bat%>%
  filter(!is.na(Ave))%>%
  arrange(desc(Ave))%>%
  select(Name,Ave)%>%
  head(1)

#Q5.
top_10 <- batting_bowling_ipl_bat %>%
arrange(desc(SR))%>%
  select(Name,SR)%>%
  head(10)

ggplot(top_10,aes( x = reorder(Name, -SR), y = SR)) +
  geom_bar(stat = "identity", fill = "orange") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Top 10 Players by Strike Rate", x = "Player", y = "Strike Rate")

#Q6)
cor(batting_bowling_ipl_bat$HF, batting_bowling_ipl_bat$Runs, use = "complete.obs")









