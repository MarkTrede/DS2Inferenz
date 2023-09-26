# Einlesen der Tagesrenditen von Siemens und Zalando

library(readxl)

setwd("/home/tredem/sciebo/DataScience2/data/")

ss <- read_xlsx("KurseSiemens.xlsx", skip=28, col_types = c("date","numeric"))
zz <- read_xlsx("KurseZalando.xlsx", skip=27, col_types = c("date","numeric"))

# Sind die Datumsangaben gleich?
all(ss[[1]] == zz[[1]])

# Ändern der Reihenfolge (Eikon fängt mit den neusten Beobachtungen an)
ss[[1]] <- rev(ss[[1]])
ss[[2]] <- rev(ss[[2]])
zz[[1]] <- rev(zz[[1]])
zz[[2]] <- rev(zz[[2]])

# Tagesrenditen berechnen
s <- (ss[[2]]-lag(ss[[2]]))/lag(ss[[2]])*100
z <- (zz[[2]]-lag(zz[[2]]))/lag(zz[[2]])*100
s <- round(s[-1],4)
z <- round(z[-1],4)

write.csv(data.frame(datum=as.Date(ss[[1]][-1]),siemens=s,zalando=z),
          file="tagesrenditen.csv",
          row.names = FALSE)
