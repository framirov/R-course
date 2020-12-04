mpg_facet <- ggplot(mtcars, aes(mpg)) +
  geom_dotplot() +
  facet_grid(am ~ vs)