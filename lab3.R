patientID <- c(1:4)
age <- c(25,34,28,52)
diabetes <- c("Type1","Type2","Type1","Type1")
status <- c("Poor","Improved","Excellent","Poor")
patientdata <- data.frame(patientID,age,diabetes,status)

patientdata['status'] #specific column
patientdata $'age' #returns all value of age
patientdata[c('status','age')]
patientdata[c(1,3)] #multiple column
patientdata[c(1,3),c(2,3)] #specific row column

#factors, continus to catagorized 

studentscgpa<- factor(c("A","A+","B","C","B","C"))
studentscgpa

studentscgpa[4] = 'B' #changing one index value , MUST BE IN THE FACTOR
studentscgpa[-1] #if i don't want to see one value or range



#adding column and data on dataframe

bloodgrp<-c("A+","B+","O+","A-")
patientdata <-cbind(patientdata,bloodgrp)


bill<-c(10:13)
patientdata <-cbind(patientdata,payement=bill) #giving name of bill as payement
patientdata


#list 
g<- "My First Late"
h<- c(25,26,18,39)
j<- matrix(1:10,nrow = 5)
k<- c("one","two","three")
mylist<- list(title=g,ages=h,j,k)
mylist

mylist[3]

#adding something to the list

item<- list("mango",'banana')
item<- append(item,'orange')
item<-append(item,"jackfruit",after = 1)

