#Exc 13
c1 <- (seq(1, 4))
c2 <- (seq(5, 8))
c3 <- (seq(9, 12))
c4 <- (seq(101, 104))
c5 <- (seq(105, 108))
A_4x5 <- cbind(c1,c2,c3,c4,c5)
rownames(A_4x5) <- c("a_1x0","a_2x0","a_3x0","a_4x0")
colnames(A_4x5) <- c("a_0x1","a_0x2","a_0x3","a_0x4","a_0x5")
print(A_4x5)

#Exc 14 abcd
a_2x1 <- A_4x5[2, 1]
a_2x2 <- A_4x5[2, 2]
a_2x3 <- A_4x5[2, 3]
print(paste(a_2x1, a_2x2, a_2x3))

terceira_coluna <- A_4x5[,3]
print(terceira_coluna)

quarta_linha<- A_4x5[4,]
print(quarta_linha)

A_4x5[1,1] <- 20
print(A_4x5[1,1])

print(A_4x5)