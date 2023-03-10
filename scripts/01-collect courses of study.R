# install packages
install.packages("rvest")
install.packages("tidyverse")

# load packages
library(rvest)
library(tidyverse)

# store url
url <- "https://www.unilu.ch/studium/studienangebot/master/kultur-und-sozialwissenschaftliche-fakultaet/"

# extract courses of study
courses <- read_html(url) %>%
  html_elements(css = ".text") %>% 
  html_text()