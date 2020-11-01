#superdatasciencedatasetsmovierating
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

#addgeometry
ggplot(data=movies, aes(x=CrticRating, y= AudienceRating,colour= Genre)) + geom_point()

#HistogramandPlots
s <- ggplot(data=movies, aes(x=BudgetMillions)) 
s + geom_histogram(binwidth=10)

#PlottingwithLayers
p <- ggplot(data=movies, aes(x=CrticRating, y= AudienceRating,colour= Genre)) 
p + geom_point() #lines#p+geom_line()

#overriding
q <- ggplot(data=movies, aes(x=CrticRating, y= AudienceRating,colour= Genre)) 
q + geom_point(aes(size=CriticRating, colours = BudgetMillions))

r <- ggplot(data=movies, aes(x=CrticRating, y= AudienceRating,colour= Genre)) 
r + geom_point()

r + geom_point(aes(colour = "DarkGreen"))
r + geom_point(size=10)

?geom_smooth() 

u <- ggplot(data=movies, aes(x=CrticRating, y= AudienceRating,colour= Genre)) 

u + geom_point() + geom_smooth(fill=NA)

#boxplots
u + geom_boxplot(size = 1.2) + geom_jitter()

#facets
v <- ggplot(data=movies, aes(x=BudgetMillions))
v + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black") + facet_grid(Genre~., scales = "free")

#coordinates
m <- ggplot(data=movies, aes(x=CrtiticRating, y=AudienceRating, size=BudgetMillions, colour=Genre))
m + geom_point()

m + geom_point() + xlim(50,100) + ylim(50,100)

#w + geom_point(aes(size=BudgetMillions))+geom_smooth()+facet_grid(Genre~Year)+coord_cartesian(ylim=c(0,100))

#theme
o <- ggplot(data = movies, aes(x=BudgetMillions))
h <- o + geom_histogram(aes(fill=Genre), colour = "Black")
h

h + xlab("Money") + ylab("Number of Movies") + theme(axis.title.x = element_text(colour = "DarkGreen", size=20), 
axis.title.y = element_text(colour="Red", size=20), axis.text.x = element_text(size=10), axis.text.y = element_text(size=10))
