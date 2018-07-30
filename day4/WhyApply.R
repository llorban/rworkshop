#GOAL: Calculate up average grades for each student (get average grade for each row)
#simulate data
Data=data.frame(rnorm(35,60,20),rnorm(35,60,20),rnorm(35,60,20),rnorm(35,60,20))
names(Data)=c('Quiz1', 'Quiz2', 'Quiz3', 'Quiz4')


#Method 1:
#index into student 1, convert these four variables into a single vector
Student1=as.numeric(Data[1,])

#calculate mean for student 1
mean(Student1)

#repeat for student 2, 
Student2=as.numeric(Data[2,])

#calculate mean for student 1
mean(Student2)

#... This will take a while

#### Method 2:
# Solving problem with apply... which can apply any function to each row of the dataset ####
apply(Data,1,FUN=mean)



