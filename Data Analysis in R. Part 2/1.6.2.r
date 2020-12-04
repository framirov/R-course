log_transform <- function(df){
  library(dplyr)
  return(df %>%
           mutate_if(is.numeric, funs((. - min(.))/(max(.) - min(.)) + 1)) %>%
           mutate_if(is.numeric, funs(log(.))))
}