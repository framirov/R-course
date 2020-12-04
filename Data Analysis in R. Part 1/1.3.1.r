data(mtcars)
even_gear <-  (mtcars$gear - 1) %% 2
mtcars <- cbind(mtcars,even_gear)
mtcars$even_gear