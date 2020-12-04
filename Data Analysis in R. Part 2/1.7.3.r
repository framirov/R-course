purchases.median.order.price <- function(sample.purchases) {
  median(sample.purchases[quantity>=0, by = ordernumber, .(sum(price*quantity))]$V1)
}