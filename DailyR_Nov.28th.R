#DailyR_Nov.28th

library(nycflights13)
library(dplyr)
library(tidyverse)


#2. compare air_time with arr_time - dep_time. what do you expect to see? what do you see? what do you need to do fix it?

flights_1 <- select(flights, air_time, arr_time, dep_time)
View(flights_1)

#air_time: Amount of time spent in the air, in minutes.
#dep_time, arr_time, Departure and arrival delays, in minutes. Negative times represent early departures/arrivals.

help(flights)


flights_1 <- flights_1 %>% 
  mutate(nevitime = arr_time - dep_time)


summarise(flights_1)

##

flights_airtime <-
  mutate(flights,
         dep_time = (dep_time %/% 100 * 60 + dep_time %% 100) %% 1440,
         arr_time = (arr_time %/% 100 * 60 + arr_time %% 100) %% 1440,
         air_time_diff = air_time - arr_time + dep_time
  )

nrow(filter(flights_airtime, air_time_diff != 0))


library(ggplot2)

ggplot(flights_airtime, aes(x = air_time_diff)) +
  geom_histogram(binwidth = 1)

ggplot(filter(flights_airtime, dest == "LAX"), aes(x = air_time_diff)) +
  geom_histogram(binwidth = 1)

