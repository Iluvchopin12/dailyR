#DailyR_Nov.25th

library(nycflights13)
library(dplyr)
library(tidyverse)

#modular arithmetic (%/% and %%)
## %/% (integer division) and %% (remainder), where x == y * (x %/% y ) + (x %% y)


transmute(flights,
          dep_time,
          hour = dep_time %/% 100,
          minute = dep_time %% 100)

(x <- 1:10)

x

lag(x)

lead(x)

x - lag(x)
x != lag(x)

x
cumsum(x)
cummean(x)

library(dplyr)
install.packages("slider")
library(slider)

#ranking
y <- c(1,2,2,NA,3,4)
min_rank(y)
min_rank(desc(y))

row_number(y)

percent_rank(y)

cume_dist(y)
