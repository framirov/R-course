my_plot <- ggplot(sales, aes(shop, income, col = season))+
  stat_summary(fun.data = mean_cl_boot, position = position_dodge(0.2))