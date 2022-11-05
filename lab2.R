
a <- c(1,3,2,9,4)
b <- c(2,2,2,2)
#a+2 #increment a's elems by 2 but does not change a permanantly
#b*-1 
#a+b
#printing more than one indices
c(a[1],a[4])
a[c(1,2)]
print(sort(a,TRUE)) #decreasing order sort
#matrix
col<- c('A1','A2','A3','A4')
row<- c('R1','R2','R3','R4','R5')
mttrx <- matrix(1:20,5,4,byrow = TRUE,dimnames=list(row,col))#dimnames name dey row col er
#mttrx2 <- matrix(1:20,5,4,byrow = FALSE,dimnames=list(row,col))#dimnames name dey row col er
x<-cbind(mttrx,c(1,1,1,1,1))
x<-rbind(x,c(2,2,2,2,2))
arr<- array(1:200,c(5,8,3))
