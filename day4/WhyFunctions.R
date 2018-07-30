# Student: Serious Student
# Instructor: Professor Serious
# Assignment: Implement Standard Deviation, and then report mean and standard deviation. Professor Serious has not introduced the notion of sampling yet, so they decide not to use Bessel's correction in the calculation (i.e, they will use n instead of n-1 in the denominator for variance calculations). Professor Serious really wants his student to think of standard deviations as the square root of mean squared deviations. They are to make a script that illustrates this thinking.

#### Whats wrong with the following script? ####

DV=c(5,6,7,8,9)
Mean=sum(DV)/length(DV)

#calculate squared deviation
SquaredDeviation=(DV-Mean)^2

#calculate variance
Mean=sum(SquaredDeviation)/length(SquaredDeviation)

#calculate standard deviation
StandardDeviation=sqrt(Mean)

paste('The Mean is ', Mean, ' and Standard Deviation is ', StandardDeviation)



#####   Professor Serious's second problem    #####
# Student: Serious Student
# Instructor: Professor Serious
# Assignment: Calculate means and standard deviations for three datasets. 
# Remember instructors note from last assignment. 'Be careful about variable names!'

#### Whats wrong with the following script? ####

Data1=c(3,5,6,7,8)
Data2=c(34,5,6,7,8)
Data3=c(3434,2134,6342,6322)

#calculate mean for data
MeanData1=sum(DV)/length(Data1)

#calculate squared deviation
SquaredDeviationData1=(Data1-MeanData1)^2

#calculate variance
MeanData1=sum(SquaredDeviationData1)/length(SquaredDeviationData1)

#calculate standard deviation
StandardDeviationData1=sqrt(MeanData1)

#calculate mean for data
MeanData2=sum(DV)/length(Data2)

#calculate squared deviation
SquaredDeviationData2=(Data2-MeanData1)^2

#calculate variance
MeanData2=sum(SquaredDeviationData2)/length(SquaredDeviationData2)

#calculate standard deviation
StandardDeviationData2=sqrt(MeanData2)

#calculate mean for data
MeanData3=sum(DV)/length(Data3)

#calculate squared deviation
SquaredDeviationsData3=(Data1-MeanData3)^2

#calculate variance
MeanData3=sum(SquaredDeviationData1)/(length(SquaredDeviationData1)-1)

#calculate standard deviation
StandardDeviationData3=sqrt(MeanData1)

paste('The Mean for dataset one is ', MeanData1, ' and Standard Deviation is ', StandardDeviationData1)
paste('The Mean for dataset two ', MeanData2, ' and Standard Deviation is ', StandardDeviationData2)
paste('The Mean for dataset three ', MeanData3, ' and Standard Deviation is ', StandardDeviationData3)







#### Uncomment this code to see how functions will avoid these problems ####
# JoesMean=function(data)
# {
#   Mean=sum(data)/length(data)
#   return(Mean)
# }
# 
# JoesStandardDeviation=function(data)
# {
#   #calculate mean
#   SampleMean=JoesMean(data)
# 
#   SquaredDeviation=(data-SampleMean)^2
# 
#   Mean=JoesMean(SquaredDeviation)
# 
#   StandardDeviation=sqrt(Mean)
#   return(StandardDeviation)
# }
# 
# assignment 1
# DV=c(5,6,7,8,9)
# paste('The Mean is ', JoesMean(DV), ' and Standard Deviation is ', JoesStandardDeviation(DV))
# 
# #assignment 2
# Data1=c(3,5,6,7,8)
# Data2=c(34,5,6,7,8)
# Data3=c(3434,2134,6342,6322)
# paste('The Mean for dataset one is ', JoesMean(Data1), ' and Standard Deviation is ', JoesStandardDeviation(Data1))
# paste('The Mean for dataset one is ', JoesMean(Data2), ' and Standard Deviation is ', JoesStandardDeviation(Data2))
# paste('The Mean for dataset one is ', JoesMean(Data3), ' and Standard Deviation is ', JoesStandardDeviation(Data3))


