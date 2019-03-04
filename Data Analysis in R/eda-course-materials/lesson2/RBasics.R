getwd()

statesInfo <- read.csv('stateData.csv')
View(statesInfo)

stateSubset <- subset(statesInfo, state.region == 1)
head(stateSubset, 2)
dim(stateSubset)

stateSubsetBracket <- statesInfo[statesInfo$state.region == 1, ]
head(stateSubsetBracket, 2)
dim(stateSubsetBracket)

reddit <- read.csv('reddit.csv')
str(reddit)

table(reddit$employment.status)
summary(reddit)

levels(reddit$age.range)

library(ggplot2)
qplot(data = reddit, x = age.range)

# income.range and age.range could be considered ordered factors

qplot(data = reddit, x = income.range)

# reordering age levels
reddit$age.range <- ordered(reddit$age.range, levels = c("Under 18", "18-24", "25-34", "35-44", "45-54", "55-64", "65 or Above"))
levels(reddit$age.range)
qplot(data = reddit, x = age.range)

# Alternative solution
reddit$age.range <- factor(reddit$age.range, levels = c("Under 18", "18-24", "25-34", "35-44", "45-54", "55-64", "65 or Above"), ordered = TRUE)
levels(reddit$age.range)
qplot(data = reddit, x = age.range)
