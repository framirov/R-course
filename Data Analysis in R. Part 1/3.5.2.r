high.corr <- function(x){
  l <- length(x)
  res <- matrix(nrow = l, ncol = l)
  for(i in 1:(l-1)){
    for(j in (i+1):l){
      k <- cor.test(x[[i]], x[[j]])$estimate
      res[i, j] = abs(k[["cor"]])
    }
  }
  res[is.na(res)] <- 0
  res_row <- which.max(res) %% l
  res_col <- which.max(res[res_row,])
  return(c(names(x[res_row]), names(x[res_col])))
}