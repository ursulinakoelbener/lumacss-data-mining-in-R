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

## Web Scraping
* A regular expression is a sequence of characters that specifies a match pattern in text.

## APIs
