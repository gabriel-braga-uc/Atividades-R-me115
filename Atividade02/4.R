#EXC04 abcd
x <- c (1, 2, -3, 4)
if (all (x != 0)) {
    print("Todos são positivos")
  } else {
    print("Nem todos são positivos")
  }

if (all ((x %% 2) == 0)) {
  print("Todos são pares")
} else {
  print("Nem todos são pares")
}

if (any (x >= 0)) {
  print("Algum negativo")
} else {
  print("Nenhum negativo")
}

y <- c(2, 4, 8, 16, 32)
if (all ((x %% 2) == 0)) {
  print("Todos são pares")
} else {
  print("Nem todos são pares")
}