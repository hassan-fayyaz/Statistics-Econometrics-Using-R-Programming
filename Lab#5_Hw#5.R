

title: "Lab#5, Econometrics B2000"

author: "Hassan Fayyaz"

date:"10/28/2021"

#1. What are the names of the people in your lab group?

#Hassan Fayyaz & Thakur Prasad Ghimire

#2. Write up the results of your work in Lab 5. Explain each step. Impress me.

#Answered below:

rm(list = ls(all = TRUE))
setwd("C:/Users/hassa/Desktop/Fall 2021/1_Econometrics_(B2000)/Homeworks/1_HW")
load("acs2017_ny_data.RData")

attach(acs2017_ny)

library(dplyr)
'Attaching package: 'dplyr'

The following objects are masked from 'package:stats':

    filter, lag

The following objects are masked from 'package:base':

    intersect, setdiff, setequal, union'

library(AER)
'Loading required package: car
Loading required package: carData

Attaching package: 'car'

The following object is masked from 'package:dplyr':

    recode

Loading required package: lmtest
Loading required package: zoo

Attaching package: 'zoo'

The following objects are masked from 'package:base':

    as.Date, as.Date.numeric

Loading required package: sandwich
Loading required package: survival

Attaching package: 'survival'

The following object is masked from 'acs2017_ny':

    veteran'

library(class)

library(stargazer)

'Please cite as: 

 Hlavac, Marek (2018). stargazer: Well-Formatted Regression and Summary Statistics Tables.
 R package version 5.2.2. https://CRAN.R-project.org/package=stargazer 
'
library(caret)
'Loading required package: ggplot2
Want to understand how all the pieces fit together? Read R for Data Science: https://r4ds.had.co.nz/
Loading required package: lattice

Attaching package: 'caret'

The following object is masked from 'package:survival':

    cluster'

#Hypothesis: Getting married increases the income wage of Asians living in NYC with a graduate level degree

#Here we are trying to find out the information about unmarried Asians who live in NYC and have a graduate degree 
use_varb <- (AGE >= 20) + (AGE <= 35) & (LABFORCE == 2) & (WKSWORK2 > 4) & (UHRSWORK >= 35) & (Asian == 1) & (in_NYC == 1) & (unmarried == 1) & ((educ_advdeg == 1) | (educ_advdeg == 1))
dat_use <- subset(acs2017_ny,use_varb) # 


#Research1 One focuses on the income of Asians living in New York City who have a graduate level degree & are unmarried 
Research1 <- lm(INCWAGE ~ AGE + in_NYC + unmarried + educ_advdeg +Asian + WKSWORK2 + UHRSWORK +LABFORCE)
summary(Research1)

'Call:
lm(formula = INCWAGE ~ AGE + in_NYC + unmarried + educ_advdeg + 
    Asian + WKSWORK2 + UHRSWORK + LABFORCE)

Residuals:
    Min      1Q  Median      3Q     Max 
-171996  -22885    -307    9235  646029 

Coefficients:
              Estimate Std. Error t value Pr(>|t|)    
(Intercept)   2011.914    973.768   2.066   0.0388 *  
AGE            104.390      9.285  11.243   <2e-16 ***
in_NYC        3306.554    295.405  11.193   <2e-16 ***
unmarried    -9231.001    363.319 -25.407   <2e-16 ***
educ_advdeg  33338.513    400.179  83.309   <2e-16 ***
Asian          -64.175    503.011  -0.128   0.8985    
WKSWORK2      3822.668    124.442  30.719   <2e-16 ***
UHRSWORK      1308.877     13.571  96.447   <2e-16 ***
LABFORCE    -12318.825    611.396 -20.149   <2e-16 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 55550 on 163149 degrees of freedom
  (33427 observations deleted due to missingness)
Multiple R-squared:  0.2952,	Adjusted R-squared:  0.2952 
F-statistic:  8543 on 8 and 163149 DF,  p-value: < 2.2e-16'

