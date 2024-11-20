#DailyR_Nov.19th

library(nycflights13)
library(dplyr)
library(tidyverse)

#1. how could you use arrange() to sort all missing values to the start?

#2. sort fligths to find the most delyaed flights. find the fligths tat left ealirst

arrange(flights, desc(dep_delay))
arrange(flights, dep_delay)


#3. sort flights to find the fastes flights
names(flights)

flights %>% 
  arrange(sched_dep_time)

#4. which flights traveld the longest? which traveld the sortest.
flights %>% 
  arrange(time_hour)

flights %>% 
  arrange(desc(time_hour))
  
