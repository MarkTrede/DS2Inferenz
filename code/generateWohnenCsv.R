# Aufbereitung der Umfragedaten

setwd("/home/tredem/sciebo/DataScience2/data")

x <- read.csv("StudentischeUmfrage2023.csv")
x <- x[,c("Wohntyp","Wohnzufriedenheit")]

x <- x[!is.na(x$Wohntyp) & !is.na(x$Wohnzufriedenheit),]
x <- x[!x$Wohntyp=="sonstiges",]

x$Wohnzufriedenheit[x$Wohnzufriedenheit=="sehr unzufrieden" | x$Wohnzufriedenheit=="unzufrieden"] <- "(sehr) unzufr."

x$Wohnzufriedenheit <- factor(x$Wohnzufriedenheit,
                              levels=c("(sehr) unzufr.", 
                                       "unzufrieden", 
                                       "es ist okay", 
                                       "zufrieden",
                                       "sehr zufrieden"),
                              ordered=TRUE)

x$Wohntyp[x$Wohntyp=="alleine in einer Wohnung"] <- "allein"
x$Wohntyp[x$Wohntyp=="bei meinen Eltern"] <- "Eltern"
x$Wohntyp[x$Wohntyp=="in einem Wohnheim"] <- "Wohnh."
x$Wohntyp[x$Wohntyp=="in einer WG"] <- "WG"
x$Wohntyp[x$Wohntyp=="zusammen mit meinem Partner/meiner Partnerin"] <- "Partn."

write.csv(x,file="wohnen.csv",row.names = FALSE)
