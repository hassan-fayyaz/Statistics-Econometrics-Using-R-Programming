

title: "Exam#1, Econometrics B2000"

author: "Hassan Fayyaz"

date:"10/21/2021"

rm(list = ls(all = TRUE))
setwd("C:/Users/hassa/Desktop/Fall 2021/1_Econometrics_(B2000)/Homeworks/1_HW")
load("Household_Pulse_data.RData")

library(dplyr)

'Attaching package: 'dplyr'

The following objects are masked from 'package:stats':

    filter, lag

The following objects are masked from 'package:base':

    intersect, setdiff, setequal, union
'

covid_dat_use <- Household_Pulse_data
attach(covid_dat_use)
summary(covid_dat_use)

'        RHISPANIC       RRACE                EEDUC               MS        EGENID_BIRTH       GENID_DESCRIBE       SEXUAL_ORIENTATION                      KIDS_LT5Y                         KIDS_5_11Y   
 Not Hispanic:62660   White:56938   less than hs:  411   NA       :  881   male  :27592   NA         : 1131   NA            : 1506    NA                        :62342   NA                       :58467  
 Hispanic    : 6454   Black: 5412   some hs     :  936   married  :40036   female:41522   male       :26796   gay or lesbian: 2343    Yes children under 5 in HH: 6772   Yes children 5 - 11 in HH:10647  
                      Asian: 3561   HS diploma  : 7857   widowed  : 3872                  female     :40263   straight      :61238                                                                        
                      Other: 3203   some coll   :14596   divorced :10310                  transgender:  202   bisexual      : 2288                                                                        
                                    assoc deg   : 7508   separated: 1214                  other      :  722   something else:  871                                                                        
                                    bach deg    :20075   never    :12801                                      dont know     :  868                                                                        
                                    adv deg     :17731                                                                                                                                                    
                     KIDS_12_17Y                                 ENROLLNONE                  RECVDVACC                          DOSESRV                          GETVACRV    
 NA                        :58046   NA                                :64285   NA                 :  851   NA                       : 9105   NA                      :61159  
 Yes children 12 - 17 in HH:11068   children not in any type of school: 4829   yes got vaxx       :60326   yes got all doses        :57762   definitely will get vaxx:  609  
                                                                               no did not get vaxx: 7937   yes plan to get all doses: 1993   probably will get vaxx  :  731  
                                                                                                           no will not get all doses:  254   unsure about vaxx       : 1584  
                                                                                                                                             probably not            : 1599  
                                                                                                                                             definitely not          : 3432  
                                                                                                                                                                             
                               KIDDOSES                        KIDGETVAC                          HADCOVID                      WRKLOSSRV                              ANYWORK     
 NA                                :58318   NA                      :65384   NA                       : 1363   NA                    : 1961   NA                           : 2135  
 Yes kids got or will get all doses: 7135   definitely will get vaxx:  487   yes doctor told had covid: 9122   yes recent HH job loss: 8058   yes employment in last 7 days:39237  
 no kids did not or will not       : 3661   probably will get vaxx  :  439   no did not               :58221   no recent HH job loss :59095   no employment in last 7 days :27742  
                                            unsure about vaxx       :  736   not sure                 :  408                                                                       
                                            probably not            :  593                                                                                                         
                                            definitely not          : 1036                                                                                                         
                                            dont know yet           :  439                                                                                                         
                KINDWORK                RSNNOWRKRV                                         CHLDCARE                              CURFOODSUF                                                  CHILDFOOD    
 NA                 :30540   NA              :42659   NA                                       :58419   NA                            : 6770   NA                                                 :64258  
 work for govt      : 6378   retired         :15024   yes impacts to childcare because pandemic: 2566   had enough food               :49234   often kids not eating enough because couldnt afford:  271  
 work for private co:21370   other           : 4027   no                                       : 8129   had enough but not what wanted: 9947   sometimes kids not eating enough                   : 1191  
 work for nonprofit : 5055   sick or disabled: 1451                                                     sometimes not enough food     : 2486   kids got enough food                               : 3394  
 self employed      : 4966   caring for kids : 1329                                                     often not enough food         :  677                                                              
 work in family biz :  805   laid off        : 1164                                                                                                                                                       
                             (Other)         : 3460                                                                                                                                                       
                                            ANXIOUS                                                  WORRY                                 TENURE                                     LIVQTRRV    
 NA                                             : 7946   NA                                             : 8016   NA                           :11103   live in detached 1 family          :41348  
 no anxiety over past 2 wks                     :26611   no worry over past 2 wks                       :31876   housing owned free and clear :16738   NA                                 :11336  
 several days anxiety over past 2 wks           :19794   several days worried over past 2 wks           :17936   housing owned with mortgage  :28016   live in bldg w 5+ apts             : 6731  
 more than half the days anxiety over past 2 wks: 6140   more than half the days worried over past 2 wks: 4979   housing rented               :12579   live in 1 family attached to others: 4628  
 nearly every day anxiety                       : 8623   nearly every day worry                         : 6307   housing occupied without rent:  678   live in mobile home                : 1781  
                                                                                                                                                       live in building with 3-4 apts     : 1737  
                                                                                                                                                       (Other)                            : 1553  
            RENTCUR                     MORTCUR                                             EVICT                                                FORCLOSE               EST_ST     
 NA             :56572   NA                 :41200   NA                                        :67859   NA                                           :67695   California   : 5359  
 current on rent:11239   current on mortgage:26462   very likely evicted in next 2 months      :  207   very likely forclosed in next 2 months       :   65   Texas        : 3766  
 behind on rent : 1303   behind on mortgage : 1452   somewhat likely evicted in next 2 months  :  377   somewhat likely forclosed in next 2 months   :  218   Florida      : 2728  
                                                     not very likely evicted in next 2 months  :  345   not very likely forclosed in next 2 months   :  474   Washington   : 2634  
                                                     not at all likely evicted in next 2 months:  326   not at all forclosed evicted in next 2 months:  662   Massachusetts: 1965  
                                                                                                                                                              Oregon       : 1934  
                                                                                                                                                              (Other)      :50728  
                   PRIVHLTH                      PUBHLTH            REGION                          INCOME      Num_kids_Pub_School Num_kids_Priv_School Num_kids_homeschool        Works_onsite  
 has private health ins:46869   has public health ins:23346   Northeast:10478   NA                     :20335   Min.   :0.00        Min.   :0.00         Min.   :0.00        NA           : 6350  
 no private health ins :11275   no public health ins :33381   South    :22680   HH income $75 - 99.9   :10117   1st Qu.:1.00        1st Qu.:0.00         1st Qu.:0.00        worked onsite:34918  
 NA                    :10970   NA                   :12387   Midwest  :13651   HH income $35k - 49.9  : 9330   Median :2.00        Median :1.00         Median :1.00        no           :27846  
                                                              West     :22305   HH income $50k - 74.9  : 7830   Mean   :1.71        Mean   :1.03         Mean   :0.87                             
                                                                                HH income $150 - 199   : 6117   3rd Qu.:2.00        3rd Qu.:2.00         3rd Qu.:2.00                             
                                                                                HH income $25k - $34.9k: 5805   Max.   :4.00        Max.   :2.00         Max.   :2.00                             
                                                                                (Other)                : 9580   NA's   :#55108       NA's   :66430        NA's   :67421                            
'works_remote            Shop_in_store                   eat_in_restaurant
NA             : 8022   NA              : 6873   NA                       : 7217  
worked remotely:22863   shopped in store:53576   eat at restaurant indoors:32405  
no             :38229   no              : 8665   no                       :29492'

##########################################################################################################################################################################################################
na.omit(covid_dat_use)

'RHISPANIC       RRACE                EEDUC               MS        EGENID_BIRTH       GENID_DESCRIBE       SEXUAL_ORIENTATION                      KIDS_LT5Y                         KIDS_5_11Y   
Not Hispanic:62660   White:56938   less than hs:  411   NA       :  881   male  :27592   NA         : 1131   NA            : 1506    NA                        :62342   NA                       :58467  
Hispanic    : 6454   Black: 5412   some hs     :  936   married  :40036   female:41522   male       :26796   gay or lesbian: 2343    Yes children under 5 in HH: 6772   Yes children 5 - 11 in HH:10647  
Asian: 3561   HS diploma  : 7857   widowed  : 3872                  female     :40263   straight      :61238                                                                        
Other: 3203   some coll   :14596   divorced :10310                  transgender:  202   bisexual      : 2288                                                                        
assoc deg   : 7508   separated: 1214                  other      :  722   something else:  871                                                                        
bach deg    :20075   never    :12801                                      dont know     :  868                                                                        
adv deg     :17731                                                                                                                                                    
KIDS_12_17Y                                 ENROLLNONE                  RECVDVACC                          DOSESRV                          GETVACRV    
NA                        :58046   NA                                :64285   NA                 :  851   NA                       : 9105   NA                      :61159  
Yes children 12 - 17 in HH:11068   children not in any type of school: 4829   yes got vaxx       :60326   yes got all doses        :57762   definitely will get vaxx:  609  
no did not get vaxx: 7937   yes plan to get all doses: 1993   probably will get vaxx  :  731  
no will not get all doses:  254   unsure about vaxx       : 1584  
probably not            : 1599  
definitely not          : 3432  

KIDDOSES                        KIDGETVAC                          HADCOVID                      WRKLOSSRV                              ANYWORK     
NA                                :58318   NA                      :65384   NA                       : 1363   NA                    : 1961   NA                           : 2135  
Yes kids got or will get all doses: 7135   definitely will get vaxx:  487   yes doctor told had covid: 9122   yes recent HH job loss: 8058   yes employment in last 7 days:39237  
no kids did not or will not       : 3661   probably will get vaxx  :  439   no did not               :58221   no recent HH job loss :59095   no employment in last 7 days :27742  
unsure about vaxx       :  736   not sure                 :  408                                                                       
probably not            :  593                                                                                                         
definitely not          : 1036                                                                                                         
dont know yet           :  439                                                                                                         
KINDWORK                RSNNOWRKRV                                         CHLDCARE                              CURFOODSUF                                                  CHILDFOOD    
NA                 :30540   NA              :42659   NA                                       :58419   NA                            : 6770   NA                                                 :64258  
work for govt      : 6378   retired         :15024   yes impacts to childcare because pandemic: 2566   had enough food               :49234   often kids not eating enough because couldnt afford:  271  
work for private co:21370   other           : 4027   no                                       : 8129   had enough but not what wanted: 9947   sometimes kids not eating enough                   : 1191  
work for nonprofit : 5055   sick or disabled: 1451                                                     sometimes not enough food     : 2486   kids got enough food                               : 3394  
self employed      : 4966   caring for kids : 1329                                                     often not enough food         :  677                                                              
work in family biz :  805   laid off        : 1164                                                                                                                                                       
(Other)         : 3460                                                                                                                                                       
ANXIOUS                                                  WORRY                                 TENURE                                     LIVQTRRV    
NA                                             : 7946   NA                                             : 8016   NA                           :11103   live in detached 1 family          :41348  
no anxiety over past 2 wks                     :26611   no worry over past 2 wks                       :31876   housing owned free and clear :16738   NA                                 :11336  
several days anxiety over past 2 wks           :19794   several days worried over past 2 wks           :17936   housing owned with mortgage  :28016   live in bldg w 5+ apts             : 6731  
more than half the days anxiety over past 2 wks: 6140   more than half the days worried over past 2 wks: 4979   housing rented               :12579   live in 1 family attached to others: 4628  
nearly every day anxiety                       : 8623   nearly every day worry                         : 6307   housing occupied without rent:  678   live in mobile home                : 1781  
live in building with 3-4 apts     : 1737  
(Other)                            : 1553  
RENTCUR                     MORTCUR                                             EVICT                                                FORCLOSE               EST_ST     
NA             :56572   NA                 :41200   NA                                        :67859   NA                                           :67695   California   : 5359  
current on rent:11239   current on mortgage:26462   very likely evicted in next 2 months      :  207   very likely forclosed in next 2 months       :   65   Texas        : 3766  
behind on rent : 1303   behind on mortgage : 1452   somewhat likely evicted in next 2 months  :  377   somewhat likely forclosed in next 2 months   :  218   Florida      : 2728  
not very likely evicted in next 2 months  :  345   not very likely forclosed in next 2 months   :  474   Washington   : 2634  
not at all likely evicted in next 2 months:  326   not at all forclosed evicted in next 2 months:  662   Massachusetts: 1965  
Oregon       : 1934  
(Other)      :50728  
PRIVHLTH                      PUBHLTH            REGION                          INCOME      Num_kids_Pub_School Num_kids_Priv_School Num_kids_homeschool        Works_onsite  
has private health ins:46869   has public health ins:23346   Northeast:10478   NA                     :20335   Min.   :0.00        Min.   :0.00         Min.   :0.00        NA           : 6350  
no private health ins :11275   no public health ins :33381   South    :22680   HH income $75 - 99.9   :10117   1st Qu.:1.00        1st Qu.:0.00         1st Qu.:0.00        worked onsite:34918  
NA                    :10970   NA                   :12387   Midwest  :13651   HH income $35k - 49.9  : 9330   Median :2.00        Median :1.00         Median :1.00        no           :27846  
West     :22305   HH income $50k - 74.9  : 7830   Mean   :1.71        Mean   :1.03         Mean   :0.87                             
HH income $150 - 199   : 6117   3rd Qu.:2.00        3rd Qu.:2.00         3rd Qu.:2.00                             
HH income $25k - $34.9k: 5805   Max.   :4.00        Max.   :2.00         Max.   :2.00                             
(Other)                : 9580   NA's   :55108       NA's   :66430        NA's   :67421                           
#          works_remote            Shop_in_store                   eat_in_restaurant
# NA             : 8022   NA              : 6873   NA                       : 7217  
# worked remotely:22863   shopped in store:53576   eat at restaurant indoors:32405  
# no             :38229   no              : 8665   no                       :29492  
                                                                                   
                                                                                   
                                                                                   
                                                                                   
'> na.omit(covid_dat_use)
        RHISPANIC RRACE        EEDUC       MS EGENID_BIRTH GENID_DESCRIBE SEXUAL_ORIENTATION                  KIDS_LT5Y                KIDS_5_11Y                KIDS_12_17Y ENROLLNONE
98   Not Hispanic White     bach deg  married       female         female           straight Yes children under 5 in HH                        NA                         NA         NA
101  Not Hispanic White    some coll  married         male           male           straight Yes children under 5 in HH                        NA                         NA         NA
169  Not Hispanic White    assoc deg  married       female         female           straight                         NA                        NA Yes children 12 - 17 in HH         NA
190  Not Hispanic White    some coll  married       female         female           straight                         NA Yes children 5 - 11 in HH                         NA         NA
194  Not Hispanic White     bach deg    never       female         female           straight                         NA Yes children 5 - 11 in HH Yes children 12 - 17 in HH         NA
463  Not Hispanic White    some coll    never         male           male           straight                         NA                        NA Yes children 12 - 17 in HH         NA
557  Not Hispanic White    assoc deg  married         male           male           straight                         NA                        NA Yes children 12 - 17 in HH         NA
734  Not Hispanic White    some coll  married         male           male           straight                         NA                        NA Yes children 12 - 17 in HH         NA
819  Not Hispanic White     bach deg  married       female         female           straight                         NA                        NA Yes children 12 - 17 in HH         NA
957  Not Hispanic White      adv deg  married         male           male           straight Yes children under 5 in HH Yes children 5 - 11 in HH                         NA         NA
1092 Not Hispanic White      adv deg  married         male           male                 NA Yes children under 5 in HH                        NA                         NA         NA
1184     Hispanic White less than hs  married       female         female           straight                         NA                        NA Yes children 12 - 17 in HH         NA
1238 Not Hispanic White      adv deg  married         male           male           straight Yes children under 5 in HH                        NA                         NA         NA
1277 Not Hispanic White      adv deg  married       female         female           straight Yes children under 5 in HH                        NA                         NA         NA
1341 Not Hispanic White   HS diploma  married       female         female           straight                         NA                        NA Yes children 12 - 17 in HH         NA
1351     Hispanic White      some hs  married         male           male           straight                         NA                        NA Yes children 12 - 17 in HH         NA
1360 Not Hispanic White     bach deg  married       female         female           straight                         NA Yes children 5 - 11 in HH Yes children 12 - 17 in HH         NA
1471 Not Hispanic Other    some coll    never       female         female           straight                         NA                        NA Yes children 12 - 17 in HH         NA
1591 Not Hispanic White    some coll divorced       female         female           straight                         NA Yes children 5 - 11 in HH                         NA         NA
1611 Not Hispanic White   HS diploma  married       female             NA                 NA Yes children under 5 in HH Yes children 5 - 11 in HH Yes children 12 - 17 in HH         NA
1690 Not Hispanic White    assoc deg divorced       female         female           straight Yes children under 5 in HH                        NA                         NA         NA
1818 Not Hispanic White    some coll  married       female         female           straight Yes children under 5 in HH Yes children 5 - 11 in HH                         NA         NA
               RECVDVACC           DOSESRV          GETVACRV                           KIDDOSES      KIDGETVAC                  HADCOVID              WRKLOSSRV                       ANYWORK
98   no did not get vaxx                NA unsure about vaxx                                 NA             NA                no did not  no recent HH job loss yes employment in last 7 days
101  no did not get vaxx                NA    definitely not                                 NA             NA                no did not  no recent HH job loss yes employment in last 7 days
169         yes got vaxx yes got all doses                NA Yes kids got or will get all doses             NA                no did not  no recent HH job loss yes employment in last 7 days
190         yes got vaxx yes got all doses                NA                                 NA             NA                no did not  no recent HH job loss yes employment in last 7 days
194  no did not get vaxx                NA    definitely not        no kids did not or will not definitely not yes doctor told had covid  no recent HH job loss yes employment in last 7 days
463         yes got vaxx yes got all doses                NA Yes kids got or will get all doses             NA                no did not  no recent HH job loss yes employment in last 7 days
557  no did not get vaxx                NA    definitely not        no kids did not or will not definitely not yes doctor told had covid  no recent HH job loss yes employment in last 7 days
734  no did not get vaxx                NA      probably not        no kids did not or will not   probably not yes doctor told had covid  no recent HH job loss yes employment in last 7 days
819         yes got vaxx yes got all doses                NA Yes kids got or will get all doses             NA                no did not  no recent HH job loss  no employment in last 7 days
957         yes got vaxx yes got all doses                NA                                 NA             NA                no did not  no recent HH job loss yes employment in last 7 days
1092        yes got vaxx yes got all doses                NA                                 NA             NA                no did not  no recent HH job loss yes employment in last 7 days
1184        yes got vaxx yes got all doses                NA Yes kids got or will get all doses             NA                no did not  no recent HH job loss yes employment in last 7 days
1238        yes got vaxx yes got all doses                NA                                 NA             NA                no did not  no recent HH job loss yes employment in last 7 days
1277        yes got vaxx yes got all doses                NA                                 NA             NA                no did not  no recent HH job loss  no employment in last 7 days
1341        yes got vaxx yes got all doses                NA Yes kids got or will get all doses             NA                no did not yes recent HH job loss yes employment in last 7 days
1351        yes got vaxx yes got all doses                NA Yes kids got or will get all doses             NA                no did not  no recent HH job loss yes employment in last 7 days
1360        yes got vaxx yes got all doses                NA Yes kids got or will get all doses             NA yes doctor told had covid  no recent HH job loss yes employment in last 7 days
1471        yes got vaxx yes got all doses                NA Yes kids got or will get all doses             NA                no did not  no recent HH job loss  no employment in last 7 days
1591        yes got vaxx yes got all doses                NA                                 NA             NA                no did not  no recent HH job loss yes employment in last 7 days
1611        yes got vaxx yes got all doses                NA                                 NA  dont know yet                  not sure                     NA                            NA
1690        yes got vaxx yes got all doses                NA                                 NA             NA                no did not  no recent HH job loss  no employment in last 7 days
1818 no did not get vaxx                NA      probably not                                 NA             NA                no did not  no recent HH job loss yes employment in last 7 days
                KINDWORK      RSNNOWRKRV                                  CHLDCARE                     CURFOODSUF            CHILDFOOD                                         ANXIOUS
