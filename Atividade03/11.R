fibonacci <- function(n){
  fibo <- c(0, 1, 1)
  if(n <= 1 && n >= 0){
    return(n)
  }else if(n == 2){
    return(1)
  }
  to_n <- seq(3, n+1)
  for(x in to_n){
    fibo <- append(fibo, fibo[x-1] + fibo[x])
  }
  return(fibo[n+1])
}
i_res <- 10
i_top <- i_res
while(i_res > -1){
  print(paste("Res. fibonacci(",i_res*-1 + i_top,"): ", fibonacci(i_res*-1 + i_top), sep=""))
  i_res <- i_res - 1
}




  
  
  
  
