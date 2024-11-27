#daily R Nov. 26th

#1. currently cep_time and sched_dep_time are convenient to look at, but hard to compute with because they're not really continuous numbers. convert them to a more convenient representation of number of minutes since midnight.

library(nycflights13)
library(dplyr)
library(tidyverse)


names(flights)
summary(flights$dep_time)
View(flights)

# To get the departure times in the number of minutes, divide dep_time by 100 to get the hours since midnight and multiply by 60 and add the remainder of dep_time divided by 100. For example, 1504 represents 15:04 (or 3:04 PM), which is 904 minutes after midnight. To generalize this approach, we need a way to split out the hour-digits from the minute-digits. Dividing by 100 and discarding the remainder using the integer division operator, %/% gives us the following.

1504 %/% 100
1504 %% 100

1504 %/% 100 * 60 + 1504 %% 100

#There is one remaining issue. Midnight is represented by 2400, which would correspond to 1440 minutes since midnight, but it should correspond to 0. After converting all the times to minutes after midnight, x %% 1440 will convert 1440 to zero while keeping all the other times the same.

flights_times <- mutate(flights,
                        dep_time_mins = (dep_time %/% 100 * 60 + dep_time %% 100) %% 1400,
                        sched_dep_time_mins = (sched_dep_time %/% 100 * 60 + 
                                                 sched_dep_time %% 100) %% 1440)

select(
  flights_times, dep_time, dep_time_mins, sched_dep_time,
  sched_dep_time_mins
)

time2mins <- function(x) {
  (x %/% 100 * 60 + x %% 100) %% 1440
}


flights_times <- mutate(flights,
                        dep_time_mins = time2mins(dep_time),
                        sched_dep_time_mins = time2mins(sched_dep_time)
)
# show only the relevant columns
select(flights_times, dep_time, dep_time_mins, sched_dep_time,
  sched_dep_time_mins)
  