stargazer(Research1,type="text")

'
=================================================
                         Dependent variable:     
                    -----------------------------
                               INCWAGE           
-------------------------------------------------
AGE                          104.390***          
                               (9.285)           
                                                 
in_NYC                      3,306.554***         
                              (295.405)          
                                                 
unmarried                   -9,231.001***        
                              (363.319)          
                                                 
educ_advdeg                 33,338.510***        
                              (400.179)          
                                                 
Asian                          -64.175           
                              (503.011)          
                                                 
WKSWORK2                    3,822.668***         
                              (124.442)          
                                                 
UHRSWORK                    1,308.877***         
                              (13.571)           
                                                 
LABFORCE                   -12,318.830***        
                              (611.396)          
                                                 
Constant                     2,011.914**         
                              (973.768)          
                                                 
-------------------------------------------------
Observations                   163,158           
R2                              0.295            
Adjusted R2                     0.295            
Residual Std. Error   55,551.670 (df = 163149)   
F Statistic         8,542.573*** (df = 8; 163149)
=================================================
Note:                 *p<0.1; **p<0.05; ***p<0.01
'

attach(dat_use)
'The following object is masked from package:survival:

    veteran

The following objects are masked from acs2017_ny:

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN, CLASSWKR, CLASSWKRD,
    Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2, DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC,
    educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps, FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns,
    has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND, Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC,
    in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST, MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC,
    OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED, RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried,
    veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1
'
NNobs <- length(INCWAGE)
set.seed(12345)
graph_obs <- (runif(NNobs) < 0.1)
dat_graph <-subset(dat_use,graph_obs)  
plot(INCWAGE ~ AGE, pch = 20, col = rgb(0.5, 0.5, 0.8, alpha = 0.5), ylim = c(0,200000), data = dat_graph)


to_be_predicted1 <- data.frame(AGE = 20:35, LABFORCE = 2, WKSWORK2 = 4, UHRSWORK = 35, in_NYC = 1, unmarried =1, Asian=1, educ_advdeg = 1, educ_advdeg = 1)

to_be_predicted1$yhat <- predict(Research1, newdata = to_be_predicted1)

lines(yhat ~ AGE, data = to_be_predicted1)


#Next we will focus on Asians living in New York City who have a graduate level degree & are married

Research2 <- lm(INCWAGE ~ AGE + in_NYC + educ_advdeg +Asian + WKSWORK2 + UHRSWORK +LABFORCE)
summary(Research2)

'Call:
lm(formula = INCWAGE ~ AGE + in_NYC + educ_advdeg + Asian + WKSWORK2 + 
    UHRSWORK + LABFORCE)

Residuals:
    Min      1Q  Median      3Q     Max 
-134242  -38395  -17072   13754  550906 

Coefficients: (4 not defined because of singularities)
             Estimate Std. Error t value Pr(>|t|)   
(Intercept) -113565.8   148268.0  -0.766  0.44441   
AGE            2049.9      623.8   3.286  0.00116 **
in_NYC             NA         NA      NA       NA   
educ_advdeg        NA         NA      NA       NA   
Asian              NA         NA      NA       NA   
WKSWORK2      13157.2    24841.9   0.530  0.59682   
UHRSWORK       1249.3      539.4   2.316  0.02133 * 
LABFORCE           NA         NA      NA       NA   
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 89940 on 258 degrees of freedom
Multiple R-squared:  0.05887,	Adjusted R-squared:  0.04792 
F-statistic: 5.379 on 3 and 258 DF,  p-value: 0.001317'

stargazer(Research1,type="text")

'
=================================================
                         Dependent variable:     
                    -----------------------------
                               INCWAGE           
-------------------------------------------------
AGE                          104.390***          
                               (9.285)           
                                                 
in_NYC                      3,306.554***         
                              (295.405)          
                                                 
unmarried                   -9,231.001***        
                              (363.319)          
                                                 
