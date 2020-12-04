filtered.cor <- function(x){
  library(psych)
  x <- as.data.frame(x)
  num_cols <- unlist(lapply(x, is.numeric))        
  y <- x[ , num_cols]
  co <- corr.test(y)
  co <- co$r
  for (i in 1:length(y)) {
    co[i,i] <- 0
  }
  c1 <- max(co)
  c2 <- min(co)
  if (abs(c2)>c1){
    return(c2)
  }
  else{
    return(c1)
  }
}