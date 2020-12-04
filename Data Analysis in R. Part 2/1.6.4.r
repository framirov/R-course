to_factors <- function(t, factors){
  x <- mutate_at(t, factors, funs(ifelse(. > mean(.), 1, 0)))
  x <- mutate_at(x, factors, funs(as.factor(.)))
  return(x)
}