regr.calc <- function(x){
  library(psych)
  cc <- cor.test(x[[1]], x[[2]])$p.value
  if (cc < 0.05){
    x$fit <- lm(x[[1]] ~ x[[2]])$fitted.values
    return(x)
  }
  else {
    return("There is no sense in prediction")
  }
}
