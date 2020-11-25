library(dplyr)

dset <- as_tibble(mtcars)
dset
# cyl <- 
dset %>% select(mpg, cyl, hp) %>% 
         group_by(cyl) %>% 
         # ...and then for each group evaluate 
         summarise(Avg_mpg = mean(mpg), Avg_hp = mean(hp), Min_hp = min(hp), Max_hp = max(hp)) 

mtcars %>%
  summarise(mean = mean(mpg), n = n())

# ?summarise

dset %>% 
  group_by(cyl) %>%
  select(mpg, cyl, hp) %>% 
  summarise(Avg_mpg = mean(mpg), Avg_hp = mean(hp), Min_hp = min(hp), Max_hp = max(hp))