corr.calc <- function(x){
  co <- cor.test(x[[1]], x[[2]])
  return(c(co$estimate, co$p.value))
}