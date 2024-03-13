# EXC 16
{
library(dslabs)
murders
print(paste("A classe de murders é: '", as.character(class(murders)),"'.", sep = ""))
}
# EXC 17
{
#str(murders)
#print(murders)
murder_rate <- (murders$total/murders$population)*100000
#print(murder_rate)
low <- murder_rate < 1
#print(low)
#print(murders$state)
print("Os estados com menos do que 1 homícidio por arma de fogo por 100.000 habitantes são:")
print(murders$state[low])
# EXC 18-19
}
{
print("Seguem os estados com menos do que 1 homicídio por arma de fogo por 100.000 habitantes e suas posições respectivas:")
print(paste(murders$state[low],": ", which(low), sep = ""))
}
# EXC 20
{
northeast <- murders$region == "Northeast"
states_northeast_low <-((low == TRUE) & (northeast==TRUE))
murders$state[states_northeast_low]
}
# EXC 21
{
avg_rate <- (sum(murder_rate)/length(murder_rate))
avg_rate
}
# EXC 22
{
states_below_avg <- murders$state[(murder_rate < avg_rate)]
states_below_avg
}
# EXC 23
{
million_people <- murders$population/1000000
people_log10 <- log10(murders$population)
plot(million_people, murders$total)
plot(people_log10, murders$total)
}
# EXC 24
{
murder_rates_per100k <- with(murders, total/population*10^5)
hist(murder_rates_per100k)
}
# EXC 25
{
murders$rate_per100k <- with(murders, total/population*10^5)
boxplot(murders$rate_per100k~region, data = murders)
}

