positive_sum <-  function(x){
  lapply(x, function(x) sum(x[x>0], na.rm = T))
}