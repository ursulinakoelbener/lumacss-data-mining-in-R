# install.packages("tidyverse")

# load packages
library(tidyverse)

# Meeting the Pipe ----

# select to only keeping columns
mpg_rec <- mpg %>% 
  select(displ, hwy)

# filter rows with a condition
mpg_1999 <- mpg %>% 
  filter(year == 1999)

# filter rows with a condition
mpg_200 <- mpg %>% 
  filter(year == 2000)

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

# atomic vectors
vector(mode = "logical", length = 5)
vector(mode = "character", length = 4)
vector(mode = "numeric", length = 4)

# list vector
my_vec <- vector(mode = "list", length = 4)

is.list(my_vec)
is.vector(my_vec)

# Subsetting with $
table(mpg$hwy) # use name and not index

# Subsetting wit []
# subset the first row and the first column
mpg[1,1] # by index, not by name

# first row of all the columns
mpg[1, ] # leave empty to select all

# Subsetting wit [[]]
mpg[[2]]

mpg[[2]][c(5, 9, 17)]