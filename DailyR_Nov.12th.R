install.packages("nycflights13")
library(nycflights13)
library(tidyverse)

flights
View(flights)
filter(flights, month ==1, day ==1)

jan1 <- filter(flights, month ==1, day ==1)

jan11 <- flights %>% 
  filter(month ==1 , day ==1)

jan1; jan11


dec25 <- filter(flights, month == 12, day == 25)
dec25
