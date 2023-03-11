url <- "https://www.imdb.com/title/tt0096697/episodes?ref_=tt_eps_sm"

# get title
read_html(url) %>% 
  html_elements(css = "#episodes_content strong a") %>%
  html_text()

# get links
read_html(url) %>% 
  html_elements(css = "#episodes_content strong a") %>%
  html_attr(name = "href") # list of relative links

# full link: https://www.imdb.com/title/tt14167110/?ref_=ttep_ep1