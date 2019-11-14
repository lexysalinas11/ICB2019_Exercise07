#Alexa Salinas and Camille Mosley 
#Exercise 7 Custom functions in R 
#1. Write a function 
iris <- read.csv("iris.csv", header = T, stringsAsFactors = F)

#named function only.odd
only.odd <- function(x){
  a <- seq(1,nrow(x),2) #assigning the seq as a to use later in for loop; seq(start at row 1,all rows in data frame,every 2 rows(i.e. odd # in this case)) 
  x[a, ] #x[sorts odd # rows specific to row]; x[a,1] returns only odd row values for Sepal.Length
}

#example using iris.csv
only.odd(iris) #can use function for any data frame in ()

#2.1 # of obs for given species 
species.obs<-function(species){
  speciesobs <- (iris$Species==species) 
  return(sum(speciesobs==T))
}

#example
species.obs('versicolor')

#2.2 get rows with Sepal.Width
sepalwidth <- function(x,value){
  x[which(x[,"Sepal.Width"]>value),]
}

#example
sepalwidth(iris,3)

#2.3 data for given species to csv file w given species name as file name
#Hint: look at paste() to add .csv extension to file in for loop
species.outputs <- function(species){
  speciesobs <- iris[iris$Species==species,]
  write.csv(speciesobs, file = paste(species, ".csv", sep=""))
}

#to get outputs for each of the 3 species 
species.outputs("virginica")
species.outputs("versicolor")
species.outputs("setosa")