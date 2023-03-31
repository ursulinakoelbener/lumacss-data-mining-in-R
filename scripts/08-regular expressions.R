# load packages
library(tidyverse)

# use cat to escape
cat("Escaping: \\")

# create vector
x <- c("apple", "banana", "grape")

# see the result
str_view_all(x, pattern = "a")
