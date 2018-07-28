# After starting R, the console is ready for input. You can enter values next to the prompt (>), and press Enter to perform calculations. 
1 + 2

# To square numbers, use the hat (^) sign:
3^2

# Use slash (/) to divide numbers and star (*) to multiply them:
4/4

7*7

# This is all great so far, but if I want to refer back to an earlier calculation? You can assign values to variables using the operator "=". Just typing the variable by itself at the prompt will print out the value. Another form of the operator is "<-" is also good.
x = 1
x

# This is fine, but in R, there is another way: 

x <- 1

# This is called an assignment operator. For now you can use either, but the differences will become clearer later on when we discuss functions in depth.


# An R function is invoked by its name, then followed by the parenthesis, and zero or more arguments. The following applies the function c to combine three numberic values into a vector.
y = c(1,2,3)

# Vectors can contain string values too
colours = c("red","yellow","blue")

# Text after the hastag sign within the samel line is considered a comment: 
1 + 1   # this is a comment

## Data Types
# Numerics
k = 1
k
class(k)    # prints the class name of k, "numeric"
is.integer(k)  # is k an integer?

y = as.integer(1) 
y           # prints the value of y
class(y)    # prints the class name of y, "integer"

as.integer("3.45")   # will convert it to an integer, 3

as.integer("red")   # will produce an error

as.numeric() ## will convert to a float value

## Basic vector operations
employmentStatus = c(TRUE,FALSE,FALSE,TRUE,TRUE,TRUE,FALSE)
employmentStatus

# Tells you the number of elements in the list
length(employmentStatus)

# Adds up all the values in the list
sum(employmentStatus)

# you can do arithmetics with vector operations:
sum(employmentStatus)/length(employmentStatus)

# Pick out the third element from the list
employmentStatus[3]

# Pick out the third, fourth and fifth elements from the list
employmentStatus[3:5]

## Building a data file
subjectID = c(101,102,103,104,105)
demographics = c("Surrey","Surrey","Delta","Vancouver","Langley")
employmentStatus = c(TRUE,TRUE,FALSE,FALSE,TRUE)
data = data.frame(subjectID, demographics, employmentStatus)
data

########## BREAK

# Load the data we generated in class
siblings = c(1,3,3,1,2,2,1,1,1,1,0,3,1,2,5,2,0,0,2,2,1,1,2,1,6,2,2,2,1,1,2)

# To compute the sample size, you have multiple options
# 1. Count the number values in your original data set
length(siblings)

# 2. Add up the frequencies in the "n" column of the frequency table
# Use the dollar sign ($) to refer to column names within a data frame
sum(siblings_info$n)

###### BREAK

# The goal of this exercise is to find the central tendency measures of a data set we generated

# Load the data we generated in the class (age)
age=c(17,27,19,23,25,20,54,21,22,22,20,19,19,28,20,19,20,19,21,59,19,19,20,21,29,21,20,35)

# A partial calculation, needed for the mean is to sum all the scores. We save the result in a variable.
summed_age = sum(age)

# Another partial calculation is to find the sample size (n). We save this in a variable too.
sample_size = length(age)

# Calculate the mean by dividing the sum of scores with the sample size
mymean = summed_age/sample_size
mymean

# You can verify your calculations by using the built-in R function to compute the mean:
mean(age)

# Find the median of the data set
median(age)

# At the end of this exercise you should have a good understanding of how to calculate the central tendency measures of a continuous variable.
