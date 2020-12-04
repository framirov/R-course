df <- mtcars
descriptions_stat <- aggregate(cbind(hp, disp) ~ am, df, sd)