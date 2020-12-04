x_cut_density <- qplot(diamonds$x,
                       geom = "density", color = factor(diamonds$cut))