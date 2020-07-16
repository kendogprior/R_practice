roll <- function(numdice = 1, rep = TRUE){
  rolled <- "number of dice must be numeric and > 0"
  if (is.numeric(numdice) & numdice > 0){
    die <- 1:6
    rolled <- sample(die, numdice, replace = rep)
    sum(rolled)
  }
  return(rolled)
}

roll2 <- function(){
  die <- 1:6
  dice <- sample(die,size = 2, replace = TRUE)
  sum(dice)
}

roll3 <- function(prob = c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8)){
  die <- 1:6
  dice <- sample(die,size = 2, replace = TRUE, prob)
  sum(dice)
} 
