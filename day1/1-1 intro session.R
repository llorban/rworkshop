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

# use the rle function, "run length encoding"
# counts the number of times the same value appears in a row. for example, if you data set has a sequence of 
# 1, 1, 1, 2, 2, 1, 1, the rle command will spit out three 1's, two 2's and two 1's.
# However, if you *sort* your values prior to applying rle, it can be used to count the frequency of values
rle(siblings)    # execute this just to see the output of the rle functions
sort(siblings)   # execute this just to see the output of the sort function

# Let's take the frequency values and assign them to a variable
siblings_info = rle(sort(siblings))

# now let's put the rle computations into a data frame
# values, frequencies come from the rle variable, and proportions are calculated on the fly
siblings_data = data.frame(values=siblings_info$values, n=siblings_info$lengths)

# view the data table by typing in the new variable name and pressing enter
siblings_data 

# To compute the sample size, you have multiple options
# 1. Count the number values in your original data set
length(siblings)

# 2. Add up the frequencies in the "n" column of the frequency table
# Use the dollar sign ($) to refer to column names within a data frame
sum(siblings_info$n)

# Generate a Histogram of the datat
# Use the breaks argument to set the bin/grouping size)
# Try different bin sizes 
# Use the main argument to add a title
hist(siblings, breaks=5, main="This is my nice histogram title")

###### BREAK

# The goal of this exercise is to find the central tendency measures of a data set we generated

# Load the data we generated in the class (age)
age=c(17,27,19,23,25,20,54,21,22,22,20,19,19,28,20,19,20,19,21,59,19,19,20,21,29,21,20,35)

# Let's create a frequency table
# This is an intermediary step that reorganizes the original data (sorts it, and counts how many times each value occurs
# For this data, it is sufficient to refer to the variable "age" because it is just a vector (e.g., a series of numbers). 
# If age was a data frame, we would have to specify a column name using the "$" sign. For data frames the sequence is as follows:
# variableName$columnName. hypothetical Eg. rle(sort(age$myColumnName)
age_info = rle(sort(age))

# This is our frequency table
age_freq = data.frame(values=age_info$values, n=age_info$lengths)

# Display the frequency table and figure out the Mode of the distribution
age_freq

# Generate a histogram to get a better graphical snapshot of the data
# It should become clear that the data is highly skewed in the positive direction
hist(age)

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
