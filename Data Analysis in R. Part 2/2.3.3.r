my_plot <- ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
  geom_point() +
  geom_smooth() +
  facet_wrap(~ Species)