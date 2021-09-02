
x <- 1:50
w <- 1 + sqrt(x)/2
example1 <- data.frame(x=x, y= x + rnorm(x)*w)
attach(example1)

fm <- lm(y ~ x)
summary(fm)

lrf <- lowess(x, y)
plot(x, y)
lines(x, lrf$y)
abline(0, 1, lty=3)
abline(coef(fm))

detach()

rm(list = ls(all = TRUE))
setwd("C:/Users/hassa/Desktop/Fall 2021/2- Econometrics (B2000)/HW1")
load("acs2017_ny_data.RData")

#glimpse(acs2017_ny)try this later
acs2017_ny[1:10,1:7]

attach(acs2017_ny)

summary(acs2017_ny)

