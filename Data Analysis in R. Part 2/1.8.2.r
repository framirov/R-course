mark.position.portion <- function(purchases) {
  purchases <- purchases[quantity > 0]
  purchases[, price.portion := (price * quantity)/sum(price * quantity) * 100, by = ordernumber]
  purchases$price.portion <- format(round(purchases$price.portion, 2), nsmall = 2)
  return(purchases)
}