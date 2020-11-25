# Chapter 2 - Packages ----


# NOTE: To comment out text use Cmd + Shift + C
# To run ALL code CMD + SHIFT + RETURN
# To run current selection or code on line CMD + RETURN

library('ggplot2')
# qplot()
# The above function as-is will output it's source
# code when executed


# Vectors have been created in last source using n:m notation ----
# An alternative is to use c(. ,. ,)

x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
x
y <- x**3
y

# See qplot in  help (Quickplot)
# Plot a scatter plot ----
qplot(x,y)

# Plot a histogram - binwidth implies histogram ----
x <- c(1,2,2,2, 3,3)
qplot(x, binwidth = 1)

# Exercise 
x3 <- c(0,1,1,2,2,2,3,3,4)
qplot(x3, binwidth = 1)

# Repeating or replicating a command
 replicate(3, 2*3)
 
 source("rolldye.r")
 replicate(10, roll(2))
 
 
 rolls <- replicate(10000, roll2())
 qplot(rolls, binwidth = 1)
 
 rolls <- replicate(10000, roll3())
 qplot(rolls, binwidth = 1)

?regex
 