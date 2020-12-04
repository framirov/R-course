beta.coef <- function(x){
  x <- scale (x,center= TRUE, scale=TRUE)
  x <- as.data.frame(x)
  return(lm(x[,1] ~ x[,2], x)$coefficients)
}