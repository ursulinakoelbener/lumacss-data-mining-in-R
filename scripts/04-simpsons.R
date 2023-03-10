# load data
load("C:/Users/Ursulina/Desktop/Data Mining in R/lumacss-data-mining-in-R/data/s3-simpsons.Rdata")

simpsons[[1]]["title"]
simpsons[[1]]$title

# create an empty list
list <- vector(mode = "list", length(simpsons))

# for-loop
for(i in 1:length(simpsons)) {
  list[i] <- (simpsons[[i]]["title"])
  # Sys.sleep(1)
}

