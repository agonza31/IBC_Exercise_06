#Solution to problem 1 of exercise 6
head<-function(fileName, numLines){
  file <- read.csv(fileName)
  return(file[1:numLines,])
}