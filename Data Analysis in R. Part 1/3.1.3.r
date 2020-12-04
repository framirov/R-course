smart_cor <- function(x){
  library(psych)
  s1 <- shapiro.test(x[[1]])
  s2 <- shapiro.test(x[[2]])
  if ((s1$p.value  < 0.05) | (s2$p.value  < 0.05)){
    return(cor.test(x[[1]], x[[2]], method = "spearman")$estimate)
  }
  else{
    return(cor.test(x[[1]], x[[2]], method = "pearson")$estimate)
  }
}