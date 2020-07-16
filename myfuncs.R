roll <- function(numdice, rep = TRUE){
  rolled <- "number of dice must be numeric and > 0"
  if (is.numeric(numdice) & numdice > 0){
    die <- 1:6
    rolled <- sample(die, numdice, replace = rep)
  }
  return(rolled)
}   


