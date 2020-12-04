t <- table(diamonds$cut, diamonds$color)
Chi <- chisq.test(t)
main_stat <- Chi$statistic