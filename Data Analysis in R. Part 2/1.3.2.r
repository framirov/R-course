nav <- function(x) {
  m <- mean(x, na.rm = T)
  x <- ifelse(is.na(x), m, x)
}

na_rm <- function(dat){
  as.data.frame(apply(dat, 2, nav))
}      