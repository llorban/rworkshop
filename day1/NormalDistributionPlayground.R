#Green text with a hashtag is a comment. The computer will ignore this text. It is there for human readability.

#### Setup ####

#Parameters of random sampling
NumberOfSamples=100000
PopulationMean=0
PopulationVariance=1

#### Grab data ####

#sample from normal distribution using above parameters
Data=rnorm(NumberOfSamples, PopulationMean, PopulationVariance)

#### Visualize ####

#Create axes and titles for plot
XLabel='variable'
YLabel='X'
#Advanced: Using paste to create complex strings. Numbers, such as PopulationMean, will be converted to strings beside the rest of the text.
Title<-paste('One sample from N(',PopulationMean,',', PopulationVariance,')', sep='')

#plot data
hist(Data, main=Title,xlab=XLabel, ylab=YLabel)
