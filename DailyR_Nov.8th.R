#Nov.8th

install.packages("Rfit")

w = sort(Rfit::walsh(x))
median(w)
alpha = 0.05
u = n*(n+1)/2 + 1 - qsignrank(alpha/2, n)
l = qsignrank(alpha/2, n)
c(l, u)
(ci = c(w[1], w[u]))

x = c(11, 20, 16, 5, 3, 17)
wilcox.test(x, alternative = "greater", exact = F, correct = F)
