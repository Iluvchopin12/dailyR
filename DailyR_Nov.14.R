## Nov. 14th 
x <- NA
y <- NA

x == y

is.na(x)
library(tidyverse)
library(dplyr)

df <- tibble(x = c(1, NA,3))

filter(df, x>1)

filter(df, is.na(x) | x> 1)

install.packages("nycflights13")
library(nycflights13)
str(flights)
head(flights)
summary(flights)
View(flights)
#find all flgiths that:
## a. had an arrival delay of two or more hours
?flights
#dep_delay, arr_delay
##Departure and arrival delays, in minutes. Negative times represent early departures/arrivals

filter(flights, arr_delay > 2)

## b. flew to houston (IAH or HOU)
filter(flights, dest == "IAH" | dest == "HOU")

## c. were operated by Unitred, American, or Delta

filter(flights, carrier == "UA" | carrier == "DL" | carrier == "AA")

