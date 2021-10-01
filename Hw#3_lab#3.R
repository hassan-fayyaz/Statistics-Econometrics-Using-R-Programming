title: "Homework#3, Lab#3, Econometrics B2000"

author: "Hassan Fayyaz"

date:"09/30/2021"

'Q#1: Names of study group ' 

'Adelia Fida, Hassan Fayyaz, Hugo Pinto, Tanmay Thomas'

'Q#2: Write up the results of your Lab 2 work.'

rm(list = ls(all = TRUE))
setwd("C:/Users/hassa/Desktop/Fall 2021/1_Econometrics_(B2000)/Homeworks/1_HW")
load("acs2017_ny_data.RData")

dat_NYC <- subset(acs2017_ny, (acs2017_ny$in_NYC == 1)&(acs2017_ny$AGE > 20) & (acs2017_ny$AGE < 66))
attach(dat_NYC)

'The following objects are masked from dat_NYC (pos = 3):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 4):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 5):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 6):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 7):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 8):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 9):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 10):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 11):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 12):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 13):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 14):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 15):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 16):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 17):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 18):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 19):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 20):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 21):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 22):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 23):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 24):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 25):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 26):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 27):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 28):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 29):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 30):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 31):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 32):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 33):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 34):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 35):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 36):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 37):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 38):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 39):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 40):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 41):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 42):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 43):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 44):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 45):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 46):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 47):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 48):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 49):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 50):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 51):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 52):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 53):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from acs2017_ny (pos = 54):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 55):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from acs2017_ny (pos = 56):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 57):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from acs2017_ny (pos = 58):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 59):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from acs2017_ny (pos = 60):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 61):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from acs2017_ny (pos = 62):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from acs2017_ny (pos = 63):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 64):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 65):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from acs2017_ny (pos = 66):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from acs2017_ny (pos = 67):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 68):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from dat_NYC (pos = 70):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from acs2017_ny (pos = 71):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from acs2017_ny (pos = 72):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1

The following objects are masked from acs2017_ny (pos = 73):

    AfAm, AGE, Amindian, ANCESTR1, ANCESTR1D, ANCESTR2, ANCESTR2D, Asian, below_150poverty, below_200poverty, below_povertyline, BPL, BPLD, BUILTYR2, CITIZEN,
    CLASSWKR, CLASSWKRD, Commute_bus, Commute_car, Commute_other, Commute_rail, Commute_subway, COSTELEC, COSTFUEL, COSTGAS, COSTWATR, DEGFIELD, DEGFIELD2,
    DEGFIELD2D, DEGFIELDD, DEPARTS, EDUC, educ_advdeg, educ_college, educ_hs, educ_nohs, educ_somecoll, EDUCD, EMPSTAT, EMPSTATD, FAMSIZE, female, foodstamps,
    FOODSTMP, FTOTINC, FUELHEAT, GQ, has_AnyHealthIns, has_PvtHealthIns, HCOVANY, HCOVPRIV, HHINCOME, Hisp_Cuban, Hisp_DomR, Hisp_Mex, Hisp_PR, HISPAN, HISPAND,
    Hispanic, in_Bronx, in_Brooklyn, in_Manhattan, in_Nassau, in_NYC, in_Queens, in_StatenI, in_Westchester, INCTOT, INCWAGE, IND, LABFORCE, LINGISOL, MARST,
    MIGCOUNTY1, MIGPLAC1, MIGPUMA1, MIGRATE1, MIGRATE1D, MORTGAGE, NCHILD, NCHLT5, OCC, OWNCOST, OWNERSHP, OWNERSHPD, POVERTY, PUMA, PWPUMA00, RACE, race_oth, RACED,
    RELATE, RELATED, RENT, ROOMS, SCHOOL, SEX, SSMC, TRANTIME, TRANWORK, UHRSWORK, UNITSSTR, unmarried, veteran, VETSTAT, VETSTATD, white, WKSWORK2, YRSUSA1'

borough_f <- factor((in_Bronx + 2*in_Manhattan + 3*in_StatenI + 4*in_Brooklyn + 5*in_Queens), levels=c(1,2,3,4,5),labels = c("Bronx","Manhattan","Staten Island","Brooklyn","Queens"))

norm_varb <- function(X_in) {
  (X_in - min(X_in, na.rm = TRUE))/( max(X_in, na.rm = TRUE) - min(X_in, na.rm = TRUE) )
}

is.na(POVERTY) <- which(POVERTY == 9999999)
pov_unm <- POVERTY + unmarried
norm_inc_tot <- norm_varb(INCTOT)
norm_pov_unm <- norm_varb(pov_unm)

data_use_prelim <- data.frame(norm_inc_tot,norm_pov_unm)
good_obs_data_use <- complete.cases(data_use_prelim,borough_f)
dat_use <- subset(data_use_prelim,good_obs_data_use)
y_use <- subset(borough_f,good_obs_data_use)


set.seed(12345)
NN_obs <- sum(good_obs_data_use == 1)
select1 <- (runif(NN_obs) < 0.8)
train_data <- subset(dat_use,select1)
test_data <- subset(dat_use,(!select1))
cl_data <- y_use[select1]
true_data <- y_use[!select1]


summary(cl_data)
'Bronx     Manhattan Staten Island      Brooklyn        Queens 
         4880          5250          1891         12416         10923 '
prop.table(summary(cl_data))
'Bronx     Manhattan Staten Island      Brooklyn        Queens 
   0.13800905    0.14847285    0.05347851    0.35113122    0.30890837 '
summary(train_data)
'norm_inc_tot      norm_pov_unm   
 Min.   :0.00000   Min.   :0.0000  
 1st Qu.:0.01191   1st Qu.:0.3227  
 Median :0.02693   Median :0.7171  
 Mean   :0.04265   Mean   :0.6445  
 3rd Qu.:0.05219   3rd Qu.:0.9980  
 Max.   :1.00000   Max.   :1.0000  '


require(class)
for (indx in seq(1, 9, by= 2)) {
  pred_borough <- knn(train_data, test_data, cl_data, k = indx, l = 0, prob = FALSE, use.all = TRUE)
  num_correct_labels <- sum(pred_borough == true_data)
  correct_rate <- num_correct_labels/length(true_data)
  print(c(indx,correct_rate))
}

'[1] 1.0000000 0.3364346
 [1] 3.0000000 0.3439008
 [1] 5.0000000 0.3501034
 [1] 7.0000000 0.3551574
 [1] 9.0000000 0.3566506 '

cl_data_n <- as.numeric(cl_data)

model_ols1 <- lm(cl_data_n ~ train_data$norm_inc_tot + train_data$norm_pov_unm)

y_hat <- fitted.values(model_ols1)

mean(y_hat[cl_data_n == 1])
#[1] 3.497383
mean(y_hat[cl_data_n == 2])
#[1] 3.488055
mean(y_hat[cl_data_n == 3])
#[1] 3.601521
mean(y_hat[cl_data_n == 4])
#[1] 3.548642
mean(y_hat[cl_data_n == 5])
#[1] 3.577961

# maybe try classifying one at a time with OLS

cl_data_n1 <- as.numeric(cl_data_n == 1)
model_ols_v1 <- lm(cl_data_n1 ~ train_data$norm_inc_tot + train_data$norm_pov_unm)
y_hat_v1 <- fitted.values(model_ols_v1)

mean(y_hat_v1[cl_data_n1 == 1])
#[1] 0.1631753
mean(y_hat_v1[cl_data_n1 == 0])
#[1] 0.1339798

