stats <- function(v){
  media <- (sum(v))/length(v)
  var <- (sum((v-media)**2))/(length(v)-1)
  dp <- sqrt(var)
  
  values <- c(media, var, dp)
  return(values)
}
test <- c(1,3,5,7,8,10)

stats(test)
c(mean(test), var(test), sd(test))
