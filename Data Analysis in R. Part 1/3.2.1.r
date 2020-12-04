fill_na <- function(x){
  fit <- lm(y ~ x_1 + x_2, x, na.action = 'na.exclude')
  x$y_full <- predict(fit, x)
  x$y_full <- ifelse(is.na(x$y), x$y_full, x$y)
  return(x)
}