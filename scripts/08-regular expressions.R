# load packages
library(tidyverse)

# use cat to escape
cat("Escaping: \\")

# create vector
x <- c("apple", "banana", "grape")

# see the result
str_view_all(x, pattern = "a")

str_view(x, pattern = "ap")

str_view_all(x, pattern = "^a")

# new vector
y <- c("1a", "2b", "3c")

# see numbers
str_view_all(y, pattern = "\\d")

z <- c("house.", "horse", "hap.py")

# everything is matched
str_view_all(z, pattern = ".")

# matching a point
str_view_all(z, pattern = "\\.")
