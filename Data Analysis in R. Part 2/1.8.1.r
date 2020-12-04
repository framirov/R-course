get.category.ratings <- function(purchases, product.category) {
  setkey(purchases, product_id)
  setkey(product.category, product_id)
  dt <- merge(purchases, product.category, by = "product_id")
  dt[, .(category_id, 
         totalcents = sum(totalcents),
         quantity = sum(quantity)), by = category_id]
}