sl_wrap <- ggplot(iris, aes(Sepal.Length)) +
  geom_density() +
  facet_wrap(~ Species)