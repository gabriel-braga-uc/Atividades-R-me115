soma_n <- function(n){
  i <- n
  while(i != 0){
    i <- i - 1
    n <- n + i
  }
  return(n)
}
soma_n(120)
sum(1:120)
