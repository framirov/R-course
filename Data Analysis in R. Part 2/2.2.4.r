sd_error <- function(x){
  c(y = mean(x), ymin = mean(x) - sd(x), ymax = mean(x) + sd(x))
}

my_plot <-  ggplot(sales, aes(date, sale, col = shop, group = shop))+
  stat_summary(fun.data = sd_error, geom = "errorbar", 
               width = 0.2, 
               position = position_dodge(0.2)) + 
  stat_summary(fun.data = sd_error, geom = "point", size = 2, 
               position = position_dodge(0.2)) +
  stat_summary(fun.y = mean, geom = "line", 
               position = position_dodge(0.2))