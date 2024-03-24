multiplos3 <- function(n){
  resultado <- c()
  while(n >= 0){
    if (n %% 3 == 0){
      resultado <- append(resultado, n)
    }
    n <- n - 1
  }
  return(resultado)
}
multiplos3(10)

