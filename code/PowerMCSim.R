# Monte-Carlo-Simulation der Power eines
# Zwei-Stichproben-Erwartungswert-Tests

m <- 200
n <- 300

alpha <- 0.05
R <- 10000
qnt <- qnorm(1-alpha/2)

z <- 0

for(r in 1:R){
  x <- rexp(m, rate=0.25)
  y <- rexp(n, rate=0.28)
  
  teststat <- (mean(x)-mean(y)) / 
    sqrt(var(x)/m + var(y)/n)
  
  if(teststat < -qnt | teststat > qnt){
    z <- z+1
  }
}

print(paste("Die Wahrscheinlichkeit, dass H0 abgelehnt wird, beträgt",z/R))