98   work for private co              NA yes impacts to childcare because pandemic                had enough food                   NA                      no anxiety over past 2 wks
101        work for govt              NA                                        NA                had enough food                   NA                      no anxiety over past 2 wks
169        work for govt              NA                                        NA                had enough food                   NA            several days anxiety over past 2 wks
190  work for private co              NA                                        no      sometimes not enough food kids got enough food more than half the days anxiety over past 2 wks
194  work for private co              NA                                        no                had enough food                   NA                      no anxiety over past 2 wks
463  work for private co              NA                                        NA had enough but not what wanted kids got enough food            several days anxiety over past 2 wks
557  work for private co              NA                                        NA                had enough food                   NA                      no anxiety over past 2 wks
734  work for private co              NA                                        NA had enough but not what wanted kids got enough food                        nearly every day anxiety
819                   NA           other                                        NA                had enough food                   NA            several days anxiety over past 2 wks
957        work for govt              NA                                        no                had enough food                   NA            several days anxiety over past 2 wks
1092 work for private co              NA                                        no                had enough food                   NA                      no anxiety over past 2 wks
1184 work for private co              NA                                        NA                had enough food                   NA                      no anxiety over past 2 wks
1238       work for govt              NA                                        no                had enough food                   NA                      no anxiety over past 2 wks
1277                  NA              NA                                        NA                             NA                   NA                                              NA
1341       work for govt              NA                                        NA had enough but not what wanted kids got enough food more than half the days anxiety over past 2 wks
1351  work in family biz              NA                                        NA                had enough food                   NA                      no anxiety over past 2 wks
1360       work for govt              NA                                        no had enough but not what wanted kids got enough food                      no anxiety over past 2 wks
1471                  NA caring for kids                                        NA                had enough food                   NA                        nearly every day anxiety
1591 work for private co              NA                                        no had enough but not what wanted kids got enough food            several days anxiety over past 2 wks
1611                  NA              NA                                        NA                             NA                   NA                                              NA
1690                  NA         retired                                        no                had enough food                   NA            several days anxiety over past 2 wks
1818 work for private co              NA                                        no                had enough food                   NA                      no anxiety over past 2 wks
                                               WORRY                       TENURE                            LIVQTRRV         RENTCUR             MORTCUR EVICT FORCLOSE        EST_ST
98                          no worry over past 2 wks               housing rented live in 1 family attached to others current on rent                  NA    NA       NA        Kansas
101                         no worry over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA         Idaho
169             several days worried over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA Massachusetts
190             several days worried over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA      Illinois
194                         no worry over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA      Illinois
463             several days worried over past 2 wks housing owned free and clear           live in detached 1 family              NA                  NA    NA       NA      Oklahoma
557                         no worry over past 2 wks                           NA                                  NA              NA                  NA    NA       NA    California
734  more than half the days worried over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA      Arkansas
819             several days worried over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA      New York
957             several days worried over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA     Minnesota
1092                        no worry over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA        Kansas
1184                        no worry over past 2 wks housing owned free and clear           live in detached 1 family              NA                  NA    NA       NA      Maryland
1238                        no worry over past 2 wks housing owned free and clear           live in detached 1 family              NA                  NA    NA       NA     Minnesota
1277                                              NA                           NA                                  NA              NA                  NA    NA       NA      Missouri
1341 more than half the days worried over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA      Nebraska
1351                        no worry over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA      Nebraska
1360                        no worry over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA      Nebraska
1471                          nearly every day worry               housing rented           live in detached 1 family current on rent                  NA    NA       NA        Oregon
1591            several days worried over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA  Pennsylvania
1611                                              NA                           NA                                  NA              NA                  NA    NA       NA      Maryland
1690            several days worried over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA  Pennsylvania
1818                        no worry over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA          Utah
                   PRIVHLTH               PUBHLTH    REGION                   INCOME Num_kids_Pub_School Num_kids_Priv_School Num_kids_homeschool  Works_onsite    works_remote    Shop_in_store
98   has private health ins  no public health ins   Midwest     HH income $75 - 99.9                   0                    1                   1            no worked remotely shopped in store
101  has private health ins  no public health ins      West    HH income $35k - 49.9                   0                    0                   0 worked onsite worked remotely shopped in store
169  has private health ins has public health ins Northeast    HH income $50k - 74.9                   2                    0                   0 worked onsite worked remotely shopped in store
190  has private health ins  no public health ins   Midwest    HH income $100k - 149                   1                    0                   0 worked onsite              no shopped in store
194   no private health ins has public health ins   Midwest                       NA                   2                    0                   0 worked onsite              no shopped in store
463   no private health ins  no public health ins     South    HH income $35k - 49.9                   1                    0                   0 worked onsite worked remotely shopped in store
557  has private health ins  no public health ins      West                       NA                   1                    0                   0 worked onsite              no shopped in store
734  has private health ins  no public health ins     South     HH income $75 - 99.9                   3                    1                   0 worked onsite              no shopped in store
819  has private health ins  no public health ins Northeast     HH income $150 - 199                   0                    1                   0 worked onsite worked remotely shopped in store
957  has private health ins  no public health ins   Midwest     HH income $75 - 99.9                   0                    0                   2 worked onsite worked remotely shopped in store
1092 has private health ins  no public health ins   Midwest     HH income $75 - 99.9                   0                    0                   0 worked onsite              no shopped in store
1184  no private health ins  no public health ins     South HH income less than $25k                   0                    0                   0 worked onsite              no shopped in store
1238 has private health ins  no public health ins   Midwest    HH income $35k - 49.9                   0                    0                   2 worked onsite              no shopped in store
1277                     NA                    NA   Midwest                       NA                   0                    0                   1            NA              NA               NA
1341 has private health ins  no public health ins   Midwest    HH income $35k - 49.9                   1                    0                   0 worked onsite              no shopped in store
1351  no private health ins  no public health ins   Midwest  HH income $25k - $34.9k                   1                    0                   0 worked onsite              no shopped in store
1360 has private health ins  no public health ins   Midwest  HH income $25k - $34.9k                   2                    0                   0 worked onsite              no shopped in store
1471  no private health ins has public health ins      West HH income less than $25k                   3                    0                   0            no              no shopped in store
1591  no private health ins has public health ins Northeast    HH income $50k - 74.9                   1                    0                   0 worked onsite              no shopped in store
1611                     NA                    NA     South                       NA                   4                    2                   2            NA              NA               NA
1690  no private health ins has public health ins Northeast HH income less than $25k                   0                    0                   0            no              no shopped in store
1818  no private health ins  no public health ins      West    HH income $50k - 74.9                   3                    0                   0 worked onsite              no shopped in store
             eat_in_restaurant
98   eat at restaurant indoors
101  eat at restaurant indoors
169  eat at restaurant indoors
190  eat at restaurant indoors
194  eat at restaurant indoors
463                         no
557  eat at restaurant indoors
734  eat at restaurant indoors
819                         no
957                         no
1092 eat at restaurant indoors
1184                        no
1238                        no
1277                        NA
1341 eat at restaurant indoors
1351 eat at restaurant indoors
1360 eat at restaurant indoors
1471                        no
1591 eat at restaurant indoors
1611                        NA
1690                        no
1818                        no
 [ reached 'max' / getOption("max.print") -- omitted 762 rows ]'

###################################################
#QUESTION#1                                 #######
###################################################

NewDF<-data.frame(covid_dat_use,covid_dat_use)
xtabs(~EEDUC+RECVDVACC+REGION+INCOME,data=NewDF) 

', REGION = Northeast, INCOME = NA

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0           23                  12
  some hs         1           66                  13
  HS diploma     23          421                 105
  some coll      19          525                 122
  assoc deg      14          277                  52
  bach deg       33          657                  83
  adv deg        16          555                  31

, , REGION = South, INCOME = NA

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0           66                  37
  some hs         5          132                  83
  HS diploma     29          951                 380
  some coll      54         1396                 400
  assoc deg      25          592                 164
  bach deg       56         1337                 187
  adv deg        66          994                 115

, , REGION = Midwest, INCOME = NA

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    4           26                  15
  some hs         4           63                  39
  HS diploma     26          546                 201
  some coll      30          784                 231
  assoc deg      25          388                  88
  bach deg       58          792                 115
  adv deg        36          541                  38

, , REGION = West, INCOME = NA

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    1           65                  19
  some hs         4          133                  63
  HS diploma     17          652                 238
  some coll      43         1392                 355
  assoc deg      30          606                 148
  bach deg       64         1185                 204
  adv deg        47          829                  73

, , REGION = Northeast, INCOME = HH income less than $25k

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            3                   2
  some hs         0           16                   2
  HS diploma      0           98                  15
  some coll       0          137                  18
  assoc deg       0           81                  10
  bach deg        0          130                  10
  adv deg         0           81                   5

, , REGION = South, INCOME = HH income less than $25k

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0           16                   3
  some hs         0           23                  10
  HS diploma      0          252                  67
  some coll       0          398                  93
  assoc deg       2          191                  37
  bach deg        2          300                  33
  adv deg         0          183                  17

, , REGION = Midwest, INCOME = HH income less than $25k

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            5                   2
  some hs         0           21                   6
  HS diploma      0          153                  40
  some coll       1          215                  47
  assoc deg       0          115                  20
  bach deg        1          190                  12
  adv deg         0           97                   9

, , REGION = West, INCOME = HH income less than $25k

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0           16                   3
  some hs         0           23                   6
  HS diploma      2          190                  37
  some coll       3          394                  65
  assoc deg       2          179                  32
  bach deg        1          295                  28
  adv deg         0          143                  12

, , REGION = Northeast, INCOME = HH income $25k - $34.9k

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            1                   2
  some hs         0            7                   2
  HS diploma      0          144                  11
  some coll       0          156                  22
  assoc deg       0          101                  15
  bach deg        0          181                  10
  adv deg         0          109                   7

, , REGION = South, INCOME = HH income $25k - $34.9k

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0           12                   2
  some hs         0           23                   4
  HS diploma      2          216                  72
  some coll       1          461                  84
  assoc deg       1          205                  44
  bach deg        1          456                  47
  adv deg         1          276                  19

, , REGION = Midwest, INCOME = HH income $25k - $34.9k

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            5                   2
  some hs         1           12                   5
  HS diploma      1          185                  36
  some coll       1          284                  53
  assoc deg       1          164                  33
  bach deg        1          302                  21
  adv deg         0          164                   9

, , REGION = West, INCOME = HH income $25k - $34.9k

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0           16                   1
  some hs         0           20                  10
  HS diploma      0          209                  30
  some coll       3          468                  90
  assoc deg       0          214                  32
  bach deg        4          427                  27
  adv deg         0          268                  11

, , REGION = Northeast, INCOME = HH income $35k - 49.9

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            1                   0
  some hs         0            6                   2
  HS diploma      1          165                  26
  some coll       0          256                  24
  assoc deg       0          142                  13
  bach deg        0          397                  18
  adv deg         0          269                  11

, , REGION = South, INCOME = HH income $35k - 49.9

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            8                   4
  some hs         0           15                   3
  HS diploma      0          271                  62
  some coll       2          569                 117
  assoc deg       1          309                  50
  bach deg        0          840                  65
  adv deg         0          660                  42

, , REGION = Midwest, INCOME = HH income $35k - 49.9

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            2                   0
  some hs         0           12                   2
  HS diploma      0          196                  34
  some coll       0          390                  76
  assoc deg       2          214                  53
  bach deg        1          514                  42
  adv deg         1          357                  26

, , REGION = West, INCOME = HH income $35k - 49.9

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            9                   2
  some hs         0           21                   1
  HS diploma      3          263                  49
  some coll       2          660                 103
  assoc deg       1          332                  47
  bach deg        0          877                  62
  adv deg         1          598                  28

, , REGION = Northeast, INCOME = HH income $50k - 74.9

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            0                   0
  some hs         0            5                   0
  HS diploma      2           82                  13
  some coll       0          172                  15
  assoc deg       0          107                  19
  bach deg        0          344                   8
  adv deg         1          327                  11

, , REGION = South, INCOME = HH income $50k - 74.9

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            1                   1
  some hs         0            7                   3
  HS diploma      1          162                  36
  some coll       2          377                  61
  assoc deg       1          242                  50
  bach deg        1          714                  73
  adv deg         1          639                  30

, , REGION = Midwest, INCOME = HH income $50k - 74.9

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            2                   0
  some hs         0            4                   2
  HS diploma      0          106                  29
  some coll       1          255                  48
  assoc deg       0          204                  41
  bach deg        0          514                  51
  adv deg         2          400                  24

, , REGION = West, INCOME = HH income $50k - 74.9

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            5                   0
  some hs         0           12                   2
  HS diploma      2          156                  33
  some coll       4          489                  70
  assoc deg       2          254                  43
  bach deg        3          835                  51
  adv deg         0          655                  23

, , REGION = Northeast, INCOME = HH income $75 - 99.9

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            3                   0
  some hs         0            7                   0
  HS diploma      1           72                  14
  some coll       1          204                  14
  assoc deg       0          132                   9
  bach deg        1          503                  12
  adv deg         1          599                  16

, , REGION = South, INCOME = HH income $75 - 99.9

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            0                   0
  some hs         0            9                   2
  HS diploma      0          134                  25
  some coll       2          415                  65
  assoc deg       0          234                  29
  bach deg        2         1012                  75
  adv deg         2         1081                  37

, , REGION = Midwest, INCOME = HH income $75 - 99.9

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            0                   0
  some hs         0            2                   1
  HS diploma      0           96                  23
  some coll       1          240                  38
  assoc deg       0          186                  22
  bach deg        4          681                  60
  adv deg         1          639                  26

, , REGION = West, INCOME = HH income $75 - 99.9

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            0                   1
  some hs         0            8                   3
  HS diploma      1          142                  33
  some coll       3          522                  84
  assoc deg       0          297                  32
  bach deg        3         1087                  81
  adv deg         2         1045                  40

, , REGION = Northeast, INCOME = HH income $100k - 149

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            0                   0
  some hs         0            0                   0
  HS diploma      0           22                   4
  some coll       0           66                   4
  assoc deg       0           52                   2
  bach deg        1          306                  10
  adv deg         1          402                   9

, , REGION = South, INCOME = HH income $100k - 149

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            0                   0
  some hs         0            1                   2
  HS diploma      0           38                   8
  some coll       0          136                  21
  assoc deg       0           77                   7
  bach deg        0          500                  34
  adv deg         2          687                  28

, , REGION = Midwest, INCOME = HH income $100k - 149

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            1                   0
  some hs         0            0                   0
  HS diploma      1           27                   6
  some coll       0           80                  10
  assoc deg       1           46                   9
  bach deg        0          298                  23
  adv deg         0          343                  12

, , REGION = West, INCOME = HH income $100k - 149

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    1            2                   1
  some hs         0            1                   0
  HS diploma      0           50                   6
  some coll       2          177                  20
  assoc deg       1          118                  15
  bach deg        0          591                  32
  adv deg         2          662                  22

, , REGION = Northeast, INCOME = HH income $150 - 199

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            0                   0
  some hs         0            0                   0
  HS diploma      0           24                   2
  some coll       0           60                   3
  assoc deg       1           36                   0
  bach deg        0          383                  11
  adv deg         1          619                   9

, , REGION = South, INCOME = HH income $150 - 199

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            0                   1
  some hs         0            1                   0
  HS diploma      0           28                   2
  some coll       1          116                  17
  assoc deg       0           53                   6
  bach deg        1          621                  32
  adv deg         4         1062                  27

, , REGION = Midwest, INCOME = HH income $150 - 199

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            0                   1
  some hs         0            0                   1
  HS diploma      1           17                   1
  some coll       1           58                   8
  assoc deg       0           35                   3
  bach deg        0          307                  19
  adv deg         1          436                  16

, , REGION = West, INCOME = HH income $150 - 199

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            2                   4
  some hs         0            2                   2
  HS diploma      0           29                   9
  some coll       1          170                  18
  assoc deg       0           83                   7
  bach deg        0          696                  29
  adv deg         2         1007                  30

, , REGION = Northeast, INCOME = HH income $200k +

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            0                   0
  some hs         0            0                   0
  HS diploma      0            0                   0
  some coll       0            0                   0
  assoc deg       0            0                   0
  bach deg        0            0                   0
  adv deg         0            0                   0

, , REGION = South, INCOME = HH income $200k +

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            0                   0
  some hs         0            0                   0
  HS diploma      0            0                   0
  some coll       0            0                   0
  assoc deg       0            0                   0
  bach deg        0            0                   0
  adv deg         0            0                   0

, , REGION = Midwest, INCOME = HH income $200k +

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            0                   0
  some hs         0            0                   0
  HS diploma      0            0                   0
  some coll       0            0                   0
  assoc deg       0            0                   0
  bach deg        0            0                   0
  adv deg         0            0                   0

, , REGION = West, INCOME = HH income $200k +

              RECVDVACC
EEDUC            NA yes got vaxx no did not get vaxx
  less than hs    0            0                   0
  some hs         0            0                   0
  HS diploma      0            0                   0
  some coll       0            0                   0
  assoc deg       0            0                   0
  bach deg        0            0                   0
  adv deg         0            0                   0
'
print(xtabs)

'function (formula = ~., data = parent.frame(), subset, sparse = FALSE, 
    na.action, addNA = FALSE, exclude = if (!addNA) c(NA, NaN), 
    drop.unused.levels = FALSE) 
{
    if (missing(formula) && missing(data)) 
        stop("must supply either 'formula' or 'data'")
    if (!missing(formula)) {
        formula <- as.formula(formula)
        if (!inherits(formula, "formula")) 
            stop("'formula' missing or incorrect")
    }
    if (any(attr(terms(formula, data = data), "order") > 
        1)) 
        stop("interactions are not allowed")
    m <- match.call(expand.dots = FALSE)
    if (is.matrix(eval(m$data, parent.frame()))) 
        m$data <- as.data.frame(data)
    m$... <- m$exclude <- m$drop.unused.levels <- m$sparse <- m$addNA <- NULL
    if (addNA && missing(na.action)) 
        m$na.action <- quote(na.pass)
    m[[1L]] <- quote(stats::model.frame)
    mf <- eval(m, parent.frame())
    if (length(formula) == 2L) {
        by <- mf
        y <- NULL
    }
    else {
        i <- attr(attr(mf, "terms"), "response")
        by <- mf[-i]
        y <- mf[[i]]
    }
    has.exclude <- !missing(exclude)
    by <- lapply(by, function(u) {
        if (!is.factor(u)) 
            u <- factor(u, exclude = exclude)
        else if (has.exclude) 
            u <- factor(as.character(u), levels = setdiff(levels(u), 
                exclude), exclude = NULL)
        if (addNA) 
            u <- addNA(u, ifany = TRUE)
        u[, drop = drop.unused.levels]
    })
    naAct <- m$na.action %||% getOption("na.action", default = quote(na.omit))
    na.rm <- identical(naAct, quote(na.omit)) || identical(naAct, 
        na.omit) || identical(naAct, "na.omit")
    if (!sparse) {
        x <- if (is.null(y)) 
            table(by, dnn = names(by))
        else if (NCOL(y) == 1L) 
            tapply(y, by, sum, na.rm = na.rm, default = 0L)
        else {
            z <- lapply(as.data.frame(y), tapply, by, sum, na.rm = na.rm, 
                default = 0L)
            array(unlist(z), dim = c(dim(z[[1L]]), length(z)), 
                dimnames = c(dimnames(z[[1L]]), list(names(z))))
        }
        class(x) <- c("xtabs", "table")
        attr(x, "call") <- match.call()
        x
    }
    else {
        if (length(by) != 2L) 
            stop(gettextf("%s applies only to two-way tables", 
                "xtabs(*, sparse=TRUE)"), domain = NA)
        if (is.null(tryCatch(loadNamespace("Matrix"), error = function(e) NULL))) 
            stop(gettextf("%s needs package 'Matrix' correctly installed", 
                "xtabs(*, sparse=TRUE)"), domain = NA)
        if (length(i.ex <- unique(unlist(lapply(by, function(f) which(is.na(f))))))) {
            by <- lapply(by, `[`, -i.ex)
            if (!is.null(y)) 
                y <- y[-i.ex]
        }
        if (na.rm && !is.null(y) && any(isN <- is.na(y))) {
            ok <- !isN
            by <- lapply(by, `[`, ok)
            y <- y[ok]
        }
        rows <- by[[1L]]
        cols <- by[[2L]]
        dnms <- lapply(by, levels)
        x <- if (is.null(y)) 
            rep.int(1, length(rows))
        else as.double(y)
        methods::as(methods::new("dgTMatrix", x = x, Dimnames = dnms, 
            i = as.integer(rows) - 1L, j = as.integer(cols) - 
                1L, Dim = lengths(dnms, use.names = FALSE)), 
            "CsparseMatrix")
    }
}
<bytecode: 0x000002240784d130>
<environment: namespace:stats>'

