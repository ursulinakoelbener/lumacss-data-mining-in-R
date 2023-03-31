library(rvest)
library(httr)

# scraping with rvest ----
url <- "https://www.unilu.ch/"

# create a parsed webpage
news <- read_html(url)%>% 
  html_elements(css = ".news__header") %>% 
  html_text()

# scraping with httr
url <- "https://www.unilu.ch/"

headlines <- GET(url) # this is a response from the server
