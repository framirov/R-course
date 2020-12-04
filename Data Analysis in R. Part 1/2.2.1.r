df <- ToothGrowth
t_stat <- t.test(df$len[df$supp == "OJ" & df$dose == 0.5], df$len[df$supp == "VC" & df$dose == 2])
t_stat <- t_stat$statistic