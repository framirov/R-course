NA.counter <- function(x){
  s <- which(is.na(x))
  return(length(s))
}