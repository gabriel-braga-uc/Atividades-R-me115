#EXC06 abc

a <- c(0, 1, 2, -4, 5)
ifelse(a > 0, 1/a, NA)

A <- c(-10:120)
A
B <- ifelse(A >= 0, sqrt(A), NA)
B
C <- ifelse((A %% 2) == 0, 1, 0)
C
D <- ifelse((A %% 3) == 0, 1, 0)
D
  