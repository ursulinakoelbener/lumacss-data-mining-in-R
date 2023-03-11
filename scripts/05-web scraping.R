# load packages
library(rvest)
library(tidyverse)

# store url
site <- "https://www.unilu.ch/studium/studienangebot/master/kultur-und-sozialwissenschaftliche-fakultaet/"

# extract courses of study
read_html(site) %>%                 # parse
  html_elements(css = "h2") %>%     # get nodes
  html_text()                       # convert

# extract news titel
url <- "https://www.unilu.ch/news/alle-news/"
read_html(url) %>% 
  html_elements(css = ".news__header") %>% 
  html_text()

# scrape title from NZZ
nzz <- "https://www.nzz.ch"
read_html(nzz) %>% 
  html_elements(css = ".teaser__title-name") %>% 
  html_text()

# guess encoding
rvest::html_encoding_guess("https://www.nzz.ch/")

# scrape title from NZZ
nzz <- "https://www.nzz.ch"
read_html(nzz, encoding = "ISO-8859-1") %>% 
  html_elements(css = ".teaser__title-name") %>% 
  html_text()

Sys.getlocale()

# Politely scrape
# install.packages("httr")
library(httr)

page <- GET(nzz,
    add_headers(
      From = "ursulina.koelbener@stud.unilu.ch",
      `User-Agent` = user_agent)
    )

bin <- content(page, as = "raw")
writeBin <- object = bin(con = "NZZ.html")

session <- html_session(nzz,
                        add_headers(
                          From = "ursulina.koelbener@stud.unilu.ch",
                          `User-Agent` = user_agent))
text <- session %>% 
  html_elements(css = ".teaser__title-name") %>% 
  html_text()
