resid.norm  <- function(fit){
  st <- shapiro.test(fit$resid)
  color <- ifelse(st$p.value < 0.05, "red","green")
  
  myplot <- ggplot(fit, aes(x = fit$resid))+
    geom_histogram(bins=30, fill=color)
  return(myplot)
}