#DailyR_Nov.29th

library(nycflights13)
library(dplyr)
library(tidyverse)

# conflicted 패키지 로드
library(conflicted)
# 충돌 설정
conflict_prefer("filter", "dplyr")



summarise(flights, delay = mean(dep_delay, na.rm = TRUE))

by_day <- group_by(flights, year, month, day)
summarise(by_day, delay = mean(dep_delay, na.rm = TRUE))

by_dest <- group_by(flights, dest)
delay = summarise(by_dest,
                  count = n(),
                  dist = mean(distance, na.rm = TRUE),
                  delay = mean(arr_delay, na.rm = T))


delay <- filter(delay, count > 20, dest != "NHL")

ggplot(data = delay, mapping = aes(x = dist, y = delay)) +
  geom_point(aes(size = count), alpha = 1/3) + 
  geom_smooth(se = FALSE)


#combining multiple operations with the pipe 
delays <- flights %>% 
  group_by(dest) %>% 
  summarise(
    count = n(),
    dist = mean(distance, na.rm = T),
    delay = mean(arr_delay, na.rm = T)) %>% 
      filter(count >20, dest != "NHL")

  
