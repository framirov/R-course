x <- my_vector
s <- sd(x)
m <- mean(x)
my_vector_2 <- x[(x > m - s) & (x < m + s)]