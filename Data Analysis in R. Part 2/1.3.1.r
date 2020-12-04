get_negative_values <- function(test_data){
  xx <- apply(test_data, 2, function(x) x[(x < 0) & !(is.na(x))])
  return(xx[sapply(xx,length)>0] )
}