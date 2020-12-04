m1 <- mean(diamonds$carat)
m2 <- mean(diamonds$price)
diamonds$carat <- as.numeric(diamonds$carat >= m1)
diamonds$price <- as.numeric(diamonds$price >= m2)
main_stat <- chisq.test(table(diamonds$carat, diamonds$price))$statistic