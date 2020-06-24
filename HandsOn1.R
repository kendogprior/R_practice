library(tidyverse)
# To insert assignment operator (<-) use: option + -
# Create a tibble
myTib <- tibble(x = 1:4,
               y = c("London", "Paris", "New York", "Auckland"))
myTib
# shift + cmd + C for hash insert

# Create a dataframe
myDF  <- data.frame(x = 1:4,
                y = c("London", "Paris", "New York", "Auckland"))
myDF

# Convert a dataframe to a tible
dfToTib <- as_tibble(myDF)
dfToTib
