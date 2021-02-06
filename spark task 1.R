#to import the given data
"""In  the given data, number of hours a student study is the 
independent variable, and scores are the dependent variable"""
hours=c(2.5,5.1,3.2,8.5,3.5,1.5,9.2,5.5,8.3,2.7,7.7,5.9,
        4.5,3.3,1.1,8.9,2.5,1.9,6.1,7.4,2.7,4.8,3.8,6.9,
        7.8)
scoures=c(21,47,27,75,30,20,88,60,81,25,85,62,41,42,17,
          95,30,24,67,69,30,54,35,76,86)
mydata=data.frame(hours,scoures)
names(mydata)=c("hours","scoures")
mydata

#regression equation
relation <- lm(scoures~hours)
print(relation)

#to know the average error in prediction
print(summary(relation))

#What will be predicted score if a student 
#studies for 9.25 hrs/ day?
a <- data.frame(hours = 9.25)
result <-  predict(relation,a)
print(result)

plot(scoures,hours,col = "blue",main 
     = "percentage of an student based on the no. of study hours",
     abline(lm(hours~scoures)),cex = 1.3,pch = 16,xlab 
     = "number of hours student study",ylab = "scores")
