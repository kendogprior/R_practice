# Chapter 2 - Packages
library('ggplot2')
qplot


# Vectors have been created in last source using n:m notation
# An alternative is to use c(. ,. ,)

x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
x
y <- x**3
y
# See qplot() help (Quickplot)

# Plot a scatter plot
qplot(x,y)

# Plot a histogram - binwidth implies histogram
x <- c(1,2,2,2, 3,3)
qplot(x, binwidth = 1)

# Exercise 
x3 <- c(0,1,1,2,2,2,3,3,4)
qplot(x3, binwidth = 1)



