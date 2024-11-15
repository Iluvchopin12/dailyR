library(nycflights13)
library(dplyr)
library(tidyverse)

str(flights)
View(flights)

#2. another useful dplyr flitering helper is between(). what does it do? can you use it to simplify the code needed to answer the previous challenge?

#the expression between(x, left, right) is equivalent to x>-left & x<= right


filter(flights, between(month, 7, 9))


#3How many flights have a missing dep_tim? what other variables are missing? what might these row represent?

table(is.na(flights$dep_time))

filter(flights, is.na(dep_time))
summary(flights)       

## the output of function summary() includes the number of missing values for all non-character varibles 

#4. why is NA^0 not missing? why is NA|TRUE not missing? why is FALSE & NA not missing? can you figure out the general rule? (NA * 0 is a tricky counterexmaple!)


NA^0

# NA^0 == 1 since for all numeric values x^0 == 1. 

NA|TRUE

NA * 0
# since x * 0 = 0 for all finite number we might expect NA * 0 == 0, but that's not the case. the reason that NA*0 ! = 0 is that 0 * infinite and 0 * - infinite are undefined. R represents undefined results as NaN, which is an abbreviation of "not a number". 
Inf * 0 
