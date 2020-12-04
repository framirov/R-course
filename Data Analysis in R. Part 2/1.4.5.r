funn <- function(x, g) {
  return(c(t.test(x,mu=g)$statistic, t.test(x,mu=g)$parameter, t.test(x,mu=g)$p.value))
}

one_sample_t <- function(test, gen){
  test <- test[sapply(test, is.numeric)]
  lapply(test, function(x) funn(x, gen))
}