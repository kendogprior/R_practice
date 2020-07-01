#Hands_On Book ----

# NOTE: To comment out text use Cmd + Shift + C
# To run ALL code CMD + SHIFT + RETURN
# To run current selection or code on line CMD + RETURN


1 + 1
#2
#
10:15
#10 11 12 13 14 15

typeof(10:15)
#integer

a <- 1
a
#1  a is an 'object'
typeof(a)
a * 3
#3

typeof(a)
#"double" meaning double length storage for number

dim <- 1:5
dim

#NOTE: Names are case sensitive. Some chars are not allowed see page 8

# list variables (object names) with ls() but also view Environment window
ls()

#A virtual die ----
die <- 1:6

die[3]

#Each element squared ----

#arithmetic operators work on each element the list
die * die


#Adding a shorter list to die look at output

die + 8:10
# Same as adding 8 9 10 8 9 10 result is 9 11 13 12 14 16

#Matrix operators ----
#Inner multiplication (row onto column)
die %*% die

#Outer multiplication (column onto row)
die %o% die

#Simplem functions ----
round(3.14159, digits = 3)

mean(die)
mean(die * die)
round(mean(die*die))

#Sampling from the die vector ----

sample(x = die, size = 2)
#You must use 'x' for the vector set

 #National lottery pick 6 numbers from 1 to 59 - no replacements
sample(x = 1:59, size = 6)
sort(sample(x = 1:59, size = 6))

draw <- sample(x = 1:59, size = 6)
sort

#Can leave out variable names (x), size and use only the object name or value
sample(die, size = 3)

#To find out which args to use use 'args' function
args(sample)

sample(die,2)

sample(1:6, 4)

#Sampling with replacement ----

sample(die, 3, replace = TRUE)

# sample(die, 8) this generates an error because default is replace = FALSE
sample(die, 8, replace = TRUE) # equivalent to eight throws of dice

horses <- c("Stupor", "Filly", "Jasper")
horses

sample(horses, 2)

#letters[1:26]


#Introducing Functions using the dice code

roll <- function(numdice, rep = TRUE){
  rolled <- "number of dice must be numeric and > 0"
  if (is.numeric(numdice) & numdice > 0){
    die <- 1:6
    rolled <- sample(die, numdice, replace = rep)
  }
  return(rolled)
}   
    
roll(3)

roll(9)


