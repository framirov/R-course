str(AirPassengers)
as.vector(AirPassengers)
units <- rep(0,144)
count <- 0
for(i in (2:144)){
  if (AirPassengers[i] > AirPassengers[i-1]){
    units[i] <- 1
    count <- count + 1
  }
}
good_months <- 1:count
j <- 1
for(i in (1:144)){
  if (units[i] == 1){
    good_months[j] <- AirPassengers[i]
    j <- j + 1
  }
}