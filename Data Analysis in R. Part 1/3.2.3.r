library(ggplot2)
# ������� ��������� ���������� am � ������
mtcars$am <- factor(mtcars$am)

# ������ ������ ������
my_plot <- ggplot(mtcars, aes(x = wt, y = mpg, col = am))+
  geom_smooth(method = "lm")