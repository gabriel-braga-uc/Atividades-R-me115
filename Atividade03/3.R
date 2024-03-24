calcule_sn <- function(n){
  soma <- 0
  while(n != 0){
    soma <- n^2 + soma
    n <- n-1
    }
  return(soma)
}
calcule_sn(222)
  