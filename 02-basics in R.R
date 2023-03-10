# install.packages("tidyverse")

# load packages
library(tidyverse)

View(mpg)

# Meeting the Pipe ----

# select to only keeping columns
mpg_rec <- mpg %>% 
  select(displ, hwy)

# filter rows with a condition
mpg_1999 <- mpg %>% 
  filter(year == 1999)

# Working Directory ----

# get working directory
getwd()