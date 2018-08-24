# Data objects

#vectors
A <- c(1:3,67,23:9)
B <- c("aaf","f",LETTERS[4:5])

#Matrix
C <- matrix (nrow=5, ncol=3, data=0)
D <- matrix (nrow=5, ncol=3, data="a")

#Data frame
E <- data.frame(column1=c(1:5), column2=c(rep("a",3),"d",5) )

#List
G <- list(column1=c(1:5), column2=c(rep("a",3),"d",5))

## Dimensions of data objects

length(A)
length(B)
length(C)
length(D)
length(E)
length(G)

dim(A)
dim(B)
dim(C)
dim(D)
dim(E)
dim(G)

ncol (A)
ncol (B)
ncol (C)
ncol (D)
ncol (E)
ncol (G)

nrow (A)
nrow (B)
nrow (C)
nrow (D)
nrow (E)
nrow (G)


