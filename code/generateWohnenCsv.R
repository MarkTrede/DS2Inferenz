# Aufbereitung der Umfragedaten

setwd("/home/tredem/sciebo/DataScience2/data")

x <- read.csv("StudentischeUmfrage2023.csv")
x <- x[,c("Wohntyp","Wohnzufriedenheit","FahrzeitRadDom")]

x <- x[!is.na(x$Wohntyp) & !is.na(x$Wohnzufriedenheit) & !is.na(x$FahrzeitRadDom),]
x <- x[!x$Wohntyp=="sonstiges",]

x$Wohnzufriedenheit[x$Wohnzufriedenheit=="sehr unzufrieden" | x$Wohnzufriedenheit=="unzufrieden"] <- "(sehr) unzufr."

x$Wohnzufriedenheit <- factor(x$Wohnzufriedenheit,
                              levels=c("(sehr) unzufr.", 
                                       "es ist okay", 
                                       "zufrieden",
                                       "sehr zufrieden"),
                              ordered=TRUE)

x$Wohntyp[x$Wohntyp=="alleine in einer Wohnung"] <- "allein"
x$Wohntyp[x$Wohntyp=="bei meinen Eltern"] <- "Eltern"
x$Wohntyp[x$Wohntyp=="in einem Wohnheim"] <- "Wohnh."
x$Wohntyp[x$Wohntyp=="in einer WG"] <- "WG"
x$Wohntyp[x$Wohntyp=="zusammen mit meinem Partner/meiner Partnerin"] <- "Partn."

x$FahrzeitRadDom[x$FahrzeitRadDom=="weniger als 2 min"] <- "<2"
x$FahrzeitRadDom[x$FahrzeitRadDom=="zwischen 2 und 5 min"] <- "2-5"
x$FahrzeitRadDom[x$FahrzeitRadDom=="zwischen 5 und 10 min"] <- "5-10"
x$FahrzeitRadDom[x$FahrzeitRadDom=="zwischen 10 und 15 min"] <- "10-15"
x$FahrzeitRadDom[x$FahrzeitRadDom=="zwischen 15 und 20 min"] <- "15-20"
x$FahrzeitRadDom[x$FahrzeitRadDom=="zwischen 20 und 30 min"] <- "20-30"
x$FahrzeitRadDom[x$FahrzeitRadDom=="mehr als 30 min"] <- ">30"

x$FahrzeitRadDom[x$FahrzeitRadDom=="Ich weiß es nicht" | x$FahrzeitRadDom=="Ich wohne nicht in Münster"] <- NA
x$FahrzeitRadDom <- factor(x$FahrzeitRadDom,
                           levels=c("<2",
                                    "2-5",
                                    "5-10",
                                    "10-15",
                                    "15-20",
                                    "20-30",
                                    ">30"),
                           ordered=TRUE)

write.csv(x,file="wohnen.csv",row.names = FALSE)
