library(dslabs)
data(murders)

maiores_que_8 <- nchar(murders$state) > 8
abreviacoes <- murders$abb[which(maiores_que_8)]
murders_abreviado <- murders

murders_abreviado$state[maiores_que_8] <-  abreviacoes

print(abreviados$state)
 
#ifelse(nchar(murders$state) > 8, murders$abb, murders$state) JEITO IDEAL MOSTRADO PELO PROF
