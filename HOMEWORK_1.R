
title: "Homework 1"
author: "Hassan Fayyaz"
date: "9/1/2021"

#Q1: Study group names (Hassan, Hugo, Adelia, & Mahrukh)
#Q2: Complete Hawks Diagnostic Test

#Q3: Probability of Rolling the 2 dice 20 times is given below

#Values for dice one: 6 2 3 6 2 5 5 1 4 1 5 4 2 4 1 6 6 5 2 6

#Probability of getting each number

# 1 is 3/20
# 2 is 4/20
# 3 is 1/20
# 4 is 3/20
# 5 is 4/20
# 6 is 5/20

#Values for dice two: 5 6 5 4 1 6 5 2 3 5 2 1 3 4 6 3 3 5 6 3

#Probability of getting each number

# 1 is 2/20
# 2 is 2/20
# 3 is 5/20
# 4 is 2/20
# 5 is 5/20
# 6 is 4/20


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

print(NN_obs <- length(AGE))

summary(AGE[female == 1])

summary(AGE[!female])

mean(AGE[female == 1])

sd(AGE[female == 1])

mean(AGE[!female])

sd(AGE[!female])



