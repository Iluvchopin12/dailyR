#DailyR_Nov.21th

library(nycflights13)
library(dplyr)
library(tidyverse)

#2. what happens if you include the name of a variable multiple itmes in a select() call?

names(flights)

select(flights, year, month, day, day, day)

#the select() call ignores the duplication. Any duplicated variables are only included once, in the first location they appear.

#3. what does the one_of() function do? why mnight it be helpful in conjunction with this vector?

vars <- c("year", "month", "day", "dep_delay", "arr_delay")

select(flights, one_of(vars))

# the one_of() function select variables with a character vector rather than unquoted variable name arguments. 
# In the most recent versions of dplyr, one_of has been deprecated in favor of two functions: all_of() and any_of(). These functions behave similarly if all variables are present in the data frame.

#4. does the result of running the following code surprise you? How do the select helpers deal with case by default? how can you change the default?

select(flights, contains("TIME"))

select(flights, contains("TIME", ignore.case = F))

names(flights)



