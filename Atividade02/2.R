# EXC02 A, B, C
Y <- matrix(data = seq(1, 100), nrow = 10, ncol = 10, byrow = T)
sum(Y[, seq(from = 2, to = 10, by = 2)])
sum(Y[seq(from = 2, to = 10, by = 2), ])
sum(Y[seq(from = 2, to = 10, by = 2), seq(from = 2, to = 10, by = 2)])