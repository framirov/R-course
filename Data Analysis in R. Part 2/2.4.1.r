iris_plot <- ggplot(iris, aes(Sepal.Length, Petal.Length, col = Species)) +
  geom_point() +
  geom_smooth(method = "lm") +
  scale_x_continuous(name =  "����� �����������",
                     limits = c(4,8),
                     breaks = seq(4:8)) +
  scale_y_continuous(name =  "����� ��������",
                     limits = c(1,7),
                     breaks = seq(1:7)) +
  scale_color_discrete(name = "��� ������",
                       labels = c("���� ����������", "���� ������������", "���� ����������"))