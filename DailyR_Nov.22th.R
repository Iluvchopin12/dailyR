#DailyR_Nov.22th

library(nycflights13)
library(dplyr)
library(tidyverse)

flights_sml <- select(flights, year:day,
                      ends_with("delay"),
                      distance,
                      air_time)
flights_sml

mutate(flights_sml,
       gain = arr_delay - dep_delay,
       speed = distance /air_time * 60)

mutate(flights_sml, 
       gain = arr_delay - dep_delay,
       hours = air_time / 60,
       gain_per_hour = gain / hours)

transmute(flights,
          gain = arr_delay - dep_delay,
          hours = air_time / 60,
          gain_per_hour = gain /hours)
