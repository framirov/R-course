new_var <-  ifelse((mtcars$carb >= 4) | (mtcars$cyl > 6), 1, 0)
mtcars <- cbind(mtcars,new_var)