filter.expensive.available <- function(products, brands) {
  products[price >= 500000][brand %in% brands][available == T]
}