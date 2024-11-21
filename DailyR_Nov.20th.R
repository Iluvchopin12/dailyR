#DailyR_Nov.20th

library(nycflights13)
library(dplyr)
library(tidyverse)

#select columns with select()

select(flights, year, month, day)

#select all columns between year and day (inclusive)
select(flights, year:day)

#select all columns except those from year to day (inclusive)
select(flights, -(year:day))

names(flights)
rename(flights, tail_num = tailnum)

select(flights, time_hour, air_time, everything())

select(flights, carrier, flight, everything())

#Exercise
##1. brainstorm as many ways as possible to select dep_time, dep_delay, arr_time, and arr_delay from flights. 

select(flights, dep_time, dep_delay, arr_time, arr_delay)
select(flights, 4, 6, 7, 9)
select(flights, all_of(c("dep_time", "dep_delay", "arr_time", "arr_delay")))
variables <- c("dep_time", "dep_delay", "arr_time", "arr_delay")