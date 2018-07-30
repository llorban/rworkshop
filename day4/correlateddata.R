#load necessary package
library(MASS)

# Script for generating random data

#specifies population mean, variance, and covariance
mu <- rep(0,2)
Sigma <- matrix(.35, nrow=2, ncol=2) + diag(2)*.65

#randomly draws data with prespecified correlation
rawvars <- mvrnorm(n=33, mu=mu, Sigma=Sigma)

#TODO: perform a correlation test with something like cor.test(x,y)$p.value

#TODO: Create a function that runs this code 1 time

#TODO: use replicate to run this function 1000 times
