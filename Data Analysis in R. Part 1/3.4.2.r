normality.test <- function(df){
  new <- vector(length = length(df))
  for(i in 1:length(df)){
    new[i] <- shapiro.test(df[[i]])$p.value
  }
  names(new) <- names(df)
  return(new)
}