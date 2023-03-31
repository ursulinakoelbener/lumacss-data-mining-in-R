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

resp <- GET(url) # this is a response from the server

# access content
httr::content(resp)

# access protocol
httr::http_status(resp)

# how to actually use the status
if(http_status(resp)$category == "Success"){
  content(resp)
}
