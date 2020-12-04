my_plot <- ggplot(sales, aes(income, sale))+
  geom_point(aes(color = shop)) +
  geom_smooth()