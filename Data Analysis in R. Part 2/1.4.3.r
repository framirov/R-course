find_outliers <- function(t){
  namess <- names(which(sapply(t, is.factor)))
  t %>%
    group_by_(.dots = namess) %>% 
    mutate_all(funs(is_outlier = as.numeric(abs(. - mean(.)) > 2 * sd(.))))
}