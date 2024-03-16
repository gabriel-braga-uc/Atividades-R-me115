#EXC8

i <- 1
j <- 1
sum <- 0
sum_temp <- 0
for(i in seq(1:10)){
  for(j in seq(1:10)){
    sum_temp <- i*j
    sum <- sum+sum_temp
  }
}
m <- sum/100
print(paste("m = ", m))

