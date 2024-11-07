library(ggplot2)
data(mpg)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y=hwy))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y=hwy))

ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))

ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))
ggplot(data = mpg) + 
  geom_smooth(
    mapping = aes(x = displ, y = hwy, color = drv),
    show.legend = T)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_smooth(mapping = aes(x = displ, y= hwy))

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()

