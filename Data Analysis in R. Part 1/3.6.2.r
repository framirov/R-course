library("ggplot2")

df <- ToothGrowth
df$dose <- as.factor(df$dose)
obj <- ggplot(df, aes(x = supp, y = len, fill = dose)) +
  geom_boxplot()