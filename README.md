# Data Mining using R
Course at University of Lucerne, Department of Political Science  
Lecturer: Dr. Andrea De Angelis (University of Zurich)

# Notes from the Lecture
## Introduction and Data Mining Workflow
* 90% of the data that exists is created in the last two years - therefore also called the age of datafication.
* *R* is a language, *RStudio* is a writing software, *tidyverse* is a set of R packages.
* Data Science can be split in a few basic steps: data mining > data wrangling > statistical analysis > output
    * data mining: getting the data interacting with the internet
    * data wrangling: transform data into tidy data
    * statistical analysis: analyse the data and find new insights
    * output: communicate the information

**Elements of Data Mining**
* Technologies for dissemating content on the web
* **Technologies for information extraction**
* Technologies for data storage

### Basics in R / Good-Enough-Practice
* the pipe makes the code more readable.
* use a project oriented workflow.
* use folders to create a structure and good names for files. The name gives an idea about what the code will do.
* avoid point-and-click.
* reproducible code happens in scripts.

### R Data Structure
Dimension | Single Type (homogeneous) | Multiple Types (heterogeneous) 
----------|-------------------------|-----------------------------
1D        | Vector                  | List 
2D        | Matrix                  | Data frame 
nD        | Array                   |  

A "tibble" is also a data frame, but from the tidyverse package set, which shows the data type as well.

### Vectors
There are two types of vectors: atomic, list  
A vector in R is either an atomic vector or of type mode list or expression.
The atomic modes are "logical", "integer", "numeric" (synonym "double"), "complex", "character" and "raw".

**Subsetting**  
1. '[]' use for atomic vectors and list > data frame
2. '[[]]' use for atomic vectors and list > atomic vector
3. '$' only use for  list

### Basics Report
General Structure: IMRaD (Introduction, Methods, Result and Discussion)

## Web Scraping
* *scraping* the internet means saving the information somewhere.
* compared to *browsing* the internet, it is more structured.
* Interaction between a client and a server - automated and scalable.
* Selecting only information needed.
* Interacting directly with the server (no browser needed).

**Data Extraction Technologies**
Technology        | languages               | R packages   | comment
------------------|-------------------------|--------------|----------------------------------
Screen Scraping   |  HTML, XML, CSS, XPath   | R > rvest   | do it politely, only if no other way is available
Web APIs          |  JSON, XML              | R > httr     | use it if you find one

**Linkely Scenarios**
Text in Tables > Copy & past
Static Website >
Dynamic Website > RSelenium

### Scraping Workflow
1. Source idenfification & download
2. parsing
3. inspect and understand DOM (Document Object Model) structure
4. extracting
5. prototype code (select and test)
6. refining
7. generalize and loop
8. tidying
9. tidy data

**Parsing**
* a parser is a software that takes some text data and builds a parse tree > queryable DOM (Document Object Model)

**Process**
1. check the robots file of the website with 'browseURL(robots.txt)'. It tells the robots/scraper what we can scrape and what not.
2. Download the Site with 'download.file()' to store it locally.
3. 'rvest::read_html()' parse
4. 'rvest::html_elemnts()' take only what you need

There are differnet type of selecors to extract elemnts
* CSS
* XPath

### Scraping Tools


### 
* A regular expression is a sequence of characters that specifies a match pattern in text.

## APIs
