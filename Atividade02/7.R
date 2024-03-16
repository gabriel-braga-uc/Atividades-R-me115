#EXC07 abcd
library(dslabs)
data(murders)
for(i in 1:5){
  print(i)
}


murder_rate <- murders$total/murders$population*100000
soma <- 0
murder_rate
for(x in murder_rate){
  soma <- soma + x
}

soma
media = soma/length(murder_rate)
media

str(murders)
is_S <- murders$region == "South"
murder_rate_S <- murders$total[which(is_S)]/murders$population[which(is_S)]*100000
sum3 <- 0
murder_rate_S
for(x in murder_rate_S){
}
avg_S <- sum3/length(murders$state[which(is_S)])

not_S_NC <- murders$region != "South" & murders$region != "North Central"
soma2 <- 0
murder_rate2 <- murders$total[which(not_S_NC)]/murders$population[which(not_S_NC)]*100000
for(x in murder_rate2){
  soma2 <- soma2+x;
}
avg_not_S_NC <- soma2/length(murders$state[which(not_S_NC)])
avg_not_S_NC

{
print(paste("Media Estados:",media))
print(paste("Media Estados do SUL:",avg_S))
print(paste("Media Estados excluindo SUL e CENTRO NORTE:",avg_not_S_NC))
}
