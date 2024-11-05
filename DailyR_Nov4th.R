# DailyR_Nov4th

x = c(3, 2, 0, 8, 12, 11, 5, -2)

mean(x)
sd(x)
n = length(x)

(ci = mean(x) + c(-1, 1) * qt(1 - 0.025, n-1) * sd(x) / sqrt(n))
help(qt)

t.test(x, alternative = "greater")$p.value
t.test(x, alternative = "greater")
help(t.test)



