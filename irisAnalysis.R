#Solution to problem 2 of Exercise 6
#load data
data <- read.csv("iris.csv")

print("print last 2 rows in last 2 columns")
print(tail(data[,4:5],2))
print("---------------------------------------")

print("get number of observations for each species in data set")
#setosa
print(c("# setosa observations: ",length(which(data[,5]=="setosa"))))

#versicolor
print(c("# versicolor observations: ",length(which(data[,5]=="versicolor"))))

#virginica
print(c("# virginica observations: ",length(which(data[,5]=="virginica"))))
print("---------------------------------------")

print("get rows with Sepal.Width > 3.5")
print(data[data$Sepal.Width>3.5,])
print("---------------------------------------")

#write the data for the species 'setosa' to a comma-delimited file 'setosa.csv'
#note: I didn't include the 5th column since it's a given
#that all rows refer to setosa observations
write.table(data[data$Species=="setosa",1:4],file = "setosaInfo.csv",sep=",")

print("calculate mean, min, and max of Petal.Length for observations from virginica")
#mean
print(c("mean Petal Length for virginica:",mean(data[data$Species=="virginica",3])))

#min
print(c("min Petal Length for virginica:",min(data[data$Species=="virginica",3])))

#max
print(c("max Petal Length for virginica:",max(data[data$Species=="virginica",3])))
print("---------------------------------------")