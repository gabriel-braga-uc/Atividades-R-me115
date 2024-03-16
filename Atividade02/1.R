#EXC01 A, B, C
X <- matrix(data=seq(1, 9), nrow=3, ncol=3, byrow=T)
X
X[c(2, 3),]
diag(X)
sum(X[1,])
sum(X[,3])
sum(diag(X))
