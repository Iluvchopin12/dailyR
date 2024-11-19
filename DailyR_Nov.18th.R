#DailyR_Nov.18th

library(nycflights13)
library(dplyr)
library(tidyverse)

str(flights)

arrange(flights, year, month, day)

arrange(flights, desc(arr_delay))

flights %>% 
  arrange(desc(arr_delay))

df <- tibble(x= c(5,2, NA))
df
arrange(df, x)

arrange(df)
arrange(df, desc(x))
