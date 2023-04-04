library(XML)

# parse the file into an object
parsed_doc <- htmlParse(file = "http://www.r-datacollection.com/materials/ch-2-html/fortunes.html")

# examine content
print(parsed_doc)

# absolute path
xpathSApply(doc = parsed_doc, path = "/html/body/div/p/i")

# relative concise path
xpathSApply(parsed_doc, "//body//p/i")

xpathSApply(parsed_doc, "//p/i")

# wildcard operator
xpathSApply(doc = parsed_doc, path = "/html/body/div/*/i")

