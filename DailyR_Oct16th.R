#DailyR_Oct.16


median <- qnorm(0.5)
q1 <- qnorm(0.25)
q3 <- qnorm(0.75)

median; q1; q3

qbinom(0.5, 10, 0.3)
qbinom(0.25, 10, 0.3)
qbinom(0.75, 10, 0.3)

n <- 8
sigma <- 1

alpha <- 0.05
z_value <- qnorm(1-alpha/2)
margine_of_error <- z_value * sigma / sqrt(n)
lower_bound <- -margine_of_error
upper_bound <- margine_of_error

lower_bound; upper_bound

