# Aufbereitung der Umfragedaten

setwd("/home/tredem/sciebo/DataScience2/data")

x <- read.csv("StudentischeUmfrage2023.csv")
x <- x[,c("Geschlecht","ErwartetesGehalt")]

x <- x[!is.na(x$Geschlecht) & !is.na(x$ErwartetesGehalt),]
x <- x[!x$Geschlecht=="divers",]

x$ErwartetesGehalt <- ifelse(x$ErwartetesGehalt < 15000,
                             x$ErwartetesGehalt*12,
                             x$ErwartetesGehalt)

write.csv(x,file="verdiensterwartungen.csv",row.names = FALSE)
