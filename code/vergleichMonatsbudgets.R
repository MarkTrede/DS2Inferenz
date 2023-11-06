# Vergleich des Monatsbudgets von BWL/VWL-Studierenden

setwd("/home/tredem/sciebo/DataScience2/data")
setwd("/Users/marktrede/sciebo/DataScience2/data")

x <- read.csv("StudentischeUmfrage2023.csv")
x <- x[,c("Studiengang","Monatsbudget")]

x <- x[!is.na(x$Studiengang) & !is.na(x$Monatsbudget),]
x <- x[!x$Studiengang=="Sonstiges",]

x$Studiengang[x$Studiengang != "Betriebswirtschaftslehre"] <- "VWL"
x$Studiengang[x$Studiengang == "Betriebswirtschaftslehre"] <- "BWL"

write.csv(x,file="monatsbudgets.csv",row.names = FALSE)
