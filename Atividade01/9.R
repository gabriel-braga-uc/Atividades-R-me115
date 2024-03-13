todos <- seq(1:100) # Por que cria-se uma lista de 1 a 101 se eu usar seq(0:100)?
impares_positivos <- todos[todos%%2 != 0]
print(impares_positivos)