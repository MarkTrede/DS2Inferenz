# Stadtgrößendatensatz aufbereiten

setwd("/home/tredem/sciebo/DataScience2/data/")
x <- read.csv("worldcities.csv")
x <- x[!is.na(x$population),]
y <- x[x$population > 2e6, c("city","population")]
write.csv(y, file="largecities.csv")