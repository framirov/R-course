smart_lm <- function(swiss){
  arr <- swiss[, apply(swiss, 2, function(x) (shapiro.test(x)$p.value > 0.05))]
  if (length(arr) > 1){
    return(lm(arr[,1] ~ ., arr[-1])$coefficients)
  }
  else{
    return("There are no normal variables in the data")
  }
}