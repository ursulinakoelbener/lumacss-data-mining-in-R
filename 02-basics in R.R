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

# Avoid Problems With Path ----

# use the package "here" to navigate in Windows and Mac
here::here("folder", "subfolder", "file.***")

# Sourcing Scripts ----
source(here::here("folder", "subfolder", "file.***"))

# Working With Sections ----
# using four hyphens to create a section

# Vectors ----
# two types of vectors: atomic, list