educ_advdeg                 33,338.510***        
                              (400.179)          
                                                 
Asian                          -64.175           
                              (503.011)          
                                                 
WKSWORK2                    3,822.668***         
                              (124.442)          
                                                 
UHRSWORK                    1,308.877***         
                              (13.571)           
                                                 
LABFORCE                   -12,318.830***        
                              (611.396)          
                                                 
Constant                     2,011.914**         
                              (973.768)          
                                                 
-------------------------------------------------
Observations                   163,158           
R2                              0.295            
Adjusted R2                     0.295            
Residual Std. Error   55,551.670 (df = 163149)   
F Statistic         8,542.573*** (df = 8; 163149)
=================================================
Note:                 *p<0.1; **p<0.05; ***p<0.01
> '

NNobs <- length(INCWAGE)
set.seed(12345)
graph_obs <- (runif(NNobs) < 0.1)
dat_graph <-subset(dat_use,graph_obs)  
plot(INCWAGE ~ AGE, pch = 20, col = rgb(0.5, 0.5, 0.8, alpha = 0.5), ylim = c(0,200000), data = dat_graph)


to_be_predicted2 <- data.frame(AGE = 20:35, LABFORCE = 2, WKSWORK2 = 4, unmarried = 0, UHRSWORK = 35, in_NYC = 1, Asian=1, educ_advdeg = 1, educ_advdeg = 1)

to_be_predicted2$yhat <- predict(Research1, newdata = to_be_predicted2)

lines(yhat ~ AGE, data = to_be_predicted2)

#Research #3 using log of Age for variables like race, college degree, etc.

Research3 <- lm(INCWAGE ~ log(AGE) + I(log(AGE^2)) + educ_hs + educ_college + educ_advdeg + white + AfAm + Hispanic+Asian)
summary(Research3)

'Call:
lm(formula = INCWAGE ~ log(AGE) + I(log(AGE^2)) + educ_hs + educ_college + 
    educ_advdeg + white + AfAm + Hispanic + Asian)

Residuals:
    Min      1Q  Median      3Q     Max 
-140188  -37189  -18689   11431  550904 

Coefficients: (7 not defined because of singularities)
              Estimate Std. Error t value Pr(>|t|)    
(Intercept)    -203935      84561  -2.412 0.016574 *  
log(AGE)         84750      24052   3.524 0.000503 ***
I(log(AGE^2))       NA         NA      NA       NA    
educ_hs             NA         NA      NA       NA    
educ_college        NA         NA      NA       NA    
educ_advdeg         NA         NA      NA       NA    
white               NA         NA      NA       NA    
AfAm                NA         NA      NA       NA    
Hispanic        -34648      53234  -0.651 0.515707    
Asian               NA         NA      NA       NA    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 90390 on 259 degrees of freedom
Multiple R-squared:  0.04576,	Adjusted R-squared:  0.03839 
F-statistic:  6.21 on 2 and 259 DF,  p-value: 0.002321

'

stargazer(Research3, type = "text")

'
===============================================
                        Dependent variable:    
                    ---------------------------
                              INCWAGE          
-----------------------------------------------
log(AGE)                   84,750.190***       
                           (24,051.980)        
                                               
I(log(AGE2))                                   
                                               
                                               
educ_hs                                        
                                               
                                               
educ_college                                   
                                               
                                               
educ_advdeg                                    
                                               
                                               
white                                          
                                               
                                               
AfAm                                           
                                               
                                               
Hispanic                    -34,648.140        
                           (53,233.580)        
                                               
Asian                                          
                                               
                                               
Constant                  -203,935.200**       
                           (84,560.710)        
                                               
-----------------------------------------------
Observations                    262            
R2                             0.046           
Adjusted R2                    0.038           
Residual Std. Error    90,390.130 (df = 259)   
F Statistic           6.210*** (df = 2; 259)   
===============================================
Note:               *p<0.1; **p<0.05; ***p<0.01
> '

