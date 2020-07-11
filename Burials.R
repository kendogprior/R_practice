library(tidyverse)
burials <- read.csv("burials.csv")
typeof(burials)

burtib <- as_tibble(burials)
head(burtib)

# head(burials)
# burials[1:3]
