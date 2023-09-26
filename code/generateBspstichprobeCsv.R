# Generiere Beispielstichproben für die Bootstrap-Verfahren

# Erwartungswert
n <- 80
mu <- 61
sigma <- 4
mu0 <- 63

repeat{
  x <- round((rt(n, df=8)*sqrt(6/8))*sigma + mu,2)
  teststat <- sqrt(n)*(mean(x)-mu0)/sd(x)
  if(abs(teststat) > 2.2 & abs(teststat) < 2.4) break
}

write.csv(data.frame(originalstichprobe=x),
          file="/home/tredem/sciebo/DataScience2/data/bootstrap1.csv",
          row.names=F)

# Zwei Erwartungswerte
m <- 50
n <- 80
muX <- 61
muY <- 65
sigmaX <- 4
sigmaY <- 7

repeat{
  x <- round((rt(m, df=8)*sqrt(6/8))*sigmaX + muX,2)
  y <- round((rt(n, df=8)*sqrt(6/8))*sigmaY + muY,2)
  teststat <- (mean(x)-mean(y))/sqrt(var(x)/m+var(y)/n)
  if(teststat > -1.7 & teststat < -1.4) break
}

D <- data.frame(gruppe=c(rep("x",m),rep("y",n)), wert=c(x,y))
D <- D[sample(1:(n+m),n+m),]
write.csv(D,
          file="/home/tredem/sciebo/DataScience2/data/bootstrap2.csv",
          row.names=F)

# Varianz
n <- 100
x <- round(rlnorm(n, 0, 0.5),4)
write.csv(data.frame(originalstichprobe=x),
          file="/home/tredem/sciebo/DataScience2/data/bootstrap3.csv",
          row.names=F)
