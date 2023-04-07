# load packages
library(tidyverse)
library(stringr)

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

# create a string
string <- str_c("file", 1:10, ".csv")

# all files with the ending ".csv"
str_view_all(string, pattern = "\\.csv$") # $ to match at the end

# presenation ist not the same as the string
x <- c("\"", "\\")
x
writeLines(x)

y <- "\u00b5"
y

# number of characters in a string
str_length(y)

# subsetting strings
z <- c("Apple", "Banana", "Pear")
str_sub(z, 1, 3)