str(select(NewDF,EEDUC,RECVDVACC,REGION,INCOME))
'data.frame:	69114 obs. of  4 variables:
 $ EEDUC    : Factor w/ 7 levels "less than hs",..: 6 3 6 7 4 6 7 4 5 7 ...
 $ RECVDVACC: Factor w/ 3 levels "NA","yes got vaxx",..: 2 2 2 2 2 2 2 2 2 2 ...
 $ REGION   : Factor w/ 4 levels "Northeast","South",..: 2 2 2 2 2 2 4 2 2 2 ...
 $ INCOME   : Factor w/ 9 levels "NA","HH income less than $25k",..: 1 2 5 4 3 4 5 5 5 6 ...'''


table(NewDF$RECVDVACC)

'NA        yes got vaxx no did not get vaxx 
                851               60326                7937 '

EEDUC [complete.cases(EEDUC)]
'[1] bach deg     HS diploma   bach deg     adv deg      some coll    bach deg     adv deg      some coll    assoc deg    adv deg      bach deg     bach deg     bach deg     assoc deg    assoc deg   
  [16] bach deg     bach deg     assoc deg    some coll    bach deg     bach deg     some coll    some coll    HS diploma   adv deg      HS diploma   bach deg     some coll    assoc deg    adv deg     
  [31] some coll    bach deg     bach deg     some coll    adv deg      bach deg     assoc deg    adv deg      adv deg      some coll    bach deg     bach deg     adv deg      HS diploma   bach deg    
  [46] bach deg     HS diploma   assoc deg    adv deg      adv deg      adv deg      bach deg     bach deg     adv deg      assoc deg    some coll    bach deg     adv deg      adv deg      some coll   
  [61] bach deg     assoc deg    assoc deg    adv deg      HS diploma   some coll    assoc deg    some coll    bach deg     bach deg     adv deg      assoc deg    bach deg     bach deg     adv deg     
  [76] adv deg      bach deg     bach deg     bach deg     bach deg     bach deg     HS diploma   assoc deg    some coll    adv deg      adv deg      adv deg      some coll    assoc deg    adv deg     
  [91] assoc deg    HS diploma   HS diploma   HS diploma   some coll    bach deg     some coll    bach deg     adv deg      HS diploma   some coll    bach deg     some coll    adv deg      some coll   
 [106] assoc deg    assoc deg    some coll    assoc deg    bach deg     adv deg      HS diploma   some coll    bach deg     assoc deg    bach deg     HS diploma   HS diploma   adv deg      bach deg    
 [121] HS diploma   some coll    some coll    some coll    HS diploma   adv deg      HS diploma   HS diploma   bach deg     assoc deg    assoc deg    bach deg     adv deg      adv deg      adv deg     
 [136] HS diploma   some coll    assoc deg    some coll    bach deg     adv deg      assoc deg    bach deg     some coll    adv deg      assoc deg    assoc deg    bach deg     adv deg      HS diploma  
 [151] bach deg     adv deg      adv deg      bach deg     bach deg     adv deg      some coll    bach deg     some coll    bach deg     some coll    adv deg      bach deg     assoc deg    some coll   
 [166] adv deg      bach deg     some coll    assoc deg    bach deg     adv deg      adv deg      some coll    some coll    bach deg     bach deg     bach deg     some coll    adv deg      adv deg     
 [181] bach deg     assoc deg    bach deg     bach deg     adv deg      bach deg     bach deg     some coll    adv deg      some coll    adv deg      adv deg      bach deg     bach deg     some coll   
 [196] bach deg     HS diploma   some coll    some coll    adv deg      adv deg      some coll    bach deg     assoc deg    bach deg     adv deg      some coll    HS diploma   adv deg      less than hs
 [211] bach deg     adv deg      bach deg     HS diploma   HS diploma   assoc deg    adv deg      bach deg     some coll    adv deg      some coll    HS diploma   HS diploma   some coll    bach deg    
 [226] assoc deg    some coll    adv deg      bach deg     HS diploma   adv deg      some coll    bach deg     adv deg      some coll    bach deg     bach deg     some coll    adv deg      some coll   
 [241] HS diploma   adv deg      adv deg      assoc deg    assoc deg    bach deg     bach deg     some coll    adv deg      some coll    assoc deg    adv deg      adv deg      HS diploma   some coll   
 [256] adv deg      adv deg      adv deg      some coll    bach deg     adv deg      bach deg     assoc deg    HS diploma   adv deg      some coll    bach deg     adv deg      some coll    some coll   
 [271] bach deg     adv deg      bach deg     bach deg     bach deg     bach deg     adv deg      less than hs bach deg     bach deg     adv deg      adv deg      HS diploma   bach deg     adv deg     
 [286] some coll    some coll    adv deg      adv deg      assoc deg    some coll    adv deg      adv deg      bach deg     some hs      adv deg      assoc deg    HS diploma   assoc deg    assoc deg   
 [301] bach deg     some coll    bach deg     bach deg     HS diploma   some coll    bach deg     adv deg      bach deg     adv deg      adv deg      some coll    adv deg      adv deg      bach deg    
 [316] bach deg     assoc deg    bach deg     bach deg     bach deg     assoc deg    bach deg     HS diploma   bach deg     bach deg     bach deg     some coll    adv deg      bach deg     bach deg    
 [331] adv deg      some coll    adv deg      HS diploma   assoc deg    adv deg      adv deg      adv deg      bach deg     bach deg     some coll    bach deg     adv deg      some coll    HS diploma  
 [346] bach deg     some hs      assoc deg    bach deg     adv deg      HS diploma   some coll    HS diploma   bach deg     HS diploma   some coll    adv deg      bach deg     some coll    adv deg     
 [361] adv deg      assoc deg    HS diploma   bach deg     adv deg      bach deg     assoc deg    some coll    adv deg      adv deg      some coll    some hs      assoc deg    HS diploma   some coll   
 [376] assoc deg    bach deg     HS diploma   assoc deg    some coll    bach deg     bach deg     adv deg      bach deg     adv deg      assoc deg    bach deg     bach deg     HS diploma   HS diploma  
 [391] some coll    some coll    HS diploma   some coll    some coll    adv deg      some coll    HS diploma   some coll    some coll    adv deg      some coll    adv deg      some coll    bach deg    
 [406] bach deg     adv deg      bach deg     bach deg     adv deg      adv deg      bach deg     HS diploma   bach deg     HS diploma   some coll    assoc deg    adv deg      bach deg     HS diploma  
 [421] adv deg      some coll    bach deg     HS diploma   bach deg     bach deg     HS diploma   some coll    bach deg     bach deg     adv deg      bach deg     bach deg     bach deg     adv deg     
 [436] bach deg     adv deg      bach deg     some coll    bach deg     bach deg     bach deg     adv deg      some coll    adv deg      bach deg     HS diploma   assoc deg    assoc deg    bach deg    
 [451] bach deg     HS diploma   adv deg      some coll    adv deg      assoc deg    HS diploma   bach deg     assoc deg    adv deg      bach deg     some coll    some coll    HS diploma   assoc deg   
 [466] adv deg      HS diploma   assoc deg    some coll    HS diploma   some hs      HS diploma   adv deg      some coll    bach deg     bach deg     bach deg     adv deg      HS diploma   adv deg     
 [481] assoc deg    bach deg     assoc deg    assoc deg    bach deg     some coll    some coll    bach deg     some coll    bach deg     assoc deg    some coll    some coll    bach deg     assoc deg   
 [496] some coll    some coll    assoc deg    some coll    HS diploma   some coll    adv deg      some coll    bach deg     bach deg     HS diploma   adv deg      some coll    adv deg      some coll   
 [511] some coll    HS diploma   HS diploma   adv deg      adv deg      some coll    some coll    bach deg     adv deg      bach deg     some coll    bach deg     assoc deg    HS diploma   assoc deg   
 [526] assoc deg    adv deg      HS diploma   some coll    bach deg     some coll    some coll    bach deg     assoc deg    HS diploma   bach deg     adv deg      adv deg      assoc deg    adv deg     
 [541] HS diploma   some coll    bach deg     some coll    adv deg      assoc deg    bach deg     some coll    assoc deg    some coll    adv deg      some coll    bach deg     bach deg     HS diploma  
 [556] assoc deg    assoc deg    bach deg     assoc deg    HS diploma   assoc deg    adv deg      adv deg      some coll    adv deg      adv deg      bach deg     bach deg     some coll    some coll   
 [571] HS diploma   some coll    bach deg     some coll    some coll    some coll    some coll    bach deg     assoc deg    bach deg     adv deg      some coll    bach deg     adv deg      adv deg     
 [586] assoc deg    some coll    HS diploma   assoc deg    assoc deg    HS diploma   bach deg     adv deg      bach deg     bach deg     adv deg      bach deg     adv deg      bach deg     bach deg    
 [601] adv deg      HS diploma   some coll    some coll    adv deg      adv deg      some coll    adv deg      some hs      adv deg      bach deg     bach deg     adv deg      adv deg      adv deg     
 [616] bach deg     some hs      bach deg     bach deg     adv deg      bach deg     bach deg     some coll    bach deg     adv deg      adv deg      adv deg      bach deg     some coll    HS diploma  
 [631] HS diploma   HS diploma   bach deg     adv deg      assoc deg    adv deg      adv deg      assoc deg    bach deg     HS diploma   HS diploma   bach deg     some coll    some coll    assoc deg   
 [646] bach deg     some coll    some coll    bach deg     bach deg     adv deg      bach deg     assoc deg    bach deg     bach deg     bach deg     bach deg     bach deg     bach deg     adv deg     
 [661] adv deg      adv deg      less than hs adv deg      some coll    bach deg     bach deg     bach deg     adv deg      bach deg     adv deg      bach deg     bach deg     assoc deg    bach deg    
 [676] HS diploma   assoc deg    assoc deg    HS diploma   some coll    some coll    adv deg      some coll    some coll    assoc deg    some coll    some hs      HS diploma   adv deg      adv deg     
 [691] assoc deg    bach deg     bach deg     some hs      adv deg      some coll    adv deg      bach deg     bach deg     adv deg      bach deg     bach deg     bach deg     adv deg      bach deg    
 [706] bach deg     bach deg     HS diploma   bach deg     bach deg     adv deg      some coll    some coll    adv deg      bach deg     some coll    assoc deg    some coll    some coll    bach deg    
 [721] HS diploma   assoc deg    assoc deg    bach deg     assoc deg    some coll    assoc deg    bach deg     assoc deg    adv deg      bach deg     bach deg     HS diploma   some coll    adv deg     
 [736] some coll    adv deg      bach deg     HS diploma   HS diploma   HS diploma   bach deg     HS diploma   bach deg     adv deg      HS diploma   assoc deg    adv deg      assoc deg    adv deg     
 [751] bach deg     adv deg      adv deg      less than hs bach deg     assoc deg    HS diploma   some coll    adv deg      some coll    bach deg     bach deg     bach deg     adv deg      adv deg     
 [766] some coll    adv deg      bach deg     bach deg     bach deg     bach deg     bach deg     bach deg     adv deg      some coll    HS diploma   bach deg     bach deg     HS diploma   adv deg     
 [781] assoc deg    adv deg      HS diploma   bach deg     bach deg     adv deg      bach deg     adv deg      HS diploma   bach deg     adv deg      bach deg     bach deg     assoc deg    adv deg     
 [796] bach deg     some coll    adv deg      adv deg      bach deg     adv deg      bach deg     adv deg      HS diploma   bach deg     bach deg     adv deg      bach deg     assoc deg    some coll   
 [811] bach deg     assoc deg    adv deg      adv deg      adv deg      adv deg      adv deg      adv deg      bach deg     bach deg     adv deg      adv deg      HS diploma   adv deg      some coll   
 [826] some coll    HS diploma   bach deg     bach deg     assoc deg    assoc deg    assoc deg    some coll    bach deg     adv deg      adv deg      HS diploma   assoc deg    bach deg     adv deg     
 [841] bach deg     some coll    some coll    some coll    adv deg      adv deg      bach deg     bach deg     some coll    adv deg      some coll    bach deg     bach deg     HS diploma   some coll   
 [856] adv deg      assoc deg    bach deg     bach deg     adv deg      some hs      some coll    bach deg     adv deg      HS diploma   some coll    adv deg      some coll    HS diploma   some coll   
 [871] some coll    some coll    bach deg     adv deg      some coll    HS diploma   HS diploma   adv deg      some coll    adv deg      some coll    adv deg      some coll    HS diploma   assoc deg   
 [886] bach deg     bach deg     adv deg      bach deg     bach deg     adv deg      bach deg     some coll    bach deg     some coll    adv deg      some coll    some coll    some coll    adv deg     
 [901] adv deg      assoc deg    assoc deg    bach deg     some coll    bach deg     adv deg      adv deg      assoc deg    adv deg      bach deg     HS diploma   adv deg      assoc deg    adv deg     
 [916] some coll    adv deg      bach deg     HS diploma   bach deg     some coll    assoc deg    HS diploma   HS diploma   some coll    bach deg     adv deg      adv deg      bach deg     some coll   
 [931] some coll    bach deg     adv deg      some coll    adv deg      HS diploma   some coll    assoc deg    assoc deg    adv deg      HS diploma   bach deg     bach deg     bach deg     HS diploma  
 [946] some coll    some coll    some coll    adv deg      some coll    some coll    assoc deg    some coll    adv deg      bach deg     adv deg      adv deg      bach deg     some coll    HS diploma  
 [961] bach deg     adv deg      some coll    some coll    adv deg      assoc deg    some coll    adv deg      bach deg     assoc deg    HS diploma   bach deg     some coll    adv deg      bach deg    
 [976] less than hs HS diploma   assoc deg    some coll    adv deg      adv deg      adv deg      some coll    HS diploma   HS diploma   assoc deg    assoc deg    adv deg      assoc deg    some coll   
 [991] HS diploma   bach deg     adv deg      some coll    some coll    some coll    adv deg      some coll    some coll    some coll   
 [ reached getOption("max.print") -- omitted 68114 entries ]
Levels: less than hs some hs HS diploma some coll assoc deg bach deg adv deg'

RECVDVACC[complete.cases(RECVDVACC)]
'[1] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
  [10] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
  [19] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        NA                 
  [28] no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        NA                  yes got vaxx        yes got vaxx       
  [37] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
  [46] NA                  yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
  [55] no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
  [64] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
  [73] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
  [82] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
  [91] yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx no did not get vaxx yes got vaxx       
 [100] yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [109] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [118] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [127] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [136] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx
 [145] yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx       
 [154] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        NA                  yes got vaxx       
 [163] yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        NA                  yes got vaxx        no did not get vaxx yes got vaxx       
 [172] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [181] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [190] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx no did not get vaxx yes got vaxx        yes got vaxx        no did not get vaxx
 [199] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx
 [208] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        no did not get vaxx
 [217] yes got vaxx        no did not get vaxx no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx no did not get vaxx yes got vaxx       
 [226] yes got vaxx        yes got vaxx        yes got vaxx        NA                  yes got vaxx        yes got vaxx        no did not get vaxx no did not get vaxx yes got vaxx       
 [235] no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [244] yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [253] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [262] no did not get vaxx yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx no did not get vaxx
 [271] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx       
 [280] yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [289] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx       
 [298] yes got vaxx        no did not get vaxx no did not get vaxx yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx
 [307] yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [316] no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [325] yes got vaxx        NA                  yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [334] no did not get vaxx yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [343] yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx       
 [352] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [361] no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [370] no did not get vaxx yes got vaxx        no did not get vaxx no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [379] yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx no did not get vaxx no did not get vaxx yes got vaxx       
 [388] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx no did not get vaxx yes got vaxx       
 [397] yes got vaxx        yes got vaxx        no did not get vaxx no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [406] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx
 [415] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx no did not get vaxx yes got vaxx        yes got vaxx        no did not get vaxx
 [424] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [433] yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx       
 [442] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [451] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [460] yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx
 [469] yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx       
 [478] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx       
 [487] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        NA                 
 [496] yes got vaxx        no did not get vaxx no did not get vaxx no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [505] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [514] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx       
 [523] yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx       
 [532] yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx       
 [541] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [550] yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx       
 [559] yes got vaxx        yes got vaxx        NA                  yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx       
 [568] yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [577] yes got vaxx        yes got vaxx        NA                  yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [586] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [595] no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx       
 [604] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [613] yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [622] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [631] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [640] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [649] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [658] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx       
 [667] no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [676] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx       
 [685] yes got vaxx        yes got vaxx        no did not get vaxx no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [694] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [703] no did not get vaxx yes got vaxx        yes got vaxx        NA                  yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [712] yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        no did not get vaxx no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx       
 [721] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [730] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [739] yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx       
 [748] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [757] no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [766] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [775] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx NA                  yes got vaxx       
 [784] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [793] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [802] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [811] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [820] yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [829] yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx       
 [838] no did not get vaxx yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx       
 [847] no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx no did not get vaxx
 [856] yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [865] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [874] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [883] no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [892] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx no did not get vaxx yes got vaxx       
 [901] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx       
 [910] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        NA                  yes got vaxx        no did not get vaxx
 [919] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx       
 [928] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx
 [937] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx
 [946] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx no did not get vaxx no did not get vaxx yes got vaxx        yes got vaxx       
 [955] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [964] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        no did not get vaxx yes got vaxx       
 [973] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        NA                  yes got vaxx        yes got vaxx       
 [982] yes got vaxx        no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
 [991] yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx        yes got vaxx       
[1000] no did not get vaxx
 [ reached getOption("max.print") -- omitted 68114 entries ]
Levels: NA yes got vaxx no did not get vaxx'

REGION[complete.cases(REGION)]
'   [1] South     South     South     South     South     South     West      South     South     South     West      West      West      West      West      West      West      West      West     
  [20] West      West      West      West      West      South     West      West      West      West      West      West      South     South     South     South     South     South     South    
  [39] South     South     South     South     South     South     West      West      West      West      West      West      West      West      West      South     West      West      Northeast
  [58] West      West      West      West      West      West      West      West      West      West      West      West      Northeast Northeast Northeast Midwest   South     Northeast Northeast
  [77] Northeast West      Northeast Northeast South     South     South     South     South     South     Northeast South     West      West      West      West      West      West      West     
  [96] West      West      Midwest   West      West      West      West      West      West      West      West      West      Midwest   West      West      Midwest   Midwest   Midwest   Midwest  
 [115] Midwest   Midwest   Midwest   Midwest   Northeast Midwest   Midwest   Midwest   Midwest   South     Midwest   Midwest   Midwest   Midwest   West      Midwest   South     South     Midwest  
 [134] South     South     South     South     South     South     South     South     South     South     South     South     South     South     South     South     South     South     South    
 [153] South     South     South     South     South     South     South     Northeast Northeast Northeast Northeast Northeast Northeast Northeast Northeast Northeast Northeast Northeast Northeast
 [172] Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   West      Midwest   Midwest   Midwest   Midwest  
 [191] Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest  
 [210] Midwest   South     South     South     South     South     South     South     South     South     South     South     South     South     South     South     South     South     South    
 [229] South     South     South     South     South     South     Northeast Northeast Northeast Northeast South     South     South     South     South     South     South     South     South    
 [248] South     South     Northeast Northeast Northeast Northeast Northeast Northeast Northeast Northeast Midwest   West      Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest  
 [267] Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   South     Midwest   Midwest   Midwest   Midwest   Midwest   South     South     South     South     South    
 [286] South     South     South     South     Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   South     South     South     South     Northeast South    
 [305] South     South     South     West      South     South     South     South     South     South     South     South     West      West      West      West      Midwest   West      West     
 [324] West      West      West      Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   West      West      West      West      West      West      West     
 [343] West      West      West      West      West      West      South     West      Northeast Northeast Northeast Northeast Northeast West      West      West      West      West      West     
 [362] West      West      West      West      West      West      West      West      West      West      Northeast Northeast Northeast Northeast Northeast Northeast Northeast South     South    
 [381] South     South     South     South     South     Midwest   Northeast Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   West     
 [400] West      West      West      West      West      West      West      West      West      West      West      West      West      West      West      West      West      West      West     
 [419] West      South     South     South     South     Northeast South     South     Northeast South     South     Northeast Northeast West      Northeast Northeast Northeast Northeast Northeast
 [438] Northeast Northeast Northeast Northeast Northeast South     Northeast Northeast South     South     South     Northeast South     South     South     South     Northeast Northeast Northeast
 [457] Northeast Northeast Northeast Northeast Northeast South     South     South     South     South     South     West      West      West      West      West      West      West      West     
 [476] West      West      West      West      Midwest   West      West      Northeast Northeast South     Northeast Northeast Northeast Northeast Northeast South     Northeast Northeast South    
 [495] South     South     West      South     South     South     Northeast South     South     Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   South     Midwest   Midwest   Midwest  
 [514] Midwest   Midwest   Midwest   South     South     South     Midwest   South     South     South     South     South     South     South     South     South     South     South     South    
 [533] West      West      West      West      West      West      West      West      West      West      West      West      West      West      West      West      West      West      West     
 [552] West      West      West      West      South     West      West      West      West      West      West      West      West      West      West      West      West      West      West     
 [571] West      West      West      West      West      West      West      West      West      West      West      West      Northeast West      West      West      West      West      West     
 [590] West      West      West      West      South     South     South     Midwest   South     South     South     South     Midwest   South     South     South     South     South     South    
 [609] South     South     South     South     South     South     South     South     South     South     South     South     South     South     South     South     South     Midwest   South    
 [628] South     Northeast Northeast Northeast Northeast Northeast Northeast Northeast Northeast South     South     South     South     South     South     West      South     West      West     
 [647] West      Northeast West      South     South     South     South     Northeast South     South     Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   West      West     
 [666] West      West      West      West      West      West      West      South     South     South     South     South     South     South     South     South     South     South     South    
 [685] South     South     South     South     South     West      West      West      Northeast West      West      West      West      West      South     West      West      West      South    
 [704] West      West      West      West      West      West      West      West      West      West      West      West      West      West      West      West      West      West      West     
 [723] West      West      West      West      West      West      West      South     Northeast South     South     South     South     South     South     South     South     South     South    
 [742] South     South     South     South     South     South     South     South     South     West      West      West      West      West      West      West      West      West      West     
 [761] West      West      West      West      West      West      South     West      West      West      West      West      South     West      South     West      West      West      West     
 [780] West      West      West      West      West      West      West      West      West      West      West      West      West      West      West      South     West      West      Northeast
 [799] Northeast Northeast Northeast South     Northeast Northeast Northeast Northeast Northeast Northeast Northeast West      Northeast Northeast South     Northeast Northeast Northeast Northeast
 [818] Northeast Northeast South     South     South     South     Northeast South     South     South     South     South     South     South     South     Midwest   South     South     Midwest  
 [837] South     South     South     South     South     South     South     South     South     South     South     South     South     South     South     South     South     South     South    
 [856] Midwest   South     South     South     South     West      West      West      West      West      West      West      West      West      West      West      South     West      West     
 [875] West      South     South     West      West      West      West      West      West      West      West      West      West      West      West      West      Northeast West      West     
 [894] West      West      West      West      West      West      West      South     West      West      West      West      South     South     West      West      West      West      West     
 [913] West      West      Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   West      Midwest   Midwest   Midwest   West     
 [932] Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   West      Midwest   Midwest   Midwest   Midwest   West      Midwest   South     Midwest  
 [951] Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   Midwest   South     South     South     South     South     South     South     South     West      South     South     South    
 [970] South     South     South     South     South     South     South     South     South     South     South     South     South     South     South     South     South     South     South    
 [989] South     South     South     South     South     South     South     South     South     South     South     South    
 [ reached getOption("max.print") -- omitted 68114 entries ]
Levels: Northeast South Midwest West'

INCOME[complete.cases(INCOME)]
'   [1] NA                       HH income less than $25k HH income $50k - 74.9    HH income $35k - 49.9    HH income $25k - $34.9k  HH income $35k - 49.9    HH income $50k - 74.9   
   [8] HH income $50k - 74.9    HH income $50k - 74.9    HH income $75 - 99.9     HH income $25k - $34.9k  HH income $75 - 99.9     HH income $50k - 74.9    NA                      
  [15] NA                       HH income $150 - 199     HH income $75 - 99.9     HH income $100k - 149    NA                       HH income $100k - 149    HH income $35k - 49.9   
  [22] HH income $75 - 99.9     HH income $75 - 99.9     NA                       HH income $35k - 49.9    HH income $35k - 49.9    HH income $50k - 74.9    NA                      
  [29] HH income less than $25k HH income $100k - 149    NA                       HH income less than $25k NA                       NA                       HH income $100k - 149   
  [36] NA                       HH income less than $25k HH income $35k - 49.9    HH income $75 - 99.9     HH income $35k - 49.9    NA                       HH income $35k - 49.9   
  [43] HH income $150 - 199     HH income less than $25k HH income $150 - 199     NA                       HH income $75 - 99.9     NA                       HH income $150 - 199    
  [50] HH income $75 - 99.9     HH income $35k - 49.9    HH income less than $25k HH income $100k - 149    NA                       NA                       HH income $50k - 74.9   
  [57] HH income $100k - 149    HH income $100k - 149    HH income $75 - 99.9     HH income $35k - 49.9    NA                       HH income $75 - 99.9     HH income $35k - 49.9   
  [64] HH income $150 - 199     HH income $25k - $34.9k  NA                       HH income $50k - 74.9    HH income $75 - 99.9     HH income $150 - 199     HH income $35k - 49.9   
  [71] HH income $100k - 149    HH income $50k - 74.9    HH income $50k - 74.9    HH income $75 - 99.9     HH income $100k - 149    HH income $50k - 74.9    HH income $25k - $34.9k 
  [78] HH income $150 - 199     NA                       HH income $150 - 199     HH income less than $25k NA                       HH income $50k - 74.9    NA                      
  [85] HH income $150 - 199     HH income $75 - 99.9     HH income $75 - 99.9     HH income $50k - 74.9    HH income $150 - 199     NA                       HH income $25k - $34.9k 
  [92] NA                       NA                       HH income $35k - 49.9    HH income less than $25k NA                       HH income $25k - $34.9k  HH income $75 - 99.9    
  [99] HH income $50k - 74.9    NA                       HH income $35k - 49.9    HH income $25k - $34.9k  NA                       HH income $25k - $34.9k  NA                      
 [106] HH income $35k - 49.9    HH income $25k - $34.9k  HH income $50k - 74.9    NA                       HH income $75 - 99.9     HH income $50k - 74.9    HH income $25k - $34.9k 
 [113] HH income $50k - 74.9    HH income $25k - $34.9k  HH income less than $25k HH income $25k - $34.9k  HH income less than $25k NA                       HH income $50k - 74.9   
 [120] HH income $75 - 99.9     NA                       HH income $75 - 99.9     HH income $35k - 49.9    HH income $75 - 99.9     HH income less than $25k HH income $75 - 99.9    
 [127] HH income $25k - $34.9k  HH income $25k - $34.9k  HH income $75 - 99.9     NA                       HH income $150 - 199     HH income $100k - 149    HH income $150 - 199    
 [134] NA                       HH income $35k - 49.9    HH income less than $25k HH income $75 - 99.9     NA                       HH income $35k - 49.9    HH income $150 - 199    
 [141] NA                       NA                       HH income $35k - 49.9    HH income less than $25k NA                       HH income $25k - $34.9k  HH income $25k - $34.9k 
 [148] HH income $25k - $34.9k  HH income $50k - 74.9    HH income less than $25k HH income $100k - 149    HH income $50k - 74.9    HH income $35k - 49.9    HH income $100k - 149   
 [155] HH income $50k - 74.9    NA                       HH income $35k - 49.9    HH income $35k - 49.9    NA                       HH income $25k - $34.9k  NA                      
 [162] HH income $75 - 99.9     NA                       NA                       HH income $35k - 49.9    HH income $35k - 49.9    HH income $150 - 199     NA                      
 [169] HH income $50k - 74.9    NA                       HH income $50k - 74.9    HH income $35k - 49.9    HH income $50k - 74.9    HH income $75 - 99.9     HH income less than $25k
 [176] NA                       HH income $35k - 49.9    HH income $25k - $34.9k  HH income $100k - 149    HH income $150 - 199     NA                       HH income $35k - 49.9   
 [183] NA                       NA                       HH income $150 - 199     HH income $35k - 49.9    NA                       NA                       NA                      
 [190] HH income $100k - 149    NA                       NA                       HH income $50k - 74.9    NA                       NA                       HH income $35k - 49.9   
 [197] NA                       HH income $35k - 49.9    HH income $50k - 74.9    HH income $75 - 99.9     HH income $25k - $34.9k  HH income $25k - $34.9k  NA                      
 [204] NA                       HH income $25k - $34.9k  HH income $50k - 74.9    NA                       HH income $25k - $34.9k  HH income $50k - 74.9    HH income less than $25k
 [211] HH income less than $25k HH income $35k - 49.9    NA                       NA                       HH income $25k - $34.9k  HH income $75 - 99.9     HH income $50k - 74.9   
 [218] HH income $100k - 149    HH income $75 - 99.9     HH income $150 - 199     NA                       HH income $75 - 99.9     HH income $25k - $34.9k  NA                      
 [225] HH income $25k - $34.9k  HH income $50k - 74.9    NA                       HH income $150 - 199     NA                       NA                       NA                      
 [232] HH income $25k - $34.9k  NA                       HH income $35k - 49.9    HH income $25k - $34.9k  HH income $150 - 199     HH income $100k - 149    NA                      
 [239] HH income $100k - 149    HH income $50k - 74.9    NA                       NA                       NA                       HH income $35k - 49.9    NA                      
 [246] NA                       NA                       NA                       HH income $75 - 99.9     NA                       NA                       HH income $25k - $34.9k 
 [253] HH income $50k - 74.9    HH income $50k - 74.9    HH income $50k - 74.9    HH income $100k - 149    NA                       NA                       HH income $25k - $34.9k 
 [260] HH income less than $25k HH income $75 - 99.9     NA                       HH income $35k - 49.9    HH income $35k - 49.9    HH income $75 - 99.9     HH income $35k - 49.9   
 [267] HH income $50k - 74.9    HH income $150 - 199     NA                       NA                       HH income $75 - 99.9     HH income $100k - 149    HH income $100k - 149   
 [274] HH income $50k - 74.9    HH income $25k - $34.9k  HH income $50k - 74.9    NA                       HH income $150 - 199     HH income $150 - 199     NA                      
 [281] HH income $25k - $34.9k  HH income $75 - 99.9     NA                       HH income less than $25k NA                       HH income $35k - 49.9    NA                      
 [288] HH income $150 - 199     HH income less than $25k HH income $75 - 99.9     HH income $35k - 49.9    HH income $75 - 99.9     HH income $100k - 149    NA                      
 [295] NA                       HH income $150 - 199     HH income less than $25k HH income $35k - 49.9    HH income $25k - $34.9k  HH income $50k - 74.9    HH income $50k - 74.9   
 [302] NA                       HH income $150 - 199     NA                       HH income $35k - 49.9    NA                       HH income $35k - 49.9    HH income $150 - 199    
 [309] HH income $35k - 49.9    HH income $35k - 49.9    HH income $35k - 49.9    HH income less than $25k HH income $75 - 99.9     HH income $150 - 199     HH income $50k - 74.9   
 [316] NA                       NA                       HH income $150 - 199     HH income $50k - 74.9    HH income $50k - 74.9    HH income $75 - 99.9     HH income $75 - 99.9    
 [323] HH income $25k - $34.9k  HH income $100k - 149    HH income $35k - 49.9    NA                       NA                       NA                       HH income $75 - 99.9    
 [330] HH income less than $25k HH income $75 - 99.9     HH income $35k - 49.9    HH income less than $25k NA                       HH income $25k - $34.9k  HH income $100k - 149   
 [337] HH income $50k - 74.9    HH income $35k - 49.9    NA                       HH income $100k - 149    NA                       HH income $25k - $34.9k  HH income $35k - 49.9   
 [344] HH income $100k - 149    HH income $100k - 149    HH income $75 - 99.9     NA                       HH income $100k - 149    HH income $25k - $34.9k  HH income $35k - 49.9   
 [351] NA                       HH income $25k - $34.9k  NA                       HH income $150 - 199     HH income $25k - $34.9k  NA                       HH income $75 - 99.9    
 [358] HH income $75 - 99.9     HH income $75 - 99.9     HH income $100k - 149    NA                       HH income $50k - 74.9    HH income $35k - 49.9    NA                      
 [365] HH income $50k - 74.9    HH income $35k - 49.9    NA                       HH income $100k - 149    NA                       HH income $35k - 49.9    HH income $150 - 199    
 [372] NA                       NA                       HH income $35k - 49.9    HH income less than $25k HH income $100k - 149    NA                       HH income $75 - 99.9    
 [379] NA                       HH income $25k - $34.9k  HH income $35k - 49.9    HH income less than $25k HH income $75 - 99.9     NA                       HH income $150 - 199    
 [386] NA                       HH income $35k - 49.9    NA                       NA                       HH income $25k - $34.9k  HH income $75 - 99.9     NA                      
 [393] NA                       NA                       HH income $75 - 99.9     HH income $25k - $34.9k  HH income $25k - $34.9k  HH income $35k - 49.9    NA                      
 [400] NA                       HH income $75 - 99.9     NA                       HH income $50k - 74.9    HH income $75 - 99.9     HH income $75 - 99.9     HH income $50k - 74.9   
 [407] HH income $100k - 149    NA                       NA                       HH income $75 - 99.9     HH income less than $25k HH income $50k - 74.9    NA                      
 [414] NA                       NA                       HH income $50k - 74.9    NA                       HH income $150 - 199     NA                       HH income less than $25k
 [421] HH income $75 - 99.9     HH income $150 - 199     HH income $50k - 74.9    NA                       HH income $150 - 199     NA                       HH income $35k - 49.9   
 [428] HH income $75 - 99.9     HH income $35k - 49.9    HH income $25k - $34.9k  HH income $50k - 74.9    HH income $50k - 74.9    NA                       HH income $25k - $34.9k 
 [435] NA                       HH income $150 - 199     NA                       NA                       NA                       NA                       HH income $75 - 99.9    
 [442] HH income $75 - 99.9     HH income $100k - 149    NA                       NA                       HH income $150 - 199     HH income $50k - 74.9    HH income $75 - 99.9    
 [449] HH income $75 - 99.9     HH income $150 - 199     HH income less than $25k HH income $75 - 99.9     HH income $50k - 74.9    HH income less than $25k NA                      
 [456] NA                       NA                       NA                       HH income $25k - $34.9k  HH income $35k - 49.9    NA                       HH income $25k - $34.9k 
 [463] HH income $35k - 49.9    NA                       HH income $50k - 74.9    HH income $100k - 149    NA                       HH income $75 - 99.9     HH income $75 - 99.9    
 [470] NA                       HH income $25k - $34.9k  NA                       HH income $150 - 199     HH income $25k - $34.9k  HH income $75 - 99.9     NA                      
 [477] HH income $75 - 99.9     NA                       NA                       HH income $150 - 199     HH income $150 - 199     HH income $150 - 199     NA                      
 [484] HH income $50k - 74.9    HH income $25k - $34.9k  HH income $25k - $34.9k  NA                       HH income $150 - 199     NA                       HH income $100k - 149   
 [491] HH income $75 - 99.9     HH income $35k - 49.9    HH income $25k - $34.9k  HH income $75 - 99.9     HH income $25k - $34.9k  HH income less than $25k HH income less than $25k
 [498] HH income less than $25k HH income $35k - 49.9    NA                       NA                       HH income $150 - 199     NA                       HH income $35k - 49.9   
 [505] HH income $25k - $34.9k  HH income $100k - 149    NA                       HH income less than $25k HH income $25k - $34.9k  HH income $75 - 99.9     HH income $75 - 99.9    
 [512] NA                       NA                       HH income $150 - 199     HH income $35k - 49.9    NA                       HH income $35k - 49.9    NA                      
 [519] HH income $150 - 199     HH income $150 - 199     HH income $150 - 199     HH income $25k - $34.9k  HH income $35k - 49.9    NA                       HH income $25k - $34.9k 
 [526] HH income $35k - 49.9    NA                       HH income $25k - $34.9k  NA                       HH income $50k - 74.9    NA                       NA                      
 [533] HH income $100k - 149    HH income $100k - 149    NA                       HH income $100k - 149    HH income $75 - 99.9     HH income $50k - 74.9    HH income $100k - 149   
 [540] HH income $75 - 99.9     HH income less than $25k HH income less than $25k HH income less than $25k NA                       HH income $100k - 149    HH income $25k - $34.9k 
 [547] NA                       HH income $75 - 99.9     NA                       NA                       NA                       NA                       HH income $100k - 149   
 [554] HH income $75 - 99.9     HH income $35k - 49.9    HH income $100k - 149    NA                       HH income less than $25k HH income $100k - 149    NA                      
 [561] NA                       HH income $35k - 49.9    HH income $50k - 74.9    HH income $150 - 199     HH income $150 - 199     HH income $150 - 199     HH income $75 - 99.9    
 [568] HH income $150 - 199     HH income $35k - 49.9    HH income $25k - $34.9k  HH income $75 - 99.9     NA                       HH income $35k - 49.9    NA                      
 [575] HH income $35k - 49.9    HH income $25k - $34.9k  HH income $35k - 49.9    HH income $100k - 149    NA                       HH income $35k - 49.9    HH income $150 - 199    
 [582] HH income $75 - 99.9     NA                       HH income $150 - 199     NA                       HH income $25k - $34.9k  HH income $150 - 199     HH income $50k - 74.9   
 [589] HH income $25k - $34.9k  NA                       HH income $100k - 149    HH income $50k - 74.9    HH income $50k - 74.9    NA                       NA                      
 [596] HH income $150 - 199     HH income $75 - 99.9     NA                       HH income $25k - $34.9k  HH income $25k - $34.9k  HH income $75 - 99.9     NA                      
 [603] NA                       HH income $100k - 149    HH income $150 - 199     HH income $35k - 49.9    HH income $50k - 74.9    HH income $150 - 199     NA                      
 [610] NA                       HH income $100k - 149    HH income $100k - 149    HH income $150 - 199     HH income $25k - $34.9k  HH income $150 - 199     NA                      
 [617] HH income $25k - $34.9k  HH income $75 - 99.9     NA                       NA                       HH income less than $25k HH income $50k - 74.9    NA                      
 [624] NA                       HH income $150 - 199     HH income $75 - 99.9     HH income $75 - 99.9     NA                       HH income $50k - 74.9    HH income $35k - 49.9   
 [631] NA                       HH income $100k - 149    HH income $75 - 99.9     HH income $100k - 149    HH income $75 - 99.9     NA                       NA                      
 [638] HH income $75 - 99.9     HH income $150 - 199     NA                       HH income $50k - 74.9    HH income $75 - 99.9     NA                       HH income less than $25k
 [645] HH income $35k - 49.9    NA                       HH income $75 - 99.9     NA                       NA                       HH income $25k - $34.9k  NA                      
 [652] NA                       HH income $75 - 99.9     HH income $150 - 199     HH income $35k - 49.9    HH income $150 - 199     HH income $35k - 49.9    HH income $75 - 99.9    
 [659] HH income $75 - 99.9     HH income $75 - 99.9     HH income $100k - 149    HH income $100k - 149    NA                       HH income $150 - 199     NA                      
 [666] HH income $150 - 199     HH income $75 - 99.9     NA                       HH income $75 - 99.9     HH income $150 - 199     NA                       NA                      
 [673] HH income less than $25k HH income $75 - 99.9     HH income $35k - 49.9    NA                       NA                       HH income $25k - $34.9k  HH income $50k - 74.9   
 [680] NA                       HH income $75 - 99.9     HH income $75 - 99.9     HH income $75 - 99.9     HH income $25k - $34.9k  NA                       NA                      
 [687] NA                       HH income less than $25k HH income $35k - 49.9    NA                       HH income $75 - 99.9     HH income $150 - 199     HH income $50k - 74.9   
 [694] NA                       HH income $150 - 199     HH income $75 - 99.9     HH income $100k - 149    HH income $50k - 74.9    HH income $150 - 199     HH income $75 - 99.9    
 [701] NA                       HH income $35k - 49.9    HH income $25k - $34.9k  HH income $50k - 74.9    HH income $75 - 99.9     NA                       HH income $150 - 199    
 [708] NA                       HH income $100k - 149    NA                       HH income $75 - 99.9     HH income less than $25k HH income $150 - 199     HH income $150 - 199    
 [715] HH income $35k - 49.9    HH income $35k - 49.9    NA                       HH income $75 - 99.9     NA                       NA                       HH income $35k - 49.9   
 [722] HH income $75 - 99.9     HH income $50k - 74.9    HH income $50k - 74.9    HH income $75 - 99.9     HH income $75 - 99.9     HH income $25k - $34.9k  NA                      
 [729] HH income $35k - 49.9    HH income $75 - 99.9     HH income $50k - 74.9    HH income $50k - 74.9    HH income $75 - 99.9     HH income $75 - 99.9     HH income $100k - 149   
 [736] NA                       HH income $35k - 49.9    HH income $35k - 49.9    HH income less than $25k HH income $25k - $34.9k  HH income less than $25k HH income $75 - 99.9    
 [743] HH income $35k - 49.9    NA                       HH income $35k - 49.9    NA                       HH income $100k - 149    HH income $25k - $34.9k  HH income $25k - $34.9k 
 [750] NA                       HH income $75 - 99.9     HH income $75 - 99.9     HH income $75 - 99.9     HH income $25k - $34.9k  HH income $25k - $34.9k  HH income $75 - 99.9    
 [757] HH income $35k - 49.9    NA                       HH income $150 - 199     HH income $25k - $34.9k  HH income less than $25k NA                       HH income $100k - 149   
 [764] NA                       HH income $50k - 74.9    NA                       NA                       HH income $50k - 74.9    HH income $35k - 49.9    HH income $50k - 74.9   
 [771] NA                       HH income $25k - $34.9k  HH income $35k - 49.9    NA                       HH income $35k - 49.9    NA                       HH income $100k - 149   
 [778] NA                       HH income less than $25k HH income $75 - 99.9     NA                       NA                       NA                       NA                      
 [785] HH income $75 - 99.9     HH income $150 - 199     HH income less than $25k HH income $100k - 149    HH income $35k - 49.9    HH income $50k - 74.9    NA                      
 [792] HH income $50k - 74.9    HH income $75 - 99.9     NA                       HH income $50k - 74.9    NA                       HH income $50k - 74.9    HH income $35k - 49.9   
 [799] NA                       HH income $150 - 199     HH income $100k - 149    HH income $100k - 149    NA                       NA                       HH income $35k - 49.9   
 [806] NA                       HH income $75 - 99.9     HH income $150 - 199     HH income less than $25k HH income $75 - 99.9     NA                       HH income $100k - 149   
 [813] HH income $25k - $34.9k  HH income $150 - 199     HH income $100k - 149    HH income $35k - 49.9    HH income less than $25k HH income $150 - 199     HH income $150 - 199    
 [820] HH income $75 - 99.9     HH income $100k - 149    HH income $50k - 74.9    NA                       HH income $75 - 99.9     HH income $50k - 74.9    HH income less than $25k
 [827] HH income $25k - $34.9k  HH income $25k - $34.9k  NA                       NA                       NA                       NA                       HH income $35k - 49.9   
 [834] HH income $25k - $34.9k  HH income $150 - 199     HH income $75 - 99.9     HH income $35k - 49.9    NA                       HH income $35k - 49.9    HH income $75 - 99.9    
 [841] HH income $25k - $34.9k  HH income $150 - 199     HH income $25k - $34.9k  HH income $25k - $34.9k  NA                       HH income $150 - 199     NA                      
 [848] HH income less than $25k NA                       HH income $35k - 49.9    NA                       HH income $25k - $34.9k  HH income $100k - 149    NA                      
 [855] NA                       NA                       HH income $25k - $34.9k  HH income less than $25k NA                       HH income $50k - 74.9    NA                      
 [862] NA                       HH income $75 - 99.9     NA                       HH income $35k - 49.9    NA                       HH income $150 - 199     NA                      
 [869] HH income $25k - $34.9k  NA                       HH income less than $25k HH income $35k - 49.9    NA                       HH income $35k - 49.9    HH income $75 - 99.9    
 [876] NA                       HH income $25k - $34.9k  HH income $35k - 49.9    NA                       HH income $35k - 49.9    HH income $100k - 149    HH income $50k - 74.9   
 [883] HH income $75 - 99.9     NA                       HH income $25k - $34.9k  HH income $35k - 49.9    HH income $50k - 74.9    HH income $100k - 149    HH income $75 - 99.9    
 [890] HH income $150 - 199     HH income $150 - 199     HH income $75 - 99.9     NA                       HH income $25k - $34.9k  HH income $75 - 99.9     NA                      
 [897] NA                       HH income $25k - $34.9k  HH income $75 - 99.9     HH income $50k - 74.9    HH income $150 - 199     HH income $25k - $34.9k  NA                      
 [904] HH income $150 - 199     NA                       HH income less than $25k HH income $50k - 74.9    HH income $75 - 99.9     NA                       HH income $35k - 49.9   
 [911] HH income $150 - 199     HH income less than $25k NA                       HH income $150 - 199     HH income $50k - 74.9    NA                       HH income $50k - 74.9   
 [918] NA                       NA                       HH income $25k - $34.9k  HH income $35k - 49.9    HH income $35k - 49.9    HH income $50k - 74.9    HH income $75 - 99.9    
 [925] HH income $35k - 49.9    HH income $35k - 49.9    HH income $50k - 74.9    NA                       HH income $50k - 74.9    HH income $35k - 49.9    HH income $75 - 99.9    
 [932] NA                       HH income $150 - 199     HH income $25k - $34.9k  HH income $50k - 74.9    HH income less than $25k HH income $35k - 49.9    HH income $25k - $34.9k 
 [939] HH income less than $25k HH income $25k - $34.9k  NA                       HH income $75 - 99.9     HH income $50k - 74.9    HH income $100k - 149    NA                      
 [946] HH income $100k - 149    HH income less than $25k HH income $35k - 49.9    HH income $35k - 49.9    NA                       NA                       NA                      
 [953] HH income $75 - 99.9     HH income $75 - 99.9     HH income $50k - 74.9    HH income $150 - 199     HH income $75 - 99.9     HH income $150 - 199     HH income $150 - 199    
 [960] NA                       HH income $150 - 199     HH income $150 - 199     NA                       HH income less than $25k HH income $50k - 74.9    HH income $35k - 49.9   
 [967] HH income $35k - 49.9    HH income $50k - 74.9    NA                       HH income $25k - $34.9k  NA                       HH income $75 - 99.9     HH income $50k - 74.9   
 [974] HH income $150 - 199     HH income $25k - $34.9k  NA                       HH income $25k - $34.9k  HH income $50k - 74.9    NA                       HH income $150 - 199    
 [981] HH income $50k - 74.9    HH income $50k - 74.9    NA                       NA                       HH income $75 - 99.9     HH income $75 - 99.9     HH income $50k - 74.9   
 [988] HH income $150 - 199     HH income $25k - $34.9k  NA                       NA                       HH income $50k - 74.9    HH income $100k - 149    NA                      
 [995] HH income $75 - 99.9     HH income $35k - 49.9    HH income $50k - 74.9    HH income $75 - 99.9     NA                       NA                      
 [ reached getOption("max.print") -- omitted 68114 entries ]
Levels: NA HH income less than $25k HH income $25k - $34.9k HH income $35k - 49.9 HH income $50k - 74.9 HH income $75 - 99.9 HH income $100k - 149 HH income $150 - 199 HH income $200k +'

head(covid_dat_use$EEDUC)
'[1] bach deg   HS diploma bach deg   adv deg    some coll  bach deg  
Levels: less than hs some hs HS diploma some coll assoc deg bach deg adv deg'
head(covid_dat_use$RECVDVACC)
'[1] yes got vaxx yes got vaxx yes got vaxx yes got vaxx yes got vaxx yes got vaxx
Levels: NA yes got vaxx no did not get vaxx'
head(covid_dat_use$REGION)
'[1] South South South South South South
Levels: Northeast South Midwest West'
head(covid_dat_use$INCOME)
'[1] NA                       HH income less than $25k HH income $50k - 74.9    HH income $35k - 49.9    HH income $25k - $34.9k  HH income $35k - 49.9   
Levels: NA HH income less than $25k HH income $25k - $34.9k HH income $35k - 49.9 HH income $50k - 74.9 HH income $75 - 99.9 HH income $100k - 149 HH income $150 - 199 HH income $200k +'

tail(covid_dat_use$EEDUC)
'[1] HS diploma HS diploma HS diploma bach deg   bach deg   adv deg   
Levels: less than hs some hs HS diploma some coll assoc deg bach deg adv deg'
tail(covid_dat_use$RECVDVACC)
'[1] no did not get vaxx no did not get vaxx yes got vaxx        yes got vaxx        yes got vaxx        NA                 
Levels: NA yes got vaxx no did not get vaxx'
tail(covid_dat_use$REGION)
'[1] Midwest West    West    West    Midwest West   
Levels: Northeast South Midwest West'
tail(covid_dat_use$INCOME)
'[1] NA                      HH income $50k - 74.9   NA                      HH income $35k - 49.9   HH income $25k - $34.9k NA                     
Levels: NA HH income less than $25k HH income $25k - $34.9k HH income $35k - 49.9 HH income $50k - 74.9 HH income $75 - 99.9 HH income $100k - 149 HH income $150 - 199 HH income $200k +'

library(dplyr)
library(tidyr)
install.packages("titanic")
'WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
Installing package into 'C:/Users/hassa/Documents/R/win-library/4.1'
(as 'lib' is unspecified)
trying URL https://cran.rstudio.com/bin/windows/contrib/4.1/titanic_0.1.0.zip
Content type application/zip length 91342 bytes (89 KB)
downloaded 89 KB

package 'titanic' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\hassa\AppData\Local\Temp\RtmpQxX1Mg\downloaded_packages'

install.packages("tidyverse")
'WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
Installing package into 'C:/Users/hassa/Documents/R/win-library/4.1'
(as 'lib' is unspecified)
trying URL https://cran.rstudio.com/bin/windows/contrib/4.1/tidyverse_1.3.1.zip
Content type application/zip length 430233 bytes (420 KB)
downloaded 420 KB

package 'tidyverse' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\hassa\AppData\Local\Temp\RtmpQxX1Mg\downloaded_packages'

install.packages("car", dependencies = TRUE)
'WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
Installing package into 'C:/Users/hassa/Documents/R/win-library/4.1'
(as 'lib' is unspecified)
trying URL https://cran.rstudio.com/bin/windows/contrib/4.1/car_3.0-11.zip
Content type application/zip length 1570179 bytes (1.5 MB)
downloaded 1.5 MB

package 'car' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\hassa\AppData\Local\Temp\RtmpQxX1Mg\downloaded_packages'

NewDF$RECVDVACC[NewDF$RECVDVACC=="NA"]<-"yes got vaxx"
NewDF$RECVDVACC<-factor(NewDF$RECVDVACC)
NewDF$RECVDVACC<-as.numeric(NewDF$RECVDVACC)
xtabs(~EEDUC+RECVDVACC+REGION+INCOME,data=NewDF)
', , REGION = Northeast, INCOME = NA

              RECVDVACC
EEDUC             1    2
  less than hs   23   12
  some hs        67   13
  HS diploma    444  105
  some coll     544  122
  assoc deg     291   52
  bach deg      690   83
  adv deg       571   31

, , REGION = South, INCOME = NA

              RECVDVACC
EEDUC             1    2
  less than hs   66   37
  some hs       137   83
  HS diploma    980  380
  some coll    1450  400
  assoc deg     617  164
  bach deg     1393  187
  adv deg      1060  115

, , REGION = Midwest, INCOME = NA

              RECVDVACC
EEDUC             1    2
  less than hs   30   15
  some hs        67   39
  HS diploma    572  201
  some coll     814  231
  assoc deg     413   88
  bach deg      850  115
  adv deg       577   38

, , REGION = West, INCOME = NA

              RECVDVACC
EEDUC             1    2
  less than hs   66   19
  some hs       137   63
  HS diploma    669  238
  some coll    1435  355
  assoc deg     636  148
  bach deg     1249  204
  adv deg       876   73

, , REGION = Northeast, INCOME = HH income less than $25k

              RECVDVACC
EEDUC             1    2
  less than hs    3    2
  some hs        16    2
  HS diploma     98   15
  some coll     137   18
  assoc deg      81   10
  bach deg      130   10
  adv deg        81    5

, , REGION = South, INCOME = HH income less than $25k

              RECVDVACC
EEDUC             1    2
  less than hs   16    3
  some hs        23   10
  HS diploma    252   67
  some coll     398   93
  assoc deg     193   37
  bach deg      302   33
  adv deg       183   17

, , REGION = Midwest, INCOME = HH income less than $25k

              RECVDVACC
EEDUC             1    2
  less than hs    5    2
  some hs        21    6
  HS diploma    153   40
  some coll     216   47
  assoc deg     115   20
  bach deg      191   12
  adv deg        97    9

, , REGION = West, INCOME = HH income less than $25k

              RECVDVACC
EEDUC             1    2
  less than hs   16    3
  some hs        23    6
  HS diploma    192   37
  some coll     397   65
  assoc deg     181   32
  bach deg      296   28
  adv deg       143   12

, , REGION = Northeast, INCOME = HH income $25k - $34.9k

              RECVDVACC
EEDUC             1    2
  less than hs    1    2
  some hs         7    2
  HS diploma    144   11
  some coll     156   22
  assoc deg     101   15
  bach deg      181   10
  adv deg       109    7

, , REGION = South, INCOME = HH income $25k - $34.9k

              RECVDVACC
EEDUC             1    2
  less than hs   12    2
  some hs        23    4
  HS diploma    218   72
  some coll     462   84
  assoc deg     206   44
  bach deg      457   47
  adv deg       277   19

, , REGION = Midwest, INCOME = HH income $25k - $34.9k

              RECVDVACC
EEDUC             1    2
  less than hs    5    2
  some hs        13    5
  HS diploma    186   36
  some coll     285   53
  assoc deg     165   33
  bach deg      303   21
  adv deg       164    9

, , REGION = West, INCOME = HH income $25k - $34.9k

              RECVDVACC
EEDUC             1    2
  less than hs   16    1
  some hs        20   10
  HS diploma    209   30
  some coll     471   90
  assoc deg     214   32
  bach deg      431   27
  adv deg       268   11

, , REGION = Northeast, INCOME = HH income $35k - 49.9

              RECVDVACC
EEDUC             1    2
  less than hs    1    0
  some hs         6    2
  HS diploma    166   26
  some coll     256   24
  assoc deg     142   13
  bach deg      397   18
  adv deg       269   11

, , REGION = South, INCOME = HH income $35k - 49.9

              RECVDVACC
EEDUC             1    2
  less than hs    8    4
  some hs        15    3
  HS diploma    271   62
  some coll     571  117
  assoc deg     310   50
  bach deg      840   65
  adv deg       660   42

, , REGION = Midwest, INCOME = HH income $35k - 49.9

              RECVDVACC
EEDUC             1    2
  less than hs    2    0
  some hs        12    2
  HS diploma    196   34
  some coll     390   76
  assoc deg     216   53
  bach deg      515   42
  adv deg       358   26

, , REGION = West, INCOME = HH income $35k - 49.9

              RECVDVACC
EEDUC             1    2
  less than hs    9    2
  some hs        21    1
  HS diploma    266   49
  some coll     662  103
  assoc deg     333   47
  bach deg      877   62
  adv deg       599   28

, , REGION = Northeast, INCOME = HH income $50k - 74.9

              RECVDVACC
EEDUC             1    2
  less than hs    0    0
  some hs         5    0
  HS diploma     84   13
  some coll     172   15
  assoc deg     107   19
  bach deg      344    8
  adv deg       328   11

, , REGION = South, INCOME = HH income $50k - 74.9

              RECVDVACC
EEDUC             1    2
  less than hs    1    1
  some hs         7    3
  HS diploma    163   36
  some coll     379   61
  assoc deg     243   50
  bach deg      715   73
  adv deg       640   30

, , REGION = Midwest, INCOME = HH income $50k - 74.9

              RECVDVACC
EEDUC             1    2
  less than hs    2    0
  some hs         4    2
  HS diploma    106   29
  some coll     256   48
  assoc deg     204   41
  bach deg      514   51
  adv deg       402   24

, , REGION = West, INCOME = HH income $50k - 74.9

              RECVDVACC
EEDUC             1    2
  less than hs    5    0
  some hs        12    2
  HS diploma    158   33
  some coll     493   70
  assoc deg     256   43
  bach deg      838   51
  adv deg       655   23

, , REGION = Northeast, INCOME = HH income $75 - 99.9

              RECVDVACC
EEDUC             1    2
  less than hs    3    0
  some hs         7    0
  HS diploma     73   14
  some coll     205   14
  assoc deg     132    9
  bach deg      504   12
  adv deg       600   16

, , REGION = South, INCOME = HH income $75 - 99.9

              RECVDVACC
EEDUC             1    2
  less than hs    0    0
  some hs         9    2
  HS diploma    134   25
  some coll     417   65
  assoc deg     234   29
  bach deg     1014   75
  adv deg      1083   37

, , REGION = Midwest, INCOME = HH income $75 - 99.9

              RECVDVACC
EEDUC             1    2
  less than hs    0    0
  some hs         2    1
  HS diploma     96   23
  some coll     241   38
  assoc deg     186   22
  bach deg      685   60
  adv deg       640   26

, , REGION = West, INCOME = HH income $75 - 99.9

              RECVDVACC
EEDUC             1    2
  less than hs    0    1
  some hs         8    3
  HS diploma    143   33
  some coll     525   84
  assoc deg     297   32
  bach deg     1090   81
  adv deg      1047   40

, , REGION = Northeast, INCOME = HH income $100k - 149

              RECVDVACC
EEDUC             1    2
  less than hs    0    0
  some hs         0    0
  HS diploma     22    4
  some coll      66    4
  assoc deg      52    2
  bach deg      307   10
  adv deg       403    9

, , REGION = South, INCOME = HH income $100k - 149

              RECVDVACC
EEDUC             1    2
  less than hs    0    0
  some hs         1    2
  HS diploma     38    8
  some coll     136   21
  assoc deg      77    7
  bach deg      500   34
  adv deg       689   28

, , REGION = Midwest, INCOME = HH income $100k - 149

              RECVDVACC
EEDUC             1    2
  less than hs    1    0
  some hs         0    0
  HS diploma     28    6
  some coll      80   10
  assoc deg      47    9
  bach deg      298   23
  adv deg       343   12

, , REGION = West, INCOME = HH income $100k - 149

              RECVDVACC
EEDUC             1    2
  less than hs    3    1
  some hs         1    0
  HS diploma     50    6
  some coll     179   20
  assoc deg     119   15
  bach deg      591   32
  adv deg       664   22

, , REGION = Northeast, INCOME = HH income $150 - 199

              RECVDVACC
EEDUC             1    2
  less than hs    0    0
  some hs         0    0
  HS diploma     24    2
  some coll      60    3
  assoc deg      37    0
  bach deg      383   11
  adv deg       620    9

, , REGION = South, INCOME = HH income $150 - 199

              RECVDVACC
EEDUC             1    2
  less than hs    0    1
  some hs         1    0
  HS diploma     28    2
  some coll     117   17
  assoc deg      53    6
  bach deg      622   32
  adv deg      1066   27

, , REGION = Midwest, INCOME = HH income $150 - 199

              RECVDVACC
EEDUC             1    2
  less than hs    0    1
  some hs         0    1
  HS diploma     18    1
  some coll      59    8
  assoc deg      35    3
  bach deg      307   19
  adv deg       437   16

, , REGION = West, INCOME = HH income $150 - 199

              RECVDVACC
EEDUC             1    2
  less than hs    2    4
  some hs         2    2
  HS diploma     29    9
  some coll     171   18
  assoc deg      83    7
  bach deg      696   29
  adv deg      1009   30

, , REGION = Northeast, INCOME = HH income $200k +

              RECVDVACC
EEDUC             1    2
  less than hs    0    0
  some hs         0    0
  HS diploma      0    0
  some coll       0    0
  assoc deg       0    0
  bach deg        0    0
  adv deg         0    0

, , REGION = South, INCOME = HH income $200k +

              RECVDVACC
EEDUC             1    2
  less than hs    0    0
  some hs         0    0
  HS diploma      0    0
  some coll       0    0
  assoc deg       0    0
  bach deg        0    0
  adv deg         0    0

, , REGION = Midwest, INCOME = HH income $200k +

              RECVDVACC
EEDUC             1    2
  less than hs    0    0
  some hs         0    0
  HS diploma      0    0
  some coll       0    0
  assoc deg       0    0
  bach deg        0    0
  adv deg         0    0

, , REGION = West, INCOME = HH income $200k +

              RECVDVACC
EEDUC             1    2
  less than hs    0    0
  some hs         0    0
  HS diploma      0    0
  some coll       0    0
  assoc deg       0    0
  bach deg        0    0
  adv deg         0    0'

covid_dat_use %>% drop_na()
'      RHISPANIC RRACE        EEDUC       MS EGENID_BIRTH GENID_DESCRIBE SEXUAL_ORIENTATION                  KIDS_LT5Y                KIDS_5_11Y                KIDS_12_17Y ENROLLNONE           RECVDVACC
1  Not Hispanic White     bach deg  married       female         female           straight Yes children under 5 in HH                        NA                         NA         NA no did not get vaxx
2  Not Hispanic White    some coll  married         male           male           straight Yes children under 5 in HH                        NA                         NA         NA no did not get vaxx
3  Not Hispanic White    assoc deg  married       female         female           straight                         NA                        NA Yes children 12 - 17 in HH         NA        yes got vaxx
4  Not Hispanic White    some coll  married       female         female           straight                         NA Yes children 5 - 11 in HH                         NA         NA        yes got vaxx
5  Not Hispanic White     bach deg    never       female         female           straight                         NA Yes children 5 - 11 in HH Yes children 12 - 17 in HH         NA no did not get vaxx
6  Not Hispanic White    some coll    never         male           male           straight                         NA                        NA Yes children 12 - 17 in HH         NA        yes got vaxx
7  Not Hispanic White    assoc deg  married         male           male           straight                         NA                        NA Yes children 12 - 17 in HH         NA no did not get vaxx
8  Not Hispanic White    some coll  married         male           male           straight                         NA                        NA Yes children 12 - 17 in HH         NA no did not get vaxx
9  Not Hispanic White     bach deg  married       female         female           straight                         NA                        NA Yes children 12 - 17 in HH         NA        yes got vaxx
10 Not Hispanic White      adv deg  married         male           male           straight Yes children under 5 in HH Yes children 5 - 11 in HH                         NA         NA        yes got vaxx
11 Not Hispanic White      adv deg  married         male           male                 NA Yes children under 5 in HH                        NA                         NA         NA        yes got vaxx
12     Hispanic White less than hs  married       female         female           straight                         NA                        NA Yes children 12 - 17 in HH         NA        yes got vaxx
13 Not Hispanic White      adv deg  married         male           male           straight Yes children under 5 in HH                        NA                         NA         NA        yes got vaxx
14 Not Hispanic White      adv deg  married       female         female           straight Yes children under 5 in HH                        NA                         NA         NA        yes got vaxx
15 Not Hispanic White   HS diploma  married       female         female           straight                         NA                        NA Yes children 12 - 17 in HH         NA        yes got vaxx
16     Hispanic White      some hs  married         male           male           straight                         NA                        NA Yes children 12 - 17 in HH         NA        yes got vaxx
17 Not Hispanic White     bach deg  married       female         female           straight                         NA Yes children 5 - 11 in HH Yes children 12 - 17 in HH         NA        yes got vaxx
18 Not Hispanic Other    some coll    never       female         female           straight                         NA                        NA Yes children 12 - 17 in HH         NA        yes got vaxx
19 Not Hispanic White    some coll divorced       female         female           straight                         NA Yes children 5 - 11 in HH                         NA         NA        yes got vaxx
20 Not Hispanic White   HS diploma  married       female             NA                 NA Yes children under 5 in HH Yes children 5 - 11 in HH Yes children 12 - 17 in HH         NA        yes got vaxx
21 Not Hispanic White    assoc deg divorced       female         female           straight Yes children under 5 in HH                        NA                         NA         NA        yes got vaxx
22 Not Hispanic White    some coll  married       female         female           straight Yes children under 5 in HH Yes children 5 - 11 in HH                         NA         NA no did not get vaxx
             DOSESRV          GETVACRV                           KIDDOSES      KIDGETVAC                  HADCOVID              WRKLOSSRV                       ANYWORK            KINDWORK
1                 NA unsure about vaxx                                 NA             NA                no did not  no recent HH job loss yes employment in last 7 days work for private co
2                 NA    definitely not                                 NA             NA                no did not  no recent HH job loss yes employment in last 7 days       work for govt
3  yes got all doses                NA Yes kids got or will get all doses             NA                no did not  no recent HH job loss yes employment in last 7 days       work for govt
4  yes got all doses                NA                                 NA             NA                no did not  no recent HH job loss yes employment in last 7 days work for private co
5                 NA    definitely not        no kids did not or will not definitely not yes doctor told had covid  no recent HH job loss yes employment in last 7 days work for private co
6  yes got all doses                NA Yes kids got or will get all doses             NA                no did not  no recent HH job loss yes employment in last 7 days work for private co
7                 NA    definitely not        no kids did not or will not definitely not yes doctor told had covid  no recent HH job loss yes employment in last 7 days work for private co
8                 NA      probably not        no kids did not or will not   probably not yes doctor told had covid  no recent HH job loss yes employment in last 7 days work for private co
9  yes got all doses                NA Yes kids got or will get all doses             NA                no did not  no recent HH job loss  no employment in last 7 days                  NA
10 yes got all doses                NA                                 NA             NA                no did not  no recent HH job loss yes employment in last 7 days       work for govt
11 yes got all doses                NA                                 NA             NA                no did not  no recent HH job loss yes employment in last 7 days work for private co
12 yes got all doses                NA Yes kids got or will get all doses             NA                no did not  no recent HH job loss yes employment in last 7 days work for private co
13 yes got all doses                NA                                 NA             NA                no did not  no recent HH job loss yes employment in last 7 days       work for govt
14 yes got all doses                NA                                 NA             NA                no did not  no recent HH job loss  no employment in last 7 days                  NA
15 yes got all doses                NA Yes kids got or will get all doses             NA                no did not yes recent HH job loss yes employment in last 7 days       work for govt
16 yes got all doses                NA Yes kids got or will get all doses             NA                no did not  no recent HH job loss yes employment in last 7 days  work in family biz
17 yes got all doses                NA Yes kids got or will get all doses             NA yes doctor told had covid  no recent HH job loss yes employment in last 7 days       work for govt
18 yes got all doses                NA Yes kids got or will get all doses             NA                no did not  no recent HH job loss  no employment in last 7 days                  NA
19 yes got all doses                NA                                 NA             NA                no did not  no recent HH job loss yes employment in last 7 days work for private co
20 yes got all doses                NA                                 NA  dont know yet                  not sure                     NA                            NA                  NA
21 yes got all doses                NA                                 NA             NA                no did not  no recent HH job loss  no employment in last 7 days                  NA
22                NA      probably not                                 NA             NA                no did not  no recent HH job loss yes employment in last 7 days work for private co
        RSNNOWRKRV                                  CHLDCARE                     CURFOODSUF            CHILDFOOD                                         ANXIOUS
1               NA yes impacts to childcare because pandemic                had enough food                   NA                      no anxiety over past 2 wks
2               NA                                        NA                had enough food                   NA                      no anxiety over past 2 wks
3               NA                                        NA                had enough food                   NA            several days anxiety over past 2 wks
4               NA                                        no      sometimes not enough food kids got enough food more than half the days anxiety over past 2 wks
5               NA                                        no                had enough food                   NA                      no anxiety over past 2 wks
6               NA                                        NA had enough but not what wanted kids got enough food            several days anxiety over past 2 wks
7               NA                                        NA                had enough food                   NA                      no anxiety over past 2 wks
8               NA                                        NA had enough but not what wanted kids got enough food                        nearly every day anxiety
9            other                                        NA                had enough food                   NA            several days anxiety over past 2 wks
10              NA                                        no                had enough food                   NA            several days anxiety over past 2 wks
11              NA                                        no                had enough food                   NA                      no anxiety over past 2 wks
12              NA                                        NA                had enough food                   NA                      no anxiety over past 2 wks
13              NA                                        no                had enough food                   NA                      no anxiety over past 2 wks
14              NA                                        NA                             NA                   NA                                              NA
15              NA                                        NA had enough but not what wanted kids got enough food more than half the days anxiety over past 2 wks
16              NA                                        NA                had enough food                   NA                      no anxiety over past 2 wks
17              NA                                        no had enough but not what wanted kids got enough food                      no anxiety over past 2 wks
18 caring for kids                                        NA                had enough food                   NA                        nearly every day anxiety
19              NA                                        no had enough but not what wanted kids got enough food            several days anxiety over past 2 wks
20              NA                                        NA                             NA                   NA                                              NA
21         retired                                        no                had enough food                   NA            several days anxiety over past 2 wks
22              NA                                        no                had enough food                   NA                      no anxiety over past 2 wks
                                             WORRY                       TENURE                            LIVQTRRV         RENTCUR             MORTCUR EVICT FORCLOSE        EST_ST
1                         no worry over past 2 wks               housing rented live in 1 family attached to others current on rent                  NA    NA       NA        Kansas
2                         no worry over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA         Idaho
3             several days worried over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA Massachusetts
4             several days worried over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA      Illinois
5                         no worry over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA      Illinois
6             several days worried over past 2 wks housing owned free and clear           live in detached 1 family              NA                  NA    NA       NA      Oklahoma
7                         no worry over past 2 wks                           NA                                  NA              NA                  NA    NA       NA    California
8  more than half the days worried over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA      Arkansas
9             several days worried over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA      New York
10            several days worried over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA     Minnesota
11                        no worry over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA        Kansas
12                        no worry over past 2 wks housing owned free and clear           live in detached 1 family              NA                  NA    NA       NA      Maryland
13                        no worry over past 2 wks housing owned free and clear           live in detached 1 family              NA                  NA    NA       NA     Minnesota
14                                              NA                           NA                                  NA              NA                  NA    NA       NA      Missouri
15 more than half the days worried over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA      Nebraska
16                        no worry over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA      Nebraska
17                        no worry over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA      Nebraska
18                          nearly every day worry               housing rented           live in detached 1 family current on rent                  NA    NA       NA        Oregon
19            several days worried over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA  Pennsylvania
20                                              NA                           NA                                  NA              NA                  NA    NA       NA      Maryland
21            several days worried over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA  Pennsylvania
22                        no worry over past 2 wks  housing owned with mortgage           live in detached 1 family              NA current on mortgage    NA       NA          Utah
                 PRIVHLTH               PUBHLTH    REGION                   INCOME Num_kids_Pub_School Num_kids_Priv_School Num_kids_homeschool  Works_onsite    works_remote    Shop_in_store
1  has private health ins  no public health ins   Midwest     HH income $75 - 99.9                   0                    1                   1            no worked remotely shopped in store
2  has private health ins  no public health ins      West    HH income $35k - 49.9                   0                    0                   0 worked onsite worked remotely shopped in store
3  has private health ins has public health ins Northeast    HH income $50k - 74.9                   2                    0                   0 worked onsite worked remotely shopped in store
4  has private health ins  no public health ins   Midwest    HH income $100k - 149                   1                    0                   0 worked onsite              no shopped in store
5   no private health ins has public health ins   Midwest                       NA                   2                    0                   0 worked onsite              no shopped in store
6   no private health ins  no public health ins     South    HH income $35k - 49.9                   1                    0                   0 worked onsite worked remotely shopped in store
7  has private health ins  no public health ins      West                       NA                   1                    0                   0 worked onsite              no shopped in store
8  has private health ins  no public health ins     South     HH income $75 - 99.9                   3                    1                   0 worked onsite              no shopped in store
9  has private health ins  no public health ins Northeast     HH income $150 - 199                   0                    1                   0 worked onsite worked remotely shopped in store
10 has private health ins  no public health ins   Midwest     HH income $75 - 99.9                   0                    0                   2 worked onsite worked remotely shopped in store
11 has private health ins  no public health ins   Midwest     HH income $75 - 99.9                   0                    0                   0 worked onsite              no shopped in store
12  no private health ins  no public health ins     South HH income less than $25k                   0                    0                   0 worked onsite              no shopped in store
13 has private health ins  no public health ins   Midwest    HH income $35k - 49.9                   0                    0                   2 worked onsite              no shopped in store
14                     NA                    NA   Midwest                       NA                   0                    0                   1            NA              NA               NA
15 has private health ins  no public health ins   Midwest    HH income $35k - 49.9                   1                    0                   0 worked onsite              no shopped in store
16  no private health ins  no public health ins   Midwest  HH income $25k - $34.9k                   1                    0                   0 worked onsite              no shopped in store
17 has private health ins  no public health ins   Midwest  HH income $25k - $34.9k                   2                    0                   0 worked onsite              no shopped in store
18  no private health ins has public health ins      West HH income less than $25k                   3                    0                   0            no              no shopped in store
19  no private health ins has public health ins Northeast    HH income $50k - 74.9                   1                    0                   0 worked onsite              no shopped in store
20                     NA                    NA     South                       NA                   4                    2                   2            NA              NA               NA
21  no private health ins has public health ins Northeast HH income less than $25k                   0                    0                   0            no              no shopped in store
22  no private health ins  no public health ins      West    HH income $50k - 74.9                   3                    0                   0 worked onsite              no shopped in store
           eat_in_restaurant
1  eat at restaurant indoors
2  eat at restaurant indoors
3  eat at restaurant indoors
4  eat at restaurant indoors
5  eat at restaurant indoors
6                         no
7  eat at restaurant indoors
8  eat at restaurant indoors
9                         no
10                        no
11 eat at restaurant indoors
12                        no
13                        no
14                        NA
15 eat at restaurant indoors
16 eat at restaurant indoors
17 eat at restaurant indoors
18                        no
19 eat at restaurant indoors
20                        NA
21                        no
22                        no
 [ reached max / getOption("max.print") -- omitted 762 rows ]'


anov1<-aov(formula= (RECVDVACC) ~ (EEDUC== "some coll")*(REGION == "southwest")*(INCOME == "$20,000 - $30,000"),data=NewDF)
print(anov1)
'Call:
   aov(formula = (RECVDVACC) ~ (EEDUC == "some coll") * (REGION == 
    "southwest") * (INCOME == "$20,000 - $30,000"), data = NewDF)

Terms:
                EEDUC == "some coll" Residuals
Sum of Squares                45.001  6980.520
Deg. of Freedom                    1     69112

Residual standard error: 0.3178097
6 out of 8 effects not estimable
Estimated effects may be unbalanced'

rnorm(anov1)
'[1] -0.3343804 -0.5840471  0.6469148 -0.4062708 -1.3392130  0.1880972  2.7981428 -2.4879963 -1.8768810  0.3677299  0.7461126  1.3351905 -1.0127980'
summary(anov1)
'Df Sum Sq Mean Sq F value Pr(>F)    
EEDUC == "some coll"     1     45    45.0   445.5 <2e-16 ***
Residuals            69112   6981     0.1                   
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1'

X = rnorm(EEDUC== "some coll")
Y = rnorm(REGION == "southwest")

t.test(X,Y)
'Welch Two Sample t-test

data:  X and Y
t = -1.7243, df = 138223, p-value = 0.08466
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.019838272  0.001269257
sample estimates:
   mean of x    mean of y 
-0.010412679 -0.001128172'

plot(X,Y)
boxplot(X,Y)
barplot(X,Y)


#At a 99% Confidence Interval
confint(anov1,level=0.99)
'                              0.5 %     99.5 %
(Intercept)              1.09813004 1.10514227
EEDUC == "some coll"TRUE 0.05488897 0.07014784'



reg<-lm(formula=RECVDVACC~(EEDUC== "some coll")+(REGION == "southwest")+(INCOME == "$20,000 - $30,000"),data=NewDF)
print(reg)
'Call:
lm(formula = RECVDVACC ~ (EEDUC == "some coll") + (REGION == 
    "southwest") + (INCOME == "$20,000 - $30,000"), data = NewDF)

Coefficients:
                      (Intercept)           EEDUC == "some coll"TRUE          REGION == "southwest"TRUE  INCOME == "$20,000 - $30,000"TRUE  
                          1.10164                            0.06252                                 NA                                 NA  
'
rnorm(reg)
'[1] -0.21510818  0.66085307  1.43728375  0.03520677  0.81448840 -1.09369555  1.94515969  1.05316019  0.53303255  0.64839146  0.44305948 -0.74524038 -0.63595957'
summary(reg)
'Call:
lm(formula = RECVDVACC ~ (EEDUC == "some coll") + (REGION == 
    "southwest") + (INCOME == "$20,000 - $30,000"), data = NewDF)

Residuals:
    Min      1Q  Median      3Q     Max 
-0.1641 -0.1016 -0.1016 -0.1016  0.8984 

Coefficients: (2 not defined because of singularities)
                                  Estimate Std. Error t value Pr(>|t|)    
(Intercept)                       1.101636   0.001361  809.36   <2e-16 ***
EEDUC == "some coll"TRUE          0.062518   0.002962   21.11   <2e-16 ***
REGION == "southwest"TRUE               NA         NA      NA       NA    
INCOME == "$20,000 - $30,000"TRUE       NA         NA      NA       NA    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 0.3178 on 69112 degrees of freedom
Multiple R-squared:  0.006405,	Adjusted R-squared:  0.006391 
F-statistic: 445.5 on 1 and 69112 DF,  p-value: < 2.2e-16'

X1 = rnorm(INCOME == "$20,000 - $30,000")
X2 = rnorm(RECVDVACC == "yes got vaxx")


t.test(X1,X2)
'Welch Two Sample t-test

data:  X1 and X2
t = -0.62517, df = 138221, p-value = 0.5319
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.013934944  0.007195097
sample estimates:
    mean of x     mean of y 
-0.0029913148  0.0003786084 
'
plot(X1,X2)
boxplot(X1,X2)
boxplot.stats(X1,X2)
'$stats
[1] -3.611009630 -0.683935750 -0.001732073  0.675807825  3.118102540

$n
[1] 69114

$conf
[1] -0.009904124  0.006439979

$out
   [1] -1.4995614723  0.3833663215 -0.8383491288 -1.2689192440 -1.0126576744 -0.2783790667  0.8414449876 -0.9390569375  0.5402274747 -0.4302855782 -0.0648075537 -1.7801563250 -2.1231975819  0.8082642363
  [15]  0.2054880605  1.5690742041 -1.5234805138 -1.8704127394 -1.2684444286  0.4652480636  1.3823944187 -0.8420341576  1.8513393134 -1.4145703744 -0.2335023937  0.9189033687 -2.1933480967 -2.2035887847
  [29] -0.9271244860  1.4973831149 -0.6415462310 -0.4390041031 -1.1386320069 -1.4466317612  0.5193488550 -0.7061440603  0.2877012402 -1.6464954933 -1.3429405974 -1.4651336372  1.4724111039  1.9794770155
  [43] -0.5267235456  0.4878928863  0.0899204957  0.3869190777  1.2812606583 -1.7676370332  1.7770700885 -1.2149151322  1.4622998458  0.3089565548  1.0467562174 -0.1374216978  0.0150938511  0.9087373017
  [57]  0.9706628508 -0.9336118788 -1.8315806836 -0.3667984043 -1.4257338568 -0.2777648920  0.1745951496  0.6594407608  0.1477989982  0.5820412406 -1.1117269764 -1.7980468864  0.3152857671  2.0307371286
  [71]  0.9540848707 -2.8620416974  0.5248398892  0.3879096313  1.0776567661 -1.3444104545  0.0878587362  1.6377098081 -0.7832589500  1.7048771474  2.3821436040  1.2001279838 -0.0939513860 -1.8628193799
  [85] -2.6409967039  0.7504903253  0.5641517404 -1.4771347045 -1.8154352812 -0.3027364119  0.6763541319  0.5023011833 -0.2223011283  1.3398959445 -1.1180848455 -1.1353020285  0.8738885182  1.0272044738
  [99] -1.9085669775 -1.2033421134 -1.0126745663  1.1539492786 -1.5844564156  1.1407518805  0.4245540303  0.8229237850  1.1771180004 -0.7729091075 -1.0758605219 -1.4435477022 -0.9134695379  0.9295213174
 [113]  0.1318629028 -2.0970155519  0.8099529150  1.7533863765 -0.0102018547 -0.0568269647  1.9900828040  0.9802253957 -0.8785078969 -0.4335582962  1.2554319061  0.0032195904 -1.0016972466  0.9320714480
 [127]  0.3276788871 -2.4597865460 -0.0444664182  0.8924850066  1.0030892719 -1.2932283281  0.5963247363  1.0439624331 -2.5544807253  0.0523858043  0.1870279663 -0.8556877236  0.8168637972  1.8550812023
 [141] -1.7815428028  0.4264632658 -1.1244380022 -0.4874233049 -1.1917552653 -0.2400061279  0.0586879691 -0.8361181985  1.4839170364 -1.9459598730  0.7521831559 -2.5186891034  2.1339849761  1.6239937780
 [155] -0.5109918083 -0.3078513591  0.3428068042  0.7767826708  0.5076180737  0.6388502289  0.2846659345  0.5687069872 -1.1712638549  0.9153092484 -2.1146492488 -1.0177124924 -0.0989547300 -0.9101888706
 [169]  1.5357073268 -1.0194062647  1.5097844245  1.2555298165 -0.5897563138 -1.2779909366  2.3319723519 -0.9598320908 -0.6525652496  1.2403330197 -0.3347206602 -1.7752946868  0.9167516206 -1.9086043489
 [183]  0.5337763250 -1.4742182173  0.0182988652 -1.0376527681  0.2243933062 -0.2571047354  0.6740813033  0.8582928150 -0.7793663002  0.2578910604  1.1981368925  0.8190088330 -0.6608152763 -0.2050048008
 [197] -1.6081363586  1.2990876702  1.1854370245 -1.1223680964 -1.0408147618 -1.8389840766  2.5226676591 -0.0860536488  0.5091156972 -0.2288730278  0.2125741041 -0.4964392120  1.4984760810 -0.9307265024
 [211] -0.2733299470  1.8831913968 -0.8542143341  0.6921280812 -1.3966132406 -1.2000247034  1.0806921734  0.2053151902  1.6725158519  0.7222191481  1.7766248999  0.9271647157 -0.5399806278 -0.8539685588
 [225] -0.9929984815  0.4043343250  0.5818373220  0.8315762936 -0.7296090815 -2.0220978248 -1.2464798739  1.0667206360 -0.4446148020 -1.4966049163  1.6562664607 -1.2907638316 -1.3541526713  0.9904467323
 [239] -1.5794760676  2.4671635303  1.1800382842  1.2683476577 -1.1441758454 -0.3699623136 -0.7724071588 -2.0208566861 -1.5870647141 -0.5361863216 -0.6556436276 -0.4221662039  0.6621161283  0.2808040478
 [253]  0.1507204265 -1.6235156754  0.4385259741  0.6759317550  0.2039678575 -1.0888882015 -1.4544519741  1.4837562153  0.6057825155  2.5059360930 -1.0093095776 -1.5194537417  0.5559645588  0.0076402293
 [267]  3.3134830468  1.7697687102 -2.7871359372  0.3273500900  0.0848975660 -0.8243733459 -0.0817785977  1.5383100484 -2.1410104745  1.4326910019 -1.3618904498 -2.1702959894 -0.0776794150  0.5662248202
 [281] -1.1071662239 -1.4069078865 -0.6922670106  0.8602536604 -1.1657756927  2.5947233996 -0.4729853955  0.0592743880  0.4394024274  1.2558784781 -0.7078201251  1.3327806067  0.4521294732  2.6966231682
 [295] -1.5986884057  0.2808503103  1.2747843708 -1.3489608616 -0.9105872789 -1.2959289642  1.8560391793  0.6340263131 -1.2114027309 -1.0636624267 -0.6659452062 -0.1586514587  0.4215448891 -2.2202867203
 [309]  0.0325813906 -1.8545507925 -0.5608732401 -1.1342069590 -0.0712247856 -1.0959303169  0.7646419281 -0.1814822569 -0.9460390678 -0.0549292660  1.6566023278 -1.7955770080 -1.0242692388 -1.7263409544
 [323] -0.5093487356 -0.1165201115  0.1517615579 -0.4803406357 -0.2931958383  1.6407880281 -1.4454963616 -1.9660966630  0.6309705611 -0.6493100396  0.7726978618 -1.2860423630  1.1094790270  0.0004391242
 [337] -0.5460163008 -1.9127434190 -1.6783287341  0.9878153663  0.2997225777  0.1787225303 -0.8815745691 -0.8474169635  0.9483130666 -0.0587055680  1.4136055320 -0.9693839532  0.8448818217  0.7275175619
 [351]  0.4037721701 -0.9858651319 -0.2380538840  0.2589624729  2.4560475590  0.4411786968 -1.2022641874  0.6603744296  0.3288481069 -0.0372272458  0.5202474335 -2.3389795976 -0.4671333633 -0.4531969362
 [365]  0.7979559622  1.1843789534 -0.6270744219  0.5704186456  0.2029487882 -0.3632118920 -0.4819225347 -0.5639187574  1.6210631466  1.3565001001 -0.2677592357  0.5708264007  0.2911270204 -1.4588409619
 [379] -0.3020219437  0.3853397792  1.0156779503 -0.6054950291  0.9738306785  0.2965417805 -0.0711347970 -0.3823186016 -1.0756389964 -1.1149721063  1.3282909077  1.3540243067  0.1502351638  0.7095522182
 [393] -1.2808892411 -0.1058997267 -1.0994098817 -0.0208423228 -0.0959780688 -0.7795205522 -1.1630398519 -0.4729802430 -0.5682805265  2.7874018374 -1.5298070973 -1.4796508991 -0.3225979971 -0.4063515458
 [407]  0.3972031776 -0.0894930698 -1.6804918170 -0.9989321033 -0.8622764988 -0.3757232144  1.1165476357 -1.8765775339  0.2465131497  1.2121270140 -0.5303717436 -0.3090896262 -1.3839697187  1.0426299100
 [421] -0.2361309510  1.1536966649 -0.9667229243  2.9396224714  1.1549768067 -0.0602406330 -0.5573719883 -0.8635505185  2.4753213753  1.1944691505 -1.0911665878  0.8007589986  1.5319693760  1.5501124823
 [435] -1.1518465134  0.9783535440 -0.8155969205 -0.0985544054 -1.5242933110  0.1803494831 -0.9359173925  1.5601526157 -0.4646856992 -1.5967764292  1.0757500201 -1.8406757469 -1.9056547326  0.5313172755
 [449] -1.8807232048 -1.3415980258  1.4069210281  0.6625711886 -0.6949877652 -1.1904138147 -2.4157645987 -0.7582550697  1.2126920644  0.1314389820 -1.0703348893 -0.7244686143  1.9314757793 -1.4363591445
 [463]  1.6520042479 -0.2393145080  0.4643266132  1.1442951018 -2.5664274754 -0.9248496437  1.8677527657 -0.3557412070  0.6380117336 -0.9035082906 -0.0277629955  1.3219475996 -1.1510530575  0.0711531047
 [477]  0.6380005263  1.8964165365 -1.1799502543 -1.3280241527 -1.0487434480  0.2881100357 -0.5453225814  0.5545764564 -0.9930247634  0.6511466290  2.3983003851  1.4119900464 -1.6310450145  0.6233410426
 [491]  1.3205423568  0.2971513840  0.0078855262  2.2591102154 -1.7327262790 -0.4731077104 -0.0231922539 -0.1295950325 -0.8083623963 -0.6874966171  0.8225550155 -1.8391136222  0.2690797244 -0.2565840160
 [505]  2.0792668473  0.5030681356  0.8238719841 -0.5938580219 -1.4813253018 -0.9010445124  1.3231816310 -1.6157778239  2.6643221806  1.0755795551 -1.4115775800  2.4244737509  1.2371960321 -1.2864851912
 [519] -0.2716945598 -1.5714069410 -1.2351111732  0.4566850031  0.7158000775 -1.1247982395 -0.3646924713  0.9544517356 -0.5990830304 -1.5516892019  1.0307414328 -0.4255289692  1.8464079248  0.6962657264
 [533] -0.3407275860  0.3245412378 -1.1894215759  0.8334185218 -0.2141968067  2.1800898199 -1.2187950314  1.8917855055  0.9394655133  0.2697062949  1.8679805227 -0.3786731899  0.4258112128  0.9558784346
 [547]  2.1166423091 -1.4086146129  0.3431359438  1.4198420691  0.4723500742 -1.5056283256  0.1179154748  1.1343337698  2.2703405873  0.1292750043 -0.6867682109 -1.3511352805  0.4131514591  1.2628112751
 [561] -0.9184104136  0.6079021545  1.0715126770 -0.6334970571 -1.4124404166 -0.0236317144  1.6549314413  1.5623393260 -2.0460046869 -1.0225406479  1.0092607611 -1.0833321038  0.0136411796  0.1347113446
 [575] -1.4988626414 -0.1485987481  0.2191978852  0.8825209947  1.8205067940 -1.0051348294  0.8606461895  1.0000313504  0.5095894029  2.0276186003 -1.8471501033 -0.2970695426  0.3595174790  1.6088671012
 [589] -0.1760078580 -1.2991538072  1.9954360955 -0.0975019598 -0.0341506646 -0.7169753872  1.8524391450  0.3453021211  0.1598479721 -1.1412009429  0.6285456981 -0.7190835485  0.8567746791 -0.4429561652
 [603] -1.6781461094  0.9250438647 -0.0089398032  1.6492942617 -0.3272777565  0.4937044032  1.1760880050 -0.4029827075  1.3990265329  0.0312426641  2.5073183429  1.0959990094  1.8107050210 -2.9063237999
 [617]  0.1851167909  0.6354731261 -0.3868365287  0.9674710443  0.2134731612 -0.7292425671 -0.3532604579 -0.5315785707 -0.7915243257 -0.9822934769  0.7298867869 -0.8255673381 -0.5149590984  0.4871939102
 [631]  0.4210639272  1.9352645023  0.1410422282  2.0820400376  1.7635085567  0.5001309456 -0.6650791661 -0.8485813238 -0.3365561985 -0.4899979932  1.7267445106  1.7486297123  0.5862527603 -2.3312091849
 [645]  0.8215697369  1.0062652022  0.8051208093 -2.1772202503 -0.3070930944  0.4043682476 -1.1931066647 -0.2737513053  0.7504900343  1.6863189547 -1.3855568357  2.8295310802  0.8140517183 -1.0851340547
 [659]  0.6345500687  0.9736681534  2.6420780095  1.8584446797 -1.0265401102  0.4763455369  1.4268939870  0.1225846945 -1.0047598439 -1.0995229962  1.2109353361  0.2482576472  0.0873161678 -0.4002294214
 [673]  1.4194831857 -0.4864109127 -1.7441394491 -3.3752200420  0.6200026318 -1.9183830209  0.4404916770 -2.4625574987 -0.8443416856 -0.9610428576  1.0685719592 -1.5420863536  0.0044119664  0.6295111934
 [687]  0.4384403514 -0.4198377112 -0.6428774945  1.1941126903 -2.2384002602 -0.5921355741  0.6945398415  1.0663332093 -0.7657355816 -0.6290122929 -0.4391109367 -2.0181420981 -0.8401262988 -0.6281982884
 [701] -1.4177069705  1.2165292048  1.9590637312  1.7699945559  2.0026263480 -1.0292933642  0.8054539309  1.1450564677 -0.8848055484 -1.1786137704  0.1500600075  0.4126885688 -0.4423063208 -0.5513026399
 [715]  1.6937875300  0.2496023649 -0.5160901965 -1.6886611212 -0.9513406927  0.8613779493  1.5513167522  1.1597360326 -0.8028074948  0.2950777723  2.0929595170  0.7772920519  2.6354512639  0.5310984885
 [729] -0.5168375306  1.9735748047 -0.0442360428  0.5927643137 -0.2394256438  2.2549848242 -1.8591219333  1.0210429606  0.6611672265 -0.7001305289 -0.5473944463  2.5790163956 -0.7126822062  1.7608860250
 [743]  0.0476554005 -1.6734800439  0.8611222801  1.9908800305  1.1834246089 -0.6439770709 -0.7365572135  0.0199014158 -1.3273104124 -0.0733582244  1.0896182997 -0.3371833270  0.3233821614 -1.4303793853
 [757]  0.5439733596 -1.2141983189 -0.5098984101  0.1418503581 -1.0364409953 -0.1755951663 -0.7127721892  1.5129732351 -0.4204987552 -0.2760059891  2.2249857006  0.9202000348 -0.2937945470  1.0565713664
 [771]  0.4702649972 -0.6075084050  1.4547003674  0.3729234616  0.4944258885 -0.6297619272  0.3438153456  0.6817426158 -0.9217094044  0.7214221638 -0.4886217687  1.4361345124 -1.4676322427 -1.2312186962
 [785]  0.5861918651 -1.3279895826 -0.8607580936 -0.9033152711 -1.3776790140  0.8083917464 -0.2316969475  2.7686227468 -1.6046001854  1.2943594313 -1.0160802230 -2.1330988267 -0.8429111042 -0.5015127215
 [799]  1.0973180375  0.5848303146  1.1152494344  1.0340256086  1.4962081235  0.5114704440 -1.1441059892 -1.0559458414  0.4424614635  0.3696254819 -0.8854171512 -0.6907440169  0.1733947041 -1.3157351091
 [813]  3.5849044695  0.3985090328  0.8186280868 -0.9693066628 -0.2297123924  1.2265975861 -0.1411057588  0.6382245785 -0.4129615220 -0.1113294670 -1.3900445214 -0.9924912608 -0.4511457954  0.0561216026
 [827]  1.9555126824 -0.8926214271 -0.6855136781  0.1794900515  0.5012706874 -0.7587285637  1.9292557919  1.6645925160 -2.4887916497 -0.9613124645  1.7532841033  0.3991137713 -0.2053494920  1.2791786767
 [841] -1.0380752069  1.4198258202 -0.2545211350  2.0432171073 -1.0462484817 -0.6531528334 -1.7056736032  2.0819447382 -0.2347964249 -1.6739487992 -0.4842969538 -0.5223683463  0.9953719497 -0.2671807879
 [855]  1.9655341239  1.0023452571 -0.7308188105 -0.3714760697  1.5267490181 -1.3335249745 -2.3373708692 -0.7851709685  1.3675717616  1.8883864835  0.9638747427  0.8827061909  0.6750246997 -0.1994526141
 [869]  0.7711187429 -1.6681234540 -0.3830196411 -1.2357969075  1.6650501726 -1.1736961694 -0.7133530565 -0.2791321705 -2.1115029631 -0.1469821670  0.6757049413  0.2260827229  0.8530408026 -0.5810800440
 [883]  0.7737519361  0.4288811761 -0.3097133345 -1.2810635689  0.1444215566  0.5407571554  0.8424011812  0.9597278854 -0.1785309233 -0.8215722693 -2.1680036907 -0.1386184558 -1.7406543816 -0.6823934338
 [897]  0.7008848324 -0.9765921309 -0.1073661715  0.8894144253  1.9717832015 -1.5780954704  1.5354090360 -1.4416317470  2.4740989600  0.2786004638  1.6619204689 -1.2631186195  0.6735135023  0.8440013442
 [911] -0.5701827991  0.9794836487  0.9600116214  1.0615061967  0.4203149452  0.2488835933 -0.6878613413  1.4235245629 -0.8481031820 -0.0831612995 -2.2210342774  0.2978376735  0.0734228182  1.4801469464
 [925] -0.5166541814 -0.1436917193  1.0598211941  0.8986711655 -0.8750434291 -2.0561905737  1.3328871709 -1.7905787224 -1.5784441445  0.6453822558 -0.7978330595  0.6945695121  0.1757291895 -1.1424770496
 [939] -2.0746948138  1.2559435547  1.5759756540  2.1527729086  1.7165479316 -1.0860996603  2.5397057104 -0.0155703377  0.3630806337 -1.8489167552 -0.4537730990  2.1463993206  1.7342131375 -1.5211479935
 [953]  1.9306431250  0.4744010369 -0.3537620396  1.8867244566  0.5885452921  2.5777765379  1.6242768839  1.8841218156 -1.0994773420 -0.3644184945  0.9491943248 -0.3352993590  1.0158085111 -1.3359309665
 [967]  0.3512665294 -0.0588972491 -1.4829721549  1.0056709601 -1.1526700618 -0.1689273969  0.4425432069 -0.8716733542  0.2110150333  0.2551776773 -0.9685859930  0.7180255221  0.4943206695  0.4391480219
 [981] -0.1983982613  1.3742265920 -0.4278145929  1.7481750740 -0.8463851400  0.8316063171 -2.0910930565 -0.1669995720 -0.2919145587  0.2335484440 -0.4632483298 -1.0493205393  0.1985522034  1.3366579645
 [995]  2.7492149273  1.9868372041  0.7083188271  0.3701586339  0.8719284788 -0.2885079389
 [ reached getOption("max.print") -- omitted 35528 entries ]

Warning messages:
1: In if (coef < 0) stop(coef must not be negative) :
  the condition has length > 1 and only the first element will be used
2: In if (coef == 0) do.out <- FALSE else { :
  the condition has length > 1 and only the first element will be used'

barplot(X1,X1)

#At a 99% Confidence Interval
confint(reg,level=0.99)
'                                       0.5 %     99.5 %
(Intercept)                       1.09813004 1.10514227
EEDUC == "some coll"TRUE          0.05488897 0.07014784
REGION == "southwest"TRUE                 NA         NA
INCOME == "$20,000 - $30,000"TRUE         NA         NA'

delete.na <- function(covid_dat_use, n=0) {covid_dat_use[rowSums(is.na(covid_dat_use)) <= n,]}


#########################################################################
#Question #2                                                       ######
#########################################################################

xtabs(~EEDUC+RECVDVACC+GENID_DESCRIBE,NewDF)
', , GENID_DESCRIBE = NA

              RECVDVACC
EEDUC              1     2
  less than hs    12     2
  some hs         23     2
  HS diploma     139    15
  some coll      185    22
  assoc deg      117     7
  bach deg       299    20
  adv deg        269    19

, , GENID_DESCRIBE = male

              RECVDVACC
EEDUC              1     2
  less than hs   124    34
  some hs        276   103
  HS diploma    2216   628
  some coll     4689   880
  assoc deg     2117   330
  bach deg      7582   561
  adv deg       6964   292

, , GENID_DESCRIBE = female

              RECVDVACC
EEDUC              1     2
  less than hs   142    62
  some hs        347   158
  HS diploma    3760   974
  some coll     7138  1469
  assoc deg     4057   778
  bach deg     10445   956
  adv deg       9519   458

, , GENID_DESCRIBE = transgender

              RECVDVACC
EEDUC              1     2
  less than hs     5     6
  some hs          6     1
  HS diploma      22     6
  some coll       48     5
  assoc deg       12     3
  bach deg        44     2
  adv deg         32    10

, , GENID_DESCRIBE = other

              RECVDVACC
EEDUC              1     2
  less than hs    13    11
  some hs         15     5
  HS diploma      73    24
  some coll      140    20
  assoc deg       73    14
  bach deg       140    26
  adv deg        134    34
'
NewDF$GENID_DESCRIBE[NewDF$GENID_DESCRIBE=="NA"]<-"other"
NewDF$GENID_DESCRIBE<-factor(NewDF$GENID_DESCRIBE)


anov2<-aov(formula=RECVDVACC~EEDUC+GENID_DESCRIBE,data=NewDF)
print(anov2)
'Call:
   aov(formula = RECVDVACC ~ EEDUC + GENID_DESCRIBE, data = NewDF)

Terms:
                   EEDUC GENID_DESCRIBE Residuals
Sum of Squares   266.525          2.018  6756.978
Deg. of Freedom        6              3     69104

Residual standard error: 0.3126977
Estimated effects may be unbalanced'

rnorm(anov2)
'[1] -1.34894512  2.14583760 -1.59003218  1.21272900 -1.04046178 -0.09516054 -0.10835813 -1.40583579  1.05069393 -0.33078555  0.01416090 -0.35764601  0.68111090'
summary(anov2)
'                  Df Sum Sq Mean Sq F value   Pr(>F)    
EEDUC              6    267   44.42 454.294  < 2e-16 ***
GENID_DESCRIBE     3      2    0.67   6.881 0.000125 ***
Residuals      69104   6757    0.10                     
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1'

confint(anov2,level=0.99)
'                                 0.5 %      99.5 %
(Intercept)                1.233308358  1.31323507
EEDUCsome hs              -0.039758866  0.05560702
EEDUCHS diploma           -0.111134087 -0.02954082
EEDUCsome coll            -0.155977124 -0.07531779
EEDUCassoc deg            -0.170417610 -0.08871437
EEDUCbach deg             -0.241743708 -0.16138065
EEDUCadv deg              -0.273852965 -0.19338598
GENID_DESCRIBEfemale       0.004367151  0.01708668
GENID_DESCRIBEtransgender -0.022918095  0.09093569
GENID_DESCRIBEother       -0.016128524  0.02259890
'


reg2<-lm(formula=RECVDVACC~EEDUC+GENID_DESCRIBE,data=NewDF)
print(reg2)
'Call:
lm(formula = RECVDVACC ~ EEDUC + GENID_DESCRIBE, data = NewDF)

Coefficients:
              (Intercept)               EEDUCsome hs            EEDUCHS diploma             EEDUCsome coll             EEDUCassoc deg              EEDUCbach deg               EEDUCadv deg  
                 1.273272                   0.007924                  -0.070337                  -0.115647                  -0.129566                  -0.201562                  -0.233619  
     GENID_DESCRIBEfemale  GENID_DESCRIBEtransgender        GENID_DESCRIBEother  
                 0.010727                   0.034009                   0.003235  '
rnorm(reg2)
'[1]  0.7436803  1.7955848  0.4544826 -0.6599049  1.7851823  1.5455662  1.4478131  1.1069269  0.5028572 -0.2911397 -2.0536993  0.6990690 -0.2896616'
summary(reg2)
'Call:
lm(formula = RECVDVACC ~ EEDUC + GENID_DESCRIBE, data = NewDF)

Residuals:
     Min       1Q   Median       3Q      Max 
-0.31520 -0.15762 -0.08244 -0.05038  0.96035 

Coefficients:
                           Estimate Std. Error t value Pr(>|t|)    
(Intercept)                1.273272   0.015514  82.071  < 2e-16 ***
EEDUCsome hs               0.007924   0.018511   0.428    0.669    
EEDUCHS diploma           -0.070337   0.015838  -4.441 8.96e-06 ***
EEDUCsome coll            -0.115647   0.015657  -7.387 1.52e-13 ***
EEDUCassoc deg            -0.129566   0.015859  -8.170 3.14e-16 ***
EEDUCbach deg             -0.201562   0.015599 -12.921  < 2e-16 ***
EEDUCadv deg              -0.233619   0.015619 -14.957  < 2e-16 ***
GENID_DESCRIBEfemale       0.010727   0.002469   4.345 1.40e-05 ***
GENID_DESCRIBEtransgender  0.034009   0.022100   1.539    0.124    
GENID_DESCRIBEother        0.003235   0.007517   0.430    0.667    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 0.3127 on 69104 degrees of freedom
Multiple R-squared:  0.03822,	Adjusted R-squared:  0.0381 
F-statistic: 305.2 on 9 and 69104 DF,  p-value: < 2.2e-16
'

confint(reg2,level=0.99)

'                                 0.5 %      99.5 %
(Intercept)                1.233308358  1.31323507
EEDUCsome hs              -0.039758866  0.05560702
EEDUCHS diploma           -0.111134087 -0.02954082
EEDUCsome coll            -0.155977124 -0.07531779
EEDUCassoc deg            -0.170417610 -0.08871437
EEDUCbach deg             -0.241743708 -0.16138065
EEDUCadv deg              -0.273852965 -0.19338598
GENID_DESCRIBEfemale       0.004367151  0.01708668
GENID_DESCRIBEtransgender -0.022918095  0.09093569
GENID_DESCRIBEother       -0.016128524  0.02259890'

######################################################################
#QUESTION#3                                                     ######
######################################################################

library(class)
library(caret)

'Loading required package: ggplot2
Loading required package: lattice'

Household_Pulse_data$REGION <- factor(Household_Pulse_data$REGION)
Household_Pulse_data$INCOME <- as.numeric(Household_Pulse_data$INCOME)
Household_Pulse_data$EEDUC <- as.numeric(Household_Pulse_data$EEDUC)
Household_Pulse_data$REGION <- as.numeric(Household_Pulse_data$REGION)

TOTAL <- lm(INCOME ~ EEDUC + REGION + RECVDVACC, Household_Pulse_data)
summary(TOTAL)
'Call:
lm(formula = INCOME ~ EEDUC + REGION + RECVDVACC, data = Household_Pulse_data)

Residuals:
    Min      1Q  Median      3Q     Max 
-3.9649 -1.7619  0.0723  1.6873  7.6837 

Coefficients:
                             Estimate Std. Error t value Pr(>|t|)    
(Intercept)                  -1.38351    0.08493 -16.291  < 2e-16 ***
EEDUC                         0.55076    0.00593  92.881  < 2e-16 ***
REGION                        0.03726    0.00784   4.752 2.01e-06 ***
RECVDVACCyes got vaxx         2.34409    0.07669  30.568  < 2e-16 ***
RECVDVACCno did not get vaxx  1.69199    0.08021  21.095  < 2e-16 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 2.221 on 69109 degrees of freedom
Multiple R-squared:  0.1416,	Adjusted R-squared:  0.1415 
F-statistic:  2849 on 4 and 69109 DF,  p-value: < 2.2e-16
'
step(TOTAL)
'Start:  AIC=110310
INCOME ~ EEDUC + REGION + RECVDVACC

            Df Sum of Sq    RSS    AIC
<none>                   340928 110310
- REGION     1       111 341039 110331
- RECVDVACC  2      7182 348110 111747
- EEDUC      1     42558 383486 118438

Call:
lm(formula = INCOME ~ EEDUC + REGION + RECVDVACC, data = Household_Pulse_data)

Coefficients:
                 (Intercept)                         EEDUC                        REGION         RECVDVACCyes got vaxx  RECVDVACCno did not get vaxx  
                    -1.38351                       0.55076                       0.03726                       2.34409                       1.69199  '

# TESTING FOR ERRORS IN THE SUBGROUPSP:
summary(INCOME)
'                NA HH income less than $25k  HH income $25k - $34.9k    HH income $35k - 49.9    HH income $50k - 74.9     HH income $75 - 99.9    HH income $100k - 149     HH income $150 - 199 
                   20335                     4600                     5805                     9330                     7830                    10117                     4980                     6117 
       HH income $200k + 
                       0 '
summary(ANXIOUS)
'   NA                      no anxiety over past 2 wks            several days anxiety over past 2 wks more than half the days anxiety over past 2 wks 
                                           7946                                           26611                                           19794                                            6140 
                       nearly every day anxiety 
                                           8623 '
summary(EEDUC)
'less than hs      some hs   HS diploma    some coll    assoc deg     bach deg      adv deg 
         411          936         7857        14596         7508        20075        17731'

summary(as.logical(INCOME))
'Mode    NA s 
logical   69114'

summary(as.logical(ANXIOUS))
'Mode    NA s 
logical   69114 '

summary(as.logical(EEDUC))
'Mode    NA s 
logical   69114 '

#########ANXIOUS BASED ON THEIR INCOME###############
Household_Pulse_data$ANXIOUS <- as.numeric(Household_Pulse_data$ANXIOUS)
anxious1 <- lm(ANXIOUS ~ INCOME, Household_Pulse_data)
summary(anxious1)
'Call:
lm(formula = ANXIOUS ~ INCOME, data = Household_Pulse_data)

Residuals:
    Min      1Q  Median      3Q     Max 
-1.9838 -0.8575 -0.2628  0.4583  2.4583 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 2.478561   0.008351  296.79   <2e-16 ***
INCOME      0.063160   0.001832   34.47   <2e-16 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 1.155 on 69112 degrees of freedom
Multiple R-squared:  0.0169,	Adjusted R-squared:  0.01689 
F-statistic:  1188 on 1 and 69112 DF,  p-value: < 2.2e-16'

par(mfrow = c(1, 2))
plot(Household_Pulse_data$ANXIOUS, Household_Pulse_data$INCOME)

#Educated based on their region
Household_Pulse_data$EEDUC <- as.numeric(Household_Pulse_data$EEDUC)
EEDUC_REGION <- lm(EEDUC ~ REGION, Household_Pulse_data)
summary(EEDUC_REGION)
'Call:
lm(formula = EEDUC ~ REGION, data = Household_Pulse_data)

Residuals:
    Min      1Q  Median      3Q     Max 
-4.3477 -1.2920  0.6802  1.6523  1.7358 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept)  5.375490   0.014855 361.871  < 2e-16 ***
REGION      -0.027830   0.005124  -5.432  5.6e-08 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 1.452 on 69112 degrees of freedom
Multiple R-squared:  0.0004267,	Adjusted R-squared:  0.0004122 
F-statistic:  29.5 on 1 and 69112 DF,  p-value: 5.604e-08'

par(mfrow = c(1, 2))
plot(Household_Pulse_data$EEDUC, Household_Pulse_data$INCOME)

#I DECIDE TO JUST APPLY EEDUC AND ANXIOUS AND REMOVE VARIOUABLE REGION, RRACE AND GENDER.
Household_Pulse_data$ANXIOUS <- as.numeric(Household_Pulse_data$ANXIOUS)
Household_Pulse_data$EEDUC <- as.numeric(Household_Pulse_data$EEDUC)
Household_Pulse_data$INCOME <- as.numeric(Household_Pulse_data$INCOME)

NEW_TOTAL <- lm(INCOME ~ EEDUC + ANXIOUS, Household_Pulse_data)
summary(TOTAL)
'Call:
lm(formula = INCOME ~ EEDUC + REGION + RECVDVACC, data = Household_Pulse_data)

Residuals:
    Min      1Q  Median      3Q     Max 
-3.9649 -1.7619  0.0723  1.6873  7.6837 

Coefficients:
                             Estimate Std. Error t value Pr(>|t|)    
(Intercept)                  -1.38351    0.08493 -16.291  < 2e-16 ***
EEDUC                         0.55076    0.00593  92.881  < 2e-16 ***
REGION                        0.03726    0.00784   4.752 2.01e-06 ***
RECVDVACCyes got vaxx         2.34409    0.07669  30.568  < 2e-16 ***
RECVDVACCno did not get vaxx  1.69199    0.08021  21.095  < 2e-16 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 2.221 on 69109 degrees of freedom
Multiple R-squared:  0.1416,	Adjusted R-squared:  0.1415 
F-statistic:  2849 on 4 and 69109 DF,  p-value: < 2.2e-16'
plot(NEW_TOTAL, 2)
detach()

attach(Household_Pulse_data)
'The following objects are masked from covid_dat_use:

    ANXIOUS, ANYWORK, CHILDFOOD, CHLDCARE, CURFOODSUF, DOSESRV, eat_in_restaurant, EEDUC, EGENID_BIRTH, ENROLLNONE, EST_ST, EVICT, FORCLOSE, GENID_DESCRIBE, GETVACRV, HADCOVID,
    INCOME, KIDDOSES, KIDGETVAC, KIDS_12_17Y, KIDS_5_11Y, KIDS_LT5Y, KINDWORK, LIVQTRRV, MORTCUR, MS, Num_kids_homeschool, Num_kids_Priv_School, Num_kids_Pub_School, PRIVHLTH,
    PUBHLTH, RECVDVACC, REGION, RENTCUR, RHISPANIC, RRACE, RSNNOWRKRV, SEXUAL_ORIENTATION, Shop_in_store, TENURE, Works_onsite, works_remote, WORRY, WRKLOSSRV'

Household_Pulse_data$ANXIOUS <- as.numeric(Household_Pulse_data$ANXIOUS)
Household_Pulse_data$EEDUC <- as.numeric(Household_Pulse_data$EEDUC)
Household_Pulse_data$INCOME <- as.numeric(Household_Pulse_data$INCOME)
NEW_TOTAL <- lm(INCOME ~ EEDUC + ANXIOUS, Household_Pulse_data)
summary(NEW_TOTAL)
'Call:
lm(formula = INCOME ~ EEDUC + ANXIOUS, data = Household_Pulse_data)

Residuals:
    Min      1Q  Median      3Q     Max 
-4.4459 -1.7746 -0.0334  1.8023  6.7917 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 0.113911   0.037440   3.042  0.00235 ** 
EEDUC       0.576902   0.005826  99.019  < 2e-16 ***
ANXIOUS     0.258733   0.007266  35.611  < 2e-16 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 2.224 on 69111 degrees of freedom
Multiple R-squared:  0.139,	Adjusted R-squared:  0.139 
F-statistic:  5581 on 2 and 69111 DF,  p-value: < 2.2e-16
'
plot(NEW_TOTAL, 2)

require(stargazer)
'Loading required package: stargazer

Please cite as: 

 Hlavac, Marek (2018). stargazer: Well-Formatted Regression and Summary Statistics Tables.
 R package version 5.2.2. https://CRAN.R-project.org/package=stargazer '

stargazer(NEW_TOTAL, type = "text")

'================================================
                        Dependent variable:     
                    ----------------------------
                               INCOME           
------------------------------------------------
EEDUC                         0.577***          
                              (0.006)           
                                                
ANXIOUS                       0.259***          
                              (0.007)           
                                                
Constant                      0.114***          
                              (0.037)           
                                                
------------------------------------------------
Observations                   69,114           
R2                             0.139            
Adjusted R2                    0.139            
Residual Std. Error      2.224 (df = 69111)     
F Statistic         5,580.747*** (df = 2; 69111)
================================================
Note:                *p<0.1; **p<0.05; ***p<0.01'

require(AER)
'Loading required package: AER
Loading required package: car
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
Loading required package: survival'

NNobs <- length(NEW_TOTAL)
set.seed(12345) # replicating a random choice
graph_obs <- (runif(NNobs) < 0.1) #1/10 as many obs
dat_graph <-subset(Household_Pulse_data,graph_obs)
Household_Pulse_data$EEDUC <- as.numeric(Household_Pulse_data$EEDUC)
plot(INCOME ~ jitter(EEDUC, factor = 2), pch = 16, col = rgb(0.5, 0.5, 0.5, alpha = 0.2), data = dat_graph)
plot(INCOME ~ jitter(ANXIOUS, factor = 2), pch = 16, col = rgb(0.5, 0.5, 0.5, alpha = 0.2), ylim = c(0,150000), data = dat_graph)


##CONCLUSION: From this data I analyzed how one situation impacts another. For example if we have more income than where do we live? / does income level make a person less anxious or not? 








































