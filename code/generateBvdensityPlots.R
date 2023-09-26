# Generate bivariate density plots

setwd("/home/tredem/Dropbox/RCode/")
source("devices.R")

f <- function(x,y) (2*exp(-x-y)/(1+exp(-x)+exp(-y))^3)
x <- y <- seq(-4,4,length=30)
z <- matrix(0,length(x),length(y))
for(i in 1:length(x)){
    for(j in 1:length(y)){
        z[i,j] <- f(x[i],y[j])
    }
}

opendev("linux",7,5)
par(mar=c(0.5,0.5,0.5,0.5))
persp(x,y,z,
      col="light green",
      zlab="f(x,y)",
      theta=35,
      phi=25)
savedev("linux",file="~/Schreibtisch/bvdensity1.pdf")


f <- function(x,y) (2*exp(-x-y)/(1+exp(-x)+exp(-y))^3)
x <- y <- seq(-4,4,length=101)
z <- matrix(0,length(x),length(y))
for(i in 1:length(x)){
    for(j in 1:length(y)){
        z[i,j] <- f(x[i],y[j])
    }
}

opendev("linux",7,7)
par(mar=c(3,3,0.5,0.5))
contour(x,y,z)
savedev("linux",file="~/Schreibtisch/bvdensity2.pdf")

opendev("linux",8.5,7)
par(mar=c(3,3,0.5,0.5))
filled.contour(x,y,z)
savedev("linux",file="~/Schreibtisch/bvdensity3.pdf")
