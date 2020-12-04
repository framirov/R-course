high_price <- diamonds %>% group_by(color) %>% 
  select(color, price) %>% arrange(desc(price)) %>% slice(1:10)