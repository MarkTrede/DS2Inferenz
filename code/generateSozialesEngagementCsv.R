# Aufbereitung der Umfragedaten

setwd("/home/tredem/sciebo/DataScience2/data")

x <- read.csv("StudentischeUmfrage2023.csv")
x <- x[,c("Studiengang","SozialesEngagement")]

x <- x[!is.na(x$Studiengang) & !is.na(x$SozialesEngagement),]
x$Studiengang[x$Studiengang == "Betriebswirtschaftslehre"] <- "BWL"
x$Studiengang[x$Studiengang != "BWL"] <- "VWL"

write.csv(x,file="soziales_engagement.csv",row.names = FALSE)
