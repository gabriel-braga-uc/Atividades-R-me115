#Atividade 04#

#1
my.matrix <- matrix(data = c(6, 34, 923, 5, 0, 112:116, 5, 9, 34, 76, 2, 545:549), nrow = 5)
my.matrix

#a
apply(my.matrix, 1, mean)

#b
apply(my.matrix, 2, mean)

#c
apply(my.matrix, 2, sort)


#2
mtcars

#a
l <- lapply(mtcars, min)
s <- sapply(mtcars, min)
m <- mapply(min, mtcars)

#b
list.objects <- list(l, s, m)

#c
sapply(list.objects, typeof)


#3
#Não entendi o enunciado :(


#4

#a
apply(Titanic, 2, sum)

#b, c
#?


#5

#a
first <- matrix(38:67, 3)
second <- matrix(56:91, 3)
third <- matrix(82:144, 3)
fourth <- matrix(46:93, 6)
listobj <- list(first, second, third, fourth)

#b
lapply(listobj, "[", ,2)

#c
lapply(listobj, "[", 3,)


#6
iris

#a
sapply(iris, typeof)
#Pelo resultado vemos que a sobre espécies é a não numérica.

#b
levels(iris$Species)

#c
mapply(unique, iris)


#7
PlantGrowth
tapply(PlantGrowth$weight, PlantGrowth$group, sd)

#Desafio