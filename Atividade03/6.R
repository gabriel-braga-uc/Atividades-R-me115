soma_dados <- function(n){
  final = c()
  for(x in n){
    final <- append(final, sum(sample(6, x, replace=TRUE)))
  }
  return(final)
}
lancamentos = 10
soma_dados(lancamentos)

