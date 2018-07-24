

# Please open the file “MentalRotationData.xlsx” and use it to answer the following
# questions about the results of the Mental Rotation psychology experiment.
setwd("~/Desktop/R Workshop/Formulas")
data_path <- "MentalRotation.csv"
mentalrot <- read.csv(data_path)


# What variables are in this dataset?
names(mentalrot)

# How Many Total Trials (rows) are in the study?
nrow(mentalrot)

# What is the maximum number of trials that one subject performed?
max(mentalrot$Trial)

# Convert the Time trial to seconds, by dividing by 1000.
mentalrot$TimeSecs <- mentalrot$Time / 1000

# What is the mean response time, across all trials?
mean(mentalrot$TimeSecs)

# What percent of trials were answered correctly?
mean(mentalrot$Correct)

# What percent of trials were “Matching” trials?
mean(mentalrot$Matching)

# Is there a correlation between Angle of mental rotation and response time?
cor.test(mentalrot$Angle, mentalrot$TimeSecs)

# Is there a response time difference between matching and nonmatching trials?
wilcox.test(formula = TimeSecs ~ Matching, data = mentalrot)

# Is there a response time difference between matching and nonmatching for different rotation Angles?
summary(glm(formula = TimeSecs ~ Matching * Angle, data = mentalrot))

#  Is there a difference in accuracy between matching and non-matching trials?
model <- glm(formula = Correct ~ Matching, data = mentalrot, family = binomial(link = 'logit'))
summary(model)

# Plot the response time levels over Angle as a boxplot using the formula syntax
boxplot(formula = TimeSecs ~ Angle, data = mentalrot)
