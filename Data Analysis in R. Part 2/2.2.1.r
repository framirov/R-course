my_plot <- ggplot(mtcars, aes(factor(am), mpg))+
  geom_violin() +
  geom_boxplot()