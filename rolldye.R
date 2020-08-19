
# THIS FUNCTION SIMULATES THE ROLLING OF >=1 DICE AND RETURNS THE SUM

# SEE DEFINITION OF 'SAMPLE' FOR PARAMETERS [USE ?SAMPLE]

roll <- function(numdice = 1, rep = TRUE){
  rolled <- "number of dice must be numeric and > 0"
  if (is.numeric(numdice) & numdice > 0){
    die <- 1:6
    rolled <- sample(die, numdice, replace = rep)
  }
  return(sum(rolled))
}

roll(3)

# THIS FUNCTION SIMULATES THE ROLLING OF 2 DICE AND RETURNS THE SUM
roll2 <- function(){
  die <- 1:6
  dice <- sample(die,size = 2, replace = TRUE)
  sum(dice)
}


roll2()
# THIS FUNCTION SIMULATES THE ROLLING OF 2 DICE AND RETURNS THE SUM BUT ALLOWS THE FACE PROBABILITIES TO BE CHANGED FROM THEIR DEFAULTS
roll3 <- function(prob = c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8)){
  die <- 1:6
  dice <- sample(die,size = 2, replace = TRUE, prob)
  sum(dice)
} 

roll3()
