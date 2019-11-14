#Exercise 7 - Custom functions in R 
#1. Write a function 
iris <- read.csv("iris.csv", header = T, stringsAsFactors = F)

only.odd <- function(x){
  a <- seq(1, nrow(x),2)
  x[a, ]
}

#example using iris.csv
only.odd(iris)
