#Atividade Fatores#


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
Titanic
