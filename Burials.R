library(tidyverse)
library(lubridate)
burials <- read.csv("burials_fields.csv")
bees <- select(burials, date_of_burial, age_at_death)
# head(bees)
glimpse(bees)
burtib <- as_tibble(burials)
burtib
burs <- select(burtib, date_of_burial, age_at_death)
head(burs)
burtib[1:12]
?count
count(burtib, age_at_death, sort = TRUE )
# head(burtib)
# head(burials)
# burials[1:3]
dob <- burtib["date_of_burial"]
dob
dob[,1]
# USE DPLYR FOR ACCESSING TIBBLE OR DATAFRAME ELEMENTS
# SEE LINK: https://dplyr.tidyverse.org/reference/select.html

head(burtib["grave_number", "date_of_burial"])
aa <- burtib %>% select(date_of_burial) 
aa
x <- aa$date_of_burial[1:30]
x
y <- as.POSIXct(x)
y
z <- format(y, "%A %b %d %Y")
z 

# Taken from Youtube video
# ?runi
today <- Sys.Date()
tm <- seq(1,8)
tm
Capture_date <- today - tm
format(Capture_date, "%A %b %d %Y")
  
=======
burials <- read.csv("burials_fields.csv", header = TRUE, sep = ",")

# typeof(burials)
# 
burtib <- as_tibble(burials)

head(burtib)


bb <- burtib$date_of_burial[1:10]
bbc <- as.character(bb)
typeof(bbc)

# head(burials)
# burials[1:3]

# Creating and converting tibbles and dataframes
myTib <- tibble(x = 1:3, y = c("London","Paris", "New York"))
myTib
 
myDF <-  data.frame(x = 1:3, y = c("London","Paris", "New York"))
myDF
 
dfToTibble <- as_tibble(myDF)
dfToTibble

# Differences between tibble and dataframes

# Df converts char vectors to factors
class(myDF$y)



myDFnotFactor <- data.frame(x = 1:3, 
                            y = c("London","Paris", "New York"),
                            stringsAsFactors = FALSE)

# Note that c(....) creates a VECTOR of values

class(myDFnotFactor$y)
class(myTib$y)

Changing a character vector to a factor in a tibble
myDF <-  data.frame(x = 1:3, y = factor(c("London","Paris", "New York")))
class(myDF$y)

# Subsetting differences
# Select all rows, and columns 1 to 2
myDF[,1:2]

# choosing only one column returns a vector  for DF

myDF[,1]
myTib[,1]
# to output a tibble column as a vector
myTib[[1]]
# or
myTib[["x"]]
# or
myTib$x


#  Variable creation differences
second_DF <- data.frame(nitems = c(12, 6, 15),
                        cost = c(1.25, 3.4, 12),
                        totalWorth = nitems * cost)
# above doesn't work

second_TIB <- tibble(nitems = c(12, 6, 15),
                        cost = c(1.25, 3.4, 12),
                        totalWorth = nitems * cost)
second_TIB

# Selecting a column and then rows
second_TIB$nitems[1:2]
second_TIB[1,1]
library(help="stats")
