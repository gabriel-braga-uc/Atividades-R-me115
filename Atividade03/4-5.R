calcule_sn <- function(n){
  somas <- c()
  for(x in n){
    soma <- 0
    while(x != 0){
      soma <- x^2 + soma
      x <- x-1
    }
    somas <- append(somas, soma)
  }
  return(somas)
}
calcule_sn(1:25)


n <- 32
calcule_sn(n) == n*(n+1)*(2*n+1)/6
n <- 1
calcule_sn(n) == n*(n+1)*(2*n+1)/6
n <- 55
calcule_sn(n) == n*(n+1)*(2*n+1)/6
n <- 321
calcule_sn(n) == n*(n+1)*(2*n+1)/6







