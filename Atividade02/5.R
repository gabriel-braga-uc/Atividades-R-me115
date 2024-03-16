#EXC05 abc
library(dslabs)
data(murders)
murder_rate <- murders$total/murders$population*100000
murders$state[which(murder_rate <= 2)]
murders$state[which(murder_rate >= 0.5 & murder_rate <= 2)]
murders$state[which(murder_rate <= 0.25)]

