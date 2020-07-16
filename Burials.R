library(tidyverse)
library(lubridate)
burials <- read.csv("burials_fields.csv")
bees <- select(burials, date_of_burial, age_at_death)
# head(bees)
glimpse(bees)
burtib <- as_tibble(burials)
burs <- select(burtib, date_of_burial, age_at_death)
head(burs)
burtib[1:12]
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
?runi
today <- Sys.Date()
tm <- seq(1,8)
tm
Capture_date <- today - tm
format(Capture_date, "%A %b %d %Y")
  