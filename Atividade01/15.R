temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan",  "Toronto")
tempF <- temp
tempC <- round(((tempF-32)*(5/9)), digits=2)
city_temps <- data.frame(name = city, temperature_F = tempF, temperature_C = tempC)
print(city_temps)
