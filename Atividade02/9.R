#EXC9

ind <- 1
while (ind < 100){
  print(ind)
  ind <- ind + 1
}



s <- -108:88
s1 <- s[1]
sum <- 0
while(s1 < 0){
  print(sum)
  sum <- sum + s1
  s1 <- s1 + 1
}
print(sum)



sum2 <- 0
i <- 0
while(s[length(s)+i] > 0){
  print(s[length(s)+i])
  sum2 <- s[length(s)+i] + sum2
  i <- i - 1
}
print(sum2)

