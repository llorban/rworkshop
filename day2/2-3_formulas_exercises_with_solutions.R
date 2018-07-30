

# Please open the file “MentalRotationData.xlsx” and use it to answer the following
# questions about the results of the Mental Rotation psychology experiment.  
setwd("~/Desktop/rworkshop/day2")  # Modify to the correct path (the tilda means "User's home directory")
mentalrot <- read.csv("MentalRotation.csv")

# What variables are in this dataset?
names(mentalrot)

# How Many Total Trials (rows) are in the study?
nrow(mentalrot)
length(mentalrot)
ncol(mentalrot)

# What is the maximum number of trials that one subject performed?
max(mentalrot$Trial)
summary(mentalrot$Trial)

# Convert the Time trial to seconds, by dividing by 1000.
mentalrot$TimeSec <- mentalrot$Time / 1000


# What is the mean response time, across all trials?
mean(mentalrot$TimeSec)

# What percent of trials were answered correctly?
sum(mentalrot$Correct) / length(mentalrot$Correct)

sum(mentalrot$Correct) / length(mentalrot$Correct)
sum(mentalrot$Correct) / nrow(mentalrot)
mean(mentalrot$Correct)
mean(mentalrot$TimeSecs > 3)

# What percent of trials were “Matching” trials?
sum.match <- sum(mentalrot$Matching)
prop.match <- sum(sum.match) / nrow(mentalrot)
prop.match
mean(mentalrot$Matching)

# Is there a correlation between Angle of mental rotation and response time?
cor.test(x = mentalrot$Angle, y = mentalrot$TimeSec)

# Is there a response time difference between matching and nonmatching trials?
matchingSec <- mentalrot[mentalrot$Matching == 1,"TimeSec"]
NonmatchingSec <- mentalrot[mentalrot$Matching == 0,"TimeSec"]
t.test(matchingSec, NonmatchingSec)

t.test(mentalrot$Time ~ mentalrot$Matching)
t.test(formula = Time ~ Matching, data = mentalrot)

# Is there a response time difference between matching and nonmatching 
# for different rotation Angles?
model <- lm(formula = Time ~ (Matching * Angle), data = mentalrot)
model <- lm(formula = Time ~ Matching + Angle + Matching:Angle, data = mentalrot)

summary(model)


#  Is there a difference in accuracy between matching and non-matching trials?
glm(formula = Correct ~ Matching, data = mentalrot, family = binomial(type = 'logit'))

# Plot the response time levels over Angle as a boxplot using the formula syntax
boxplot()
