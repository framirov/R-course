?AirPassengers 
str(AirPassengers)
as.vector(AirPassengers)
moving_average <- 1:135
for(i in 1:135){
  moving_average[i] <- mean(AirPassengers[i:(i+9)])
}