attach(dat_use)
'The following objects are masked from dat_use (pos = 3):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN, CLASSWKR, CLASSWKRD,
    Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2, DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC,
    educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps, FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns,
    has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND, Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC,
    in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST, MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC,
    OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED, RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried,
    veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following object is masked from package:survival:

    veteran

The following objects are masked from acs2017_ny:

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN, CLASSWKR, CLASSWKRD,
    Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2, DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC,
    educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps, FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns,
    has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND, Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC,
    in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST, MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC,
    OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED, RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried,
    veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1'

NNobs <- length(INCWAGE)
set.seed(12345)
graph_obs <- (runif(NNobs) < 0.1)
dat_graph <-subset(dat_use,graph_obs)  

plot(INCWAGE ~ (AGE), pch = 20, col = rgb(0.5, 0.5, 0.8, alpha = 0.5), ylim = c(0,200000), data = dat_graph)

to_be_predicted3 <- data.frame(AGE = 25:65, female = 1, white = 1, Hispanic =0, AfAm = 0,Asian=0,educ_hs = 0, educ_college = 1, educ_advdeg = 0)
to_be_predicted3$yhat <- predict(Research3, newdata = to_be_predicted3)
lines(yhat ~ AGE, data = to_be_predicted3)

stargazer(Research1, Research2, Research3, type = "text")

'
===============================================================================================
                                                Dependent variable:                            
                    ---------------------------------------------------------------------------
                                                      INCWAGE                                  
                                 (1)                       (2)                    (3)          
-----------------------------------------------------------------------------------------------
AGE                          104.390***                2,049.879***                            
                               (9.285)                  (623.779)                              
                                                                                               
in_NYC                      3,306.554***                                                       
                              (295.405)                                                        
                                                                                               
unmarried                   -9,231.001***                                                      
                              (363.319)                                                        
                                                                                               
log(AGE)                                                                     84,750.190***     
                                                                              (24,051.980)     
                                                                                               
I(log(AGE2))                                                                                   
                                                                                               
                                                                                               
educ_hs                                                                                        
                                                                                               
                                                                                               
educ_college                                                                                   
                                                                                               
                                                                                               
educ_advdeg                 33,338.510***                                                      
                              (400.179)                                                        
                                                                                               
white                                                                                          
                                                                                               
                                                                                               
AfAm                                                                                           
                                                                                               
                                                                                               
Hispanic                                                                      -34,648.140      
                                                                              (53,233.580)     
                                                                                               
Asian                          -64.175                                                         
                              (503.011)                                                        
                                                                                               
WKSWORK2                    3,822.668***                13,157.210                             
                              (124.442)                (24,841.880)                            
                                                                                               
UHRSWORK                    1,308.877***               1,249.279**                             
                              (13.571)                  (539.375)                              
                                                                                               
LABFORCE                   -12,318.830***                                                      
                              (611.396)                                                        
                                                                                               
Constant                     2,011.914**               -113,565.800          -203,935.200**    
                              (973.768)               (148,268.000)           (84,560.710)     
                                                                                               
-----------------------------------------------------------------------------------------------
Observations                   163,158                     262                    262          
R2                              0.295                     0.059                  0.046         
Adjusted R2                     0.295                     0.048                  0.038         
Residual Std. Error   55,551.670 (df = 163149)    89,941.010 (df = 258)  90,390.130 (df = 259) 
F Statistic         8,542.573*** (df = 8; 163149) 5.379*** (df = 3; 258) 6.210*** (df = 2; 259)
===============================================================================================
Note:                                                               *p<0.1; **p<0.05; ***p<0.01
'

#3. Each person in the group should find 2 academic articles related to your current choice of final project. Write a short paragraph on each, concentrating on what data is used (and whether it is accessible), what econometric techniques, and what questions are addressed. Include names of people in your project group (if different from lab group)

#Answered separately as a pdf file.