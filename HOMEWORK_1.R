
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

#Q4 Replicate commands given in the lecture notes & tell something interesting about the date

#Something interesting I learned from this data is that in New York Business degrees are the most popular and most people just get a high school diploma.

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


#Q5 S&P 500 Historical Data

#Currency in USD

#   "Date"	    "Open"	  "High"	   "Low"	  "Close" "Adj Close"	  "Volume"


#Jan 31, 2020	 3,282.33	 3,282.33	 3,214.68	 3,225.52	 3,225.52	 4,527,830,000
#Jan 30, 2020	 3,256.45	 3,285.91	 3,242.80	 3,283.66	 3,283.66	 3,787,250,000
#Jan 29, 2020	 3,289.46	 3,293.47	 3,271.89	 3,273.40	 3,273.40	 3,584,500,000
#Jan 28, 2020	 3,255.35	 3,285.78	 3,253.22	 3,276.24	 3,276.24	 3,526,720,000
#Jan 27, 2020	 3,247.16	 3,258.85	 3,234.50	 3,243.63	 3,243.63	 3,823,100,000
#Jan 24, 2020	 3,333.10	 3,333.18	 3,281.53	 3,295.47	 3,295.47	 3,707,130,000
#Jan 23, 2020	 3,315.77	 3,326.88	 3,301.87	 3,325.54	 3,325.54	 3,764,860,000
#Jan 22, 2020	 3,330.02	 3,337.77	 3,320.04	 3,321.75	 3,321.75	 3,619,850,000
#Jan 21, 2020	 3,321.03	 3,329.79	 3,316.61	 3,320.79	 3,320.79	 4,105,340,000
#Jan 17, 2020	 3,323.66	 3,329.88	 3,318.86	 3,329.62	 3,329.62	 3,698,170,000
#Jan 16, 2020	 3,302.97	 3,317.11	 3,302.82	 3,316.81	 3,316.81	 3,535,080,000
#Jan 15, 2020	 3,282.27	 3,298.66	 3,280.69	 3,289.29	 3,289.29	 3,716,840,000
#Jan 14, 2020	 3,285.35	 3,294.25	 3,277.19	 3,283.15	 3,283.15	 3,665,130,000
#Jan 13, 2020	 3,271.13	 3,288.13	 3,268.43	 3,288.13	 3,288.13	 3,456,380,000
#Jan 10, 2020	 3,281.81	 3,282.99	 3,260.86	 3,265.35	 3,265.35	 3,212,970,000
#Jan 09, 2020	 3,266.03	 3,275.58	 3,263.67	 3,274.70	 3,274.70	 3,638,390,000
#Jan 08, 2020	 3,238.59	 3,267.07	 3,236.67	 3,253.05	 3,253.05	 3,720,890,000
#Jan 07, 2020	 3,241.86	 3,244.91	 3,232.43	 3,237.18	 3,237.18	 3,420,380,000
#Jan 06, 2020	 3,217.55	 3,246.84	 3,214.64	 3,246.28	 3,246.28	 3,674,070,000
#Jan 03, 2020	 3,226.36	 3,246.15	 3,222.34	 3,234.85	 3,234.85	 3,461,290,000
#Jan 02, 2020	 3,244.67	 3,258.14	 3,235.53	 3,257.85	 3,257.85	 3,458,250,000


