mixbag1 <- c(1,T,2,F)
class(mixbag1)

mixbag2 <- c(1,"a","b",2)
class(mixbag2)

mixbag3 <- c(1,"a",T)
class(mixbag3)



class(mixbag1[1])
class(mixbag1[2])

class(mixbag3[2])

mixbag4 <- c(4i+2, 3)
class(mixbag4)

mixbag5 <- c(T, 2+3i)
class(mixbag5)

mixbag6 <- c("T", 2+3i)
class(mixbag6)

###list

l1 <- list(1,"a",TRUE)
class(l1)

class(l1[[1]])
class(l1[[2]])
class(l1[[3]])

l2 <- list(c(1,2,3),c("a","b","c"),c(T,F,T))
l2[[2]][2] #listname[[vector number]] then [element number]
l2[[1]][2]


l3 <- list(c(1,"2",3), c(5,"b",T), c(3,F,1+2i))
class(l3)
class(l3[[1]][1])

version


m1 <- matrix(c(1,2,3,4,5,6))
m1

m2 <- matrix(c(1,2,3,4,5,6),nrow=2,ncol=3)
m2

m3 <- matrix(c(1,2,3,4,5,6),nrow=2,ncol=3, byrow = T)
m3
