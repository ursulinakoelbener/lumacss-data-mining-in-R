# install.packages("stringr")
# install.packages("XML")
# install.packages("maps")

# load packages
library(stringr)
library(XML)
library(maps)

# load data from webpage
heritage_parsed <- htmlParse("https://en.wikipedia.org/wiki/List_of_World_Heritage_in_Danger", encoding = "UTF-8")
# Warning message: XML content does not seem to be XML: ''

tables <- readHTMLTable(heritage_parsed, stringAsFactors = FALSE)
