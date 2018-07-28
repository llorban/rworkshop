
# ---------- Hypothesis Testing in R ------------ #

## Exercises with a Dataset: 

# Load PlantGrowth dataset, which measured plant weight for three groups: 'ctrl', 'trt1', and 'trt2'
plants <- PlantGrowth


# Get the weights for each group into their own variables.



# Is there a significant difference in the weights between trt1 and ctrl?  What about trt2 and ctrl?




## Exercises with geneerated data

# 1: Plot the normal distribution's density with mean of 1.5 and standard deviation of 4.  What value is less than the p=.05 mark?


# 2: Perform a one-sampled t-test for 50 randomly-generated data points from the last distribution.  Is the sample signaficantly different from 0?


# 3: Does the t-test return the correct result?  Compute the t-test manually and compare the calculated test statistic with the one R gave you.
# (Formula: https://en.wikipedia.org/wiki/Student%27s_t-test#One-sample_t-test)


# 4: Discover the replicate() function to answer the following:
# What is the probability that this drawing 50 sample points from this population distribution will be significantly different from 0 at the .05 level?


