outliers.rm <- function(x){
  q1 <- quantile(x, probs = 0.25)
  q2 <- quantile(x, probs = 0.75)
  iq <- IQR(x)
  x <- x[(x >= q1 - 1.5 * iq) & (x <= q2 + 1.5 * iq)]
  return(x)
}