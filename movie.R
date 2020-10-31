getwd()
setwd("C:/Users/Aishu/Downloads/R")
getwd()
movies <- read.csv("Ratings.csv")
head(movies)
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "year")
head(movies)
tail(movies)
str(movies)
summary(movies)

factor(movies$year)
movies$year <- factor(movies$year)

summary(movies)
str(movies)

#Aesthetics
install.packages("ggplot2", dep = TRUE)
library("ggplot2")

#add geometry
ggplot(data=movies, aes(x=CrticRating, y= AudienceRating,colours= Genre)) + geom_point()

#HistogramandPlots

s <- ggplot(data=movies, aes(x=BudgetMillions)) 
s + geom_histogram(binwidth=10)