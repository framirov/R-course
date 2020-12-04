filtered.sum <- function(x){
  return(sum(x[(!(is.na(x))) & (x > 0)]))
}