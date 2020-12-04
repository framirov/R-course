library(ggplot2)
my_plot <- ggplot(iris, aes(Sepal.Width, Petal.Width, col = factor(Species))) +
  geom_point() +
  geom_smooth(method = "lm")