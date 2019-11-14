#Exercise 7 - Custom functions in R 
#1. Write a function 
iris <- read.csv("iris.csv", header = T, stringsAsFactors = F)

#named function only.odd
only.odd <- function(x){
  a <- seq(1,nrow(x),2) #assigning the seq as a to use later in for loop; seq(start at row 1,all rows in data frame,every 2 rows(i.e. odd # in this case)) 
  x[a, ] #x[sorts odd # rows specific to row]; x[a,1] returns only odd row values for Sepal.Length
}

#example using iris.csv
only.odd(iris) #can use function for any data frame in